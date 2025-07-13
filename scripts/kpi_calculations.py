# KPI calculation script for PPC KPI Dashboard
# Add functions to compute KPIs from data 

import pandas as pd

df = pd.read_excel("../data/ppc_campaign_performance_data.xlsx")
df['CTR'] = df['Clicks'] / df['Impressions']
df['Conversion_Rate'] = df['Conversions'] / df['Clicks']
df['CPC'] = df['Spend'] / df['Clicks']
df['ROI'] = (df['Revenue'] - df['Spend']) / df['Spend']
df['CPA'] =  df['Spend'] / df['Conversions']
df['CPM'] =  df['Spend'] / df['Impressions'] * 1000

df.to_excel("../data/ppc_campaign_with_kpis.xlsx", index=False)