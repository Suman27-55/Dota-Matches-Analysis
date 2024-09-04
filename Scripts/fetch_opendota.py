import requests
import json
import configparser

# Load configuration settings from the config file
config = configparser.ConfigParser()
config.read('./config/config.ini')  # Read configuration file to get API URLs

# Retrieve URLs for API endpoints from the config file
heroStats_url = config['OpenDota']['herostats_url']  # URL for hero statistics
matches_url = config['OpenDota']['matches_url']      # URL for fetching match data

def fetch_matches(unix_time: int):
    """
    Fetch match data from the OpenDota API based on the provided Unix timestamp.

    Args:
    - unix_time: Unix timestamp to filter matches that started after this time.

    Returns:
    - A list of match records retrieved from the OpenDota API.
    """
    # Create the API URL by replacing the placeholder 'input_start_time' with the actual Unix timestamp
    api_url = matches_url.replace("input_start_time", str(unix_time))
    
    # Send a GET request to the constructed API URL
    request = requests.get(url=api_url)
    
    # Decode the JSON response content from the request
    data = json.loads(request.content.decode())
    
    # Extract the list of matches from the response data
    matches = data['rows']
    
    return matches
