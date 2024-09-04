import configparser

def create_config():
    config = configparser.ConfigParser()
    config['MongoDB'] = {"uri" : "MongoURI","db" : "DB name"}
    config['OpenDota'] = {"herostats_url" : "https://api.opendota.com/api/heroStats", "matches_url" : "https://api.opendota.com/api/explorer?sql=SELECT * FROM matches  ORDER BY start_time DESC LIMIT 1000"}
    config['BigQuery'] = {"matches_table" : "Table"}
    with open("config.ini","w") as configfile:
        config.write(configfile)

if __name__ == "__main__":
    create_config()