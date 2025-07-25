import pandas as pd
df = pd.read_excel("/Users/narmin/Desktop/ppc_campaign_performance_data.xlsx")
print(df.head())

df["CTR"] = df["Clicks"] / df["Impressions"]                  #Click-Through Rate
df["Conversion_Rate"] = df["Conversions"] / df["Clicks"]      #Conversion Rate
df["CPC"] = df["Spend"] / df["Clicks"]                        #Cost Per Click
df["ROAS"] = df["Revenue"] / df["Spend"]                      #Return on Ad Spend

## Calculation KPIs and exporting
df.to_excel("/Users/narmin/Desktop/campaign_kpi_analysis.xlsx", index=False)
print(df.head())