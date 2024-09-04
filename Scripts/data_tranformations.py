import pandas as pd
from Mongo.utils import fetch_documents

def picked_heroes(df: pd.DataFrame, pipeline: list) -> pd.DataFrame:
    """
    Process the DataFrame to include hero names and team information based on picks/bans data.

    Args:
    - df: DataFrame containing match data.
    - pipeline: MongoDB aggregation pipeline to fetch hero details.

    Returns:
    - Updated DataFrame with additional columns for heroes and which team the heroes belong to.
    """
    # Fetch hero documents from MongoDB
    hero_docs = fetch_documents(collection="Collection", query=pipeline)  # TODO: Replace 'Collection' with actual MongoDB collection name
    hero_df = pd.DataFrame(data=hero_docs)

    # Create dictionaries to map hero IDs to hero names and hero names
    hero_dict = dict(zip(hero_df.id, hero_df.hero_name))
    name_dict = dict(zip(hero_df.id, hero_df.name))

    # Initialize lists to store processed data
    heroes = []
    names = []
    radiant_team = []
    dire_team = []

    # Temporary lists for processing
    temp_list = []
    temp_list2 = []
    rad_team = []
    dir_team = []

    # Process each row in the 'picks_bans' column
    for row in df['picks_bans']:
        if row is None:
            # If no picks/bans data, append empty lists
            heroes.append([])
            names.append([])
            radiant_team.append([])
            dire_team.append([])
        else:
            # Process each pick/ban
            for index in row:
                if index['is_pick']:
                    # Append hero names and replace prefix 'npc_dota_hero_' with empty string
                    temp_list.append(hero_dict[int(index['hero_id'])])
                    name = name_dict[int(index['hero_id'])]
                    name = name.replace("npc_dota_hero_", "")
                    temp_list2.append(name)
                    
                    # Add hero to respective team list
                    if index['team'] == 0:
                        rad_team.append(name.lower())
                    else:
                        dir_team.append(name.lower())
            
            # Append processed lists to main lists
            heroes.append(temp_list)
            names.append(temp_list2)
            radiant_team.append(rad_team)
            dire_team.append(dir_team)
            
            # Reset temporary lists for next row
            temp_list = []
            temp_list2 = []
            rad_team = []
            dir_team = []
    
    # Add new columns to DataFrame
    df['heroes'] = heroes
    df['names'] = names
    df['radiant_team'] = radiant_team
    df['dire_team'] = dire_team
    
    return df

def kill_count_calc(df: pd.DataFrame) -> pd.DataFrame:
    """
    Calculate kill counts and identify heroes with specific abilities in teamfights.

    Args:
    - df: DataFrame containing match data.

    Returns:
    - Updated DataFrame with a new 'kill_count' column and the 'teamfights' column removed.
    """
    kill_count_col = []

    # Process each row in the DataFrame
    for index, row in df.iterrows():
        # Initialize kill counts for each player
        kill_count = [{"count": 0}] * 10
        
        if row['teamfights'] is not None:
            temp_list3 = []
            heroes_list = [s.replace(" ", "_").lower() for s in row['names']]
            
            # Calculate kills from teamfights
            for index2, teamfight in enumerate(row['teamfights']):
                if teamfight['deaths'] > 0:
                    for index3, player in enumerate(teamfight['players']):
                        if player['killed']:
                            kill_count[index3]['count'] += len(player['killed'])
                        
                        # Check for abilities used by heroes in the last teamfight
                        if index2 == len(row['teamfights']) - 1:
                            player_ability_list = list(player["ability_uses"].keys())
                            copy_ability_flag = False
                            
                            for ability in player_ability_list:
                                if "rubick" in ability:
                                    temp_list3.append({"hero": "rubick"})
                                    copy_ability_flag = True
                                    break
                                if "morphling" in ability:
                                    temp_list3.append({"hero": "morphling"})
                                    copy_ability_flag = True
                                    break
                            
                            # If specific abilities found, exit loop
                            if copy_ability_flag:
                                copy_ability_flag = False
                                break
                            
                            # Check for hero abilities used in teamfights
                            for hero in heroes_list:
                                counter = sum(element[index4:index4+len(hero)] == hero for element in player_ability_list for index4, char in enumerate(element))
                                if counter >= 2:
                                    if {"hero": hero} not in temp_list3:
                                        temp_list3.append({"hero": hero})

            # Format kill count results
            temp_list4 = []
            if len(temp_list3) < 10:
                kill_count_col.append(None)
            else:
                for hero in enumerate(temp_list3):
                    key = list(kill_count[hero[0]].keys())
                    value = kill_count[hero[0]]['count']
                    temp_list4.append({"hero": hero[1]['hero'], "count": kill_count[hero[0]]['count']})
                kill_count_col.append(temp_list4)
        else:
            kill_count_col.append(None)

    # Check for empty dictionaries in the kill count column
    if {} in kill_count_col:
        print("empty dict present")
    
    # Add kill count column to DataFrame and remove 'teamfights' column
    df['kill_count'] = kill_count_col
    df.drop('teamfights', axis=1, inplace=True)

    return df
