# Connect to the postgres database with vanilla psycopg2 and python

import psycopg2

# Connect to the database
conn = psycopg2.connect(
    database="postgres", user="postgres", password="admin123",
    host="172.25.0.3", port="5432"
)
print("Opened database successfully")

# Create a cursor to perform database operations
cur = conn.cursor()

# Execute a command: this creates a new table
cur.execute('''SELECT * FROM "public"."table_interviewee"''')
