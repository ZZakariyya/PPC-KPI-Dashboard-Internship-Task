import pandas as pd
import numpy as np

df = pd.read_excel("data/ppc_campaign_performance_data.xlsx")

df['Date'] = pd.to_datetime(df['Date'], errors='coerce')

df["CTR"] = np.where(df["Impressions"] != 0, df["Clicks"] / df["Impressions"], pd.NA)
df["CPC"] = np.where(df["Clicks"] != 0, df["Spend"] / df["Clicks"], pd.NA)
df["CPA"] = np.where(df["Conversions"] != 0, df["Spend"] / df["Conversions"], pd.NA)
df["ROAS"] = np.where(df["Spend"] != 0, df["Revenue"] / df["Spend"], pd.NA)

df.replace([np.inf, -np.inf], pd.NA, inplace=True)

print("Missing values in each column:")
print(df.isnull().sum(), "\n")

print("Data types:")
print(df.dtypes, "\n")

categories = ['Platform', 'Content_Type', 'Target_Age', 'Target_Gender', 'Region']
for col in categories:
    print(f"Unique values in {col}: {df[col].dropna().unique()}")

print("\nNumber of duplicate rows based on Campaign_ID and Date:")
print(df.duplicated(subset=['Campaign_ID', 'Date']).sum(), "\n")

print("Summary statistics:")
print(df.describe())

df.to_csv("data/kpi_output.csv", index=False)
print("\nDone! File saved as data/kpi_output.csv")
