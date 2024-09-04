import pymongo
import configparser
from pymongo import MongoClient

# Load configuration settings from the config file
config = configparser.ConfigParser()
config.read('./config/config.ini')  # Read configuration file to get MongoDB connection details

# Retrieve MongoDB connection URI and database name from the config file
mongo_uri = config['MongoDB']['uri']
database = config['MongoDB']['db']

# Create a MongoClient instance using the connection URI
client = MongoClient(mongo_uri)

def insert_many(collection: str, data: list):
    """
    Insert multiple documents into a specified MongoDB collection.

    Args:
    - collection: Name of the MongoDB collection to insert documents into.
    - data: List of documents to be inserted.

    Returns:
    - Boolean indicating whether the insertion was acknowledged.
    """
    try:
        mongo_db = client[database]        # Access the specified database
        mongo_collection = mongo_db[collection]  # Access the specified collection

        # Insert multiple documents into the collection
        result = mongo_collection.insert_many(data)

        # Return whether the insertion was acknowledged
        return result.acknowledged
    except Exception as e:
        # Raise an exception if there is an error during insertion
        raise Exception("Error in inserting many documents:", e)

def fetch_document(collection: str, query: dict):
    """
    Fetch a single document from a specified MongoDB collection.

    Args:
    - collection: Name of the MongoDB collection to fetch the document from.
    - query: Query filter to match the document to be fetched.

    Returns:
    - The fetched document if found, otherwise None.
    """
    try:
        mongo_db = client[database]        # Access the specified database
        mongo_collection = mongo_db[collection]  # Access the specified collection

        # Find a single document matching the query
        result = mongo_collection.find_one(query)
        return result
    except Exception as e:
        # Raise an exception if there is an error during fetching
        raise Exception("Error in fetching document:", e)

def count_documents(collection: str):
    """
    Count the number of documents in a specified MongoDB collection.

    Args:
    - collection: Name of the MongoDB collection to count documents in.

    Returns:
    - The number of documents in the collection.
    """
    try:
        mongo_db = client[database]        # Access the specified database
        mongo_collection = mongo_db[collection]  # Access the specified collection

        # Count the number of documents in the collection
        result = mongo_collection.count_documents({})
        return result
    except Exception as e:
        # Raise an exception if there is an error during counting
        raise Exception("Error in counting documents", e)

def replace_document(collection: str, query: dict, new_doc: dict):
    """
    Replace a document in a specified MongoDB collection.

    Args:
    - collection: Name of the MongoDB collection to replace the document in.
    - query: Query filter to match the document to be replaced.
    - new_doc: New document to replace the old document.

    Returns:
    - The result of the replace operation.
    """
    try:
        mongo_db = client[database]        # Access the specified database
        mongo_collection = mongo_db[collection]  # Access the specified collection
        
        # Replace a document matching the query with the new document
        result = mongo_collection.replace_one(query, new_doc)
        return result
    except Exception as e:
        # Raise an exception if there is an error during replacement
        raise Exception("Error in replacing documents", e)

def fetch_documents(collection: str, query: dict):
    """
    Fetch multiple documents from a specified MongoDB collection using an aggregation pipeline.

    Args:
    - collection: Name of the MongoDB collection to fetch documents from.
    - query: Aggregation pipeline to process the documents.

    Returns:
    - An iterable of documents returned by the aggregation query.
    """
    try:
        mongo_db = client[database]        # Access the specified database
        mongo_collection = mongo_db[collection]  # Access the specified collection

        # Execute the aggregation pipeline to fetch documents
        result = mongo_collection.aggregate(query)
        return result
    except Exception as e:
        # Raise an exception if there is an error during fetching
        raise Exception("Error in fetching documents:", e)
