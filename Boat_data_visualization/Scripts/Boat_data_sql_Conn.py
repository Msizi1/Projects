import mysql.connector
import pandas as pd

# Connect to MySQL
conn = mysql.connector.connect(
    host="your_host",
    user="your_username",
    password="your_password",
    database="dyour_database"
)
cursor = conn.cursor()

# Query the table
query = "SELECT * FROM boat_sales2"
cursor.execute(query)

# Fetch data and get column names
columns = [i[0] for i in cursor.description]
data = cursor.fetchall()

# Convert to DataFrame
df = pd.DataFrame(data, columns=columns)

# Save to Excel
df.to_excel("boat_sales_cleaned.xlsx", index=False, engine="openpyxl")

# Close connection
cursor.close()
conn.close()

print("Data exported successfully!")
