#!/usr/bin/env python
import matplotlib.pyplot as plt
import psycopg2

from src.charts import charts
from src.database import database

# Connect to the database
conn = psycopg2.connect(
    dbname="postgres",
    user="postgres",
    password="admin123",
    host="localhost",
    port="5432"
)

cur = conn.cursor()
cur.execute(database.GET_INTERVIEWEE_WORK_COUNTRY_AND_NEW_WORK_COUNTRY)

charts.method_generate_graph(cur.fetchall())
plt.show()
