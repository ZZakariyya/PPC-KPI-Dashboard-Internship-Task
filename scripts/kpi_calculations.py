import numpy as np
import pandas as pd
import openpyxl
df = pd.read_excel(r'C:\Users\user\OneDrive\Desktop\PPC-KPI-Dashboard-Internship-Task\data\ppc_campaign_performance_data.xlsx')
print(df)

print(df.info())
print(df.describe())
print(df.isna().sum())
print(df.columns)
'''
CTR (Click-Through Rate)
Indicates how well your ads are generating clicks from impressions.
'''
df['CTR'] = df['Clicks'] / df['Impressions']

'''
CPC (Cost Per Click)
Shows how much you're paying for each click.
'''
df['CPC'] = df['Spend'] / df['Clicks']

'''
CPA (Cost Per Acquisition)
Measures the cost to generate one conversion (customer).
'''
df['CPA'] = df['Spend'] / df['Conversions']

'''
Conversion Rate
Shows the efficiency of clicks turning into conversions.
'''
df['Conversion_Rate'] = df['Conversions'] / df['Clicks']
'''
ROAS (Return on Ad Spend)
Measures how much revenue you made for every dollar spent.
'''
df['ROAS'] = df['Revenue'] / df['Spend']
print(df.head())


df.to_excel(r'C:\Users\user\OneDrive\Desktop\campaign_analysis.xlsx', index=False, engine='openpyxl')

