import pandas as pd

# Load the CSV file
data= pd.read_csv('budget_data.csv')

# Assuming the date column is named "Date"
# Convert the "Date" column to datetime objects
data['Date'] = pd.to_datetime(data['Date'])

# Calculate the total number of unique months
total_months = len(data['Date'].dt.to_period('M').unique())

print("Total number of months:", total_months)
