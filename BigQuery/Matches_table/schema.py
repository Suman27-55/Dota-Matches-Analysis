from google.cloud import bigquery

schema = [
    bigquery.SchemaField(name="match_id",field_type="INT64"),
    bigquery.SchemaField(name="match_seq_num",field_type="INT64"),
    bigquery.SchemaField(name="radiant_win",field_type="BOOL"),
    bigquery.SchemaField(name="start_time",field_type="TIMESTAMP"),
    bigquery.SchemaField(name="duration",field_type="INT64"),
    bigquery.SchemaField(name="tower_status_radiant",field_type="INT64"),
    bigquery.SchemaField(name="tower_status_dire",field_type="INT64"),
    bigquery.SchemaField(name="barracks_status_radiant",field_type="INT64"),
    bigquery.SchemaField(name="barracks_status_dire",field_type="INT64"),
    bigquery.SchemaField(name="cluster",field_type="INT64"),
    bigquery.SchemaField(name="first_blood_time",field_type="INT64"),
    bigquery.SchemaField(name="lobby_type",field_type="INT64"),
    bigquery.SchemaField(name="human_players",field_type="INT64"),
    bigquery.SchemaField(name="leagueid",field_type="INT64"),
    bigquery.SchemaField(name="positive_votes",field_type="INT64"),
    bigquery.SchemaField(name="negative_votes",field_type="INT64"),
    bigquery.SchemaField(name="game_mode",field_type="INT64"),
    bigquery.SchemaField(name="engine",field_type="INT64"),
    bigquery.SchemaField(name="picks_bans",field_type="RECORD",mode="REPEATED",fields=[
        bigquery.SchemaField(name="is_pick",field_type="BOOL"),
        bigquery.SchemaField(name="hero_id",field_type="INT64"),
        bigquery.SchemaField(name="team",field_type="INT64"),
        bigquery.SchemaField(name="order",field_type="INT64")
    ]),
    bigquery.SchemaField(name="radiant_team_id",field_type="INT64"),
    bigquery.SchemaField(name="dire_team_id",field_type="INT64"),
    bigquery.SchemaField(name="radiant_team_name",field_type="STRING"),
    bigquery.SchemaField(name="dire_team_name",field_type="STRING"),
    bigquery.SchemaField(name="radiant_team_complete",field_type="INT64"),
    bigquery.SchemaField(name="dire_team_complete",field_type="INT64"),
    bigquery.SchemaField(name="radiant_captain",field_type="INT64"),
    bigquery.SchemaField(name="dire_captain",field_type="INT64"),
    bigquery.SchemaField(name="chat",field_type="RECORD",mode="REPEATED",fields=[
        bigquery.SchemaField(name="time",field_type="INT64"),
        bigquery.SchemaField(name="type",field_type="STRING"),
        bigquery.SchemaField(name="key",field_type="STRING"),
        bigquery.SchemaField(name="slot",field_type="INT64"),
        bigquery.SchemaField(name="player_slot",field_type="INT64"),
    ]),
    bigquery.SchemaField(name="radiant_score",field_type="INT64"),
    bigquery.SchemaField(name="dire_score",field_type="INT64"),
    bigquery.SchemaField(name = "heroes",field_type="STRING",mode="REPEATED"),
    bigquery.SchemaField(name = "names",field_type="STRING",mode="REPEATED"),
    bigquery.SchemaField(name = "kill_count", field_type="RECORD",mode="REPEATED", fields=[
        bigquery.SchemaField(name="hero", field_type="STRING"),
        bigquery.SchemaField(name="count", field_type="INT64")
    ]),
    bigquery.SchemaField(name='radiant_team',field_type="STRING",mode='REPEATED'),
    bigquery.SchemaField(name='dire_team',field_type="STRING",mode='REPEATED')
]