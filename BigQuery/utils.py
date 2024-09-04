from google.cloud import bigquery
import pandas as pd

# Initialize the BigQuery client with the specified project ID
client = bigquery.Client(project="Project_ID")  # Replace 'Project_ID' with your actual GCP project ID

def upload_to_table(schema: list[bigquery.SchemaField], table_id: str, data: pd.DataFrame):
    """
    Upload data from a DataFrame to a BigQuery table.

    Args:
    - schema: List of SchemaField objects defining the schema of the BigQuery table.
    - table_id: ID of the BigQuery table to which data will be uploaded (format: 'project.dataset.table').
    - data: DataFrame containing the data to be uploaded.

    Returns:
    - State of the load job (e.g., 'DONE' if the job is complete).
    """
    # Configure the load job
    job_config = bigquery.LoadJobConfig(
        schema=schema,                    # Schema of the table
        write_disposition="WRITE_APPEND"  # Append data to the existing table
    )
    
    # Load data from the DataFrame to the BigQuery table
    job = client.load_table_from_dataframe(
        dataframe=data,       # DataFrame to be uploaded
        destination=table_id, # Destination table in BigQuery
        job_config=job_config  # Configuration for the load job
    )
    
    # Return the state of the load job
    return job.state

def run_query(query: str):
    """
    Execute a SQL query on BigQuery and return the result.

    Args:
    - query: SQL query string to be executed.

    Returns:
    - Query result as an iterable of rows.
    """
    # Run the SQL query on BigQuery
    query_job = client.query(query=query)
    
    # Wait for the query to complete and fetch the result
    rows = query_job.result()
    
    # Return the result rows
    return rows
