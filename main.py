import pandas as pd
import datetime
import time
import configparser
from Scripts.fetch_opendota import fetch_matches
from Mongo.utils import insert_many, fetch_documents
from BigQuery.utils import run_query, upload_to_table
from BigQuery.Matches_table.schema import schema
from Scripts.data_tranformations import picked_heroes, kill_count_calc

# Read configuration file
config = configparser.ConfigParser()
config.read('./config/config.ini')  # Fixed path to config file

matches_collection = ""  # TODO: Specify MongoDB collection name

# BigQuery table ID and SQL query to fetch the latest match start time
table_id = config['BigQuery']['matches_table']
query = "SELECT * FROM `table` ORDER BY start_time DESC LIMIT 1"  # TODO: Replace `table` with actual table name

# MongoDB aggregation pipeline to transform hero data
heroes_pipeline = [
    {
        "$project": {
            "_id": 0,
            "id": 1,
            "hero_name": "$localized_name",
            "name": 1
        }
    }
]

def mongo_matches(start_time):
    """
    Create MongoDB aggregation pipeline to fetch matches starting after a specified time.
    """
    matches_pipeline = [
        {"$match": {
            "start_time": {"$gt": start_time}
        }},
        {"$project": {
            "_id": 0,
            "match_id": 1,
            "match_seq_num": 1,
            "radiant_win": 1,
            "start_time": 1,
            "duration": 1,
            "tower_status_radiant": 1,
            "tower_status_dire": 1,
            "barracks_status_radiant": 1,
            "barracks_status_dire": 1,
            "cluster": 1,
            "first_blood_time": 1,
            "lobby_type": 1,
            "human_players": 1,
            "leagueid": 1,
            "positive_votes": 1,
            "negative_votes": 1,
            "game_mode": 1,
            "engine": 1,
            "picks_bans": 1,
            "radiant_team_id": 1,
            "dire_team_id": 1,
            "radiant_team_complete": 1,
            "dire_team_complete": 1,
            "radiant_captain": 1,
            "dire_captain": 1,
            "chat": 1,
            "radiant_score": 1,
            "dire_score": 1,
            "teamfights": 1
        }}
    ]
    return matches_pipeline

def main():
    """
    Main function to handle the data pipeline from fetching matches to uploading results to BigQuery.
    """
    # Fetch the latest match record from BigQuery to get the most recent start time
    docs = run_query(query=query)
    # Extract the latest start time
    for row in docs:
        max_start_time = row.start_time

    unix_time = int(time.mktime(max_start_time.timetuple()))
    
    # Fetch matches data from OpenDota API
    matches = fetch_matches(unix_time=unix_time)
    
    for match in matches:
        unix_start_time = match['start_time']
        match['start_time'] = datetime.datetime.strptime(str(datetime.datetime.fromtimestamp(unix_start_time)), '%Y-%m-%d %H:%M:%S')

    # Upload fetched matches data to MongoDB
    db_upload = insert_many(collection=matches_collection, data=matches)
    print("MongoDB upload status:", db_upload)

    # Fetch new match documents from MongoDB after the latest start time
    docs = fetch_documents(collection=matches_collection, query=mongo_matches(max_start_time))
    
    df = pd.DataFrame(data=docs)
    
    # Transform hero data using the pipeline
    updated_df = picked_heroes(df=df, pipeline=heroes_pipeline)
    
    # Calculate kill counts
    final_df = kill_count_calc(df=updated_df)
    
    # Ensure columns 'radiant_team_name' and 'dire_team_name' are present in the DataFrame
    if "radiant_team_name" not in final_df.columns:
        final_df['radiant_team_name'] = None
    if "dire_team_name" not in final_df.columns:
        final_df['dire_team_name'] = None
    
    # Upload the final DataFrame to BigQuery
    result = upload_to_table(schema=schema, table_id=table_id, data=final_df)
    print("BigQuery upload result:", result)

if __name__ == "__main__":
    main()
