-- SQL views for PPC KPI Dashboard
-- Define aggregated views here 

CREATE OR REPLACE VIEW region_performance AS
SELECT
    "Region",
    COUNT(DISTINCT "Campaign_ID") AS total_campaigns,
    SUM("Impressions") AS total_impressions,
    SUM("Clicks") AS total_clicks,
    SUM("Conversions") AS total_conversions,
    SUM("Spend") AS total_spend,
    SUM("Revenue") AS total_revenue,
    ROUND(SUM("Clicks") * 1.0 / NULLIF(SUM("Impressions"), 0), 4) AS ctr,
    ROUND(SUM("Spend") / NULLIF(SUM("Clicks"), 0), 2) AS cpc,
    ROUND(SUM("Conversions") * 1.0 / NULLIF(SUM("Clicks"), 0), 4) AS conversion_rate,
    ROUND(SUM("Revenue") / NULLIF(SUM("Spend"), 0), 2) AS roas
FROM ppc_campaigns_analysis
GROUP BY "Region";

CREATE OR REPLACE VIEW campaign_summary AS
SELECT
    "Campaign_ID",
    "Platform",
    "Content_Type",
    "Date",
    "Clicks",
    "Conversions",
    "Revenue",
    "Spend",
    "CTR",
    "CPC",
    "Conversion_Rate",
    "ROAS"
FROM ppc_campaigns_analysis;


