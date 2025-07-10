# KPI calculation script for PPC KPI Dashboard
# Add functions to compute KPIs from data 

import pandas as pd

# load the dataset
file_path = "data/ppc_campaign_performance_data.xlsx"
df = pd.read_excel(file_path)
# print(df.head())

# calculated PPC KPIs for each of them
df['CTR'] = df['Clicks'] / df['Impressions'] # CTR (Click-Through Rate)
df['CVR'] = df['Conversions'] / df['Clicks'] # CVR (Conversion Rate)
df['CPC'] = df['Spend'] / df['Clicks'] # CPC (Cost Per Click)
df['CPA'] = df['Spend'] / df['Conversions'] # CPA (Cost Per Acquisition)
df['ROAS'] = df['Revenue'] / df['Spend'] # ROAS (Return on Ad Spend)

# rounded KPI values for better readability
df[['CTR', 'CVR', 'CPC', 'CPA', 'ROAS']] = df[['CTR', 'CVR', 'CPC', 'CPA', 'ROAS']].round(3)

# overwrite the original Excel file with the new columns
df.to_excel(file_path, index=False)

# see the updated data
print(df.head())
