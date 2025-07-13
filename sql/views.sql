-- SQL views for PPC KPI Dashboard
-- Define aggregated views here 


-- Key KPIs of each campaign

CREATE VIEW campaign_summary AS
SELECT
    "Campaign_ID",
    "Platform",
    "Content_Type",
    "Region",
    "Clicks",
    "Conversions",
    "Impressions",
    "Spend",
    "Revenue",
    "CTR",
    "Conversion_Rate",
    "CPC",
    "CPA",
    "CPM",
    "ROI"
FROM campaigns.ppc_campaign_with_kpis;

    -- Grouping of all campaigns by region

CREATE VIEW regional_performance AS
SELECT
    "Region",
    COUNT(*) AS "Campaign_Count",
    COUNT(DISTINCT "Platform") AS "Platform_Count",
    SUM("Clicks") AS "Total_Clicks",
    SUM("Conversions") AS "Total_Conversions",
    SUM("Impressions") AS "Total_Impressions",
    SUM("Spend") AS "Total_Spend",
    SUM("Revenue") AS "Total_Revenue",
    AVG("CTR") AS "Avg_CTR",
    AVG("Conversion_Rate") AS "Avg_Conversion_Rate",
    AVG("CPC") AS "Avg_CPC",
    AVG("CPA") AS "Avg_CPA",
    AVG("CPM") AS "Avg_CPM",
    AVG("ROI") AS "Avg_ROI"
FROM campaigns.ppc_campaign_with_kpis
GROUP BY "Region";

-- Grouping of all campaigns by platform

CREATE VIEW platform_performance AS
SELECT
    "Platform",
    COUNT(*) AS "Campaign_Count",
    SUM("Clicks") AS "Total_Clicks",
    SUM("Conversions") AS "Total_Conversions",
    SUM("Impressions") AS "Total_Impressions",
    SUM("Spend") AS "Total_Spend",
    SUM("Revenue") AS "Total_Revenue",
    AVG("CTR") AS "Avg_CTR",
    AVG("Conversion_Rate") AS "Avg_Conversion_Rate",
    AVG("CPC") AS "Avg_CPC",
    AVG("CPA") AS "Avg_CPA",
    AVG("CPM") AS "Avg_CPM",
    AVG("ROI") AS "Avg_ROI"
FROM campaigns.ppc_campaign_with_kpis
GROUP BY "Platform";

-- Content_type_performance

CREATE VIEW content_type_performance AS
SELECT
    "Content_Type",
    COUNT(*) AS "Campaign_Count",
    COUNT(DISTINCT "Platform") AS "Platform_Count",
    SUM("Clicks") AS "Total_Clicks",
    SUM("Conversions") AS "Total_Conversions",
    SUM("Impressions") AS "Total_Impressions",
    SUM("Spend") AS "Total_Spend",
    SUM("Revenue") AS "Total_Revenue",
    AVG("CTR") AS "Avg_CTR",
    AVG("Conversion_Rate") AS "Avg_Conversion_Rate",
    AVG("CPC") AS "Avg_CPC",
    AVG("CPA") AS "Avg_CPA",
    AVG("CPM") AS "Avg_CPM",
    AVG("ROI") AS "Avg_ROI"
FROM campaigns.ppc_campaign_with_kpis
GROUP BY "Content_Type";

-- Monthly_performance

CREATE VIEW monthly_performance AS
SELECT
    DATE_TRUNC('month', "Date"::DATE) AS "Month",
    COUNT(*) AS "Campaign_Count",
    COUNT(DISTINCT "Platform") AS "Platform_Count",
    SUM("Clicks") AS "Total_Clicks",
    SUM("Conversions") AS "Total_Conversions",
    SUM("Impressions") AS "Total_Impressions",
    SUM("Spend") AS "Total_Spend",
    SUM("Revenue") AS "Total_Revenue",
    AVG("CTR") AS "Avg_CTR",
    AVG("Conversion_Rate") AS "Avg_Conversion_Rate",
    AVG("CPC") AS "Avg_CPC",
    AVG("CPA") AS "Avg_CPA",
    AVG("CPM") AS "Avg_CPM",
    AVG("ROI") AS "Avg_ROI"
FROM campaigns.ppc_campaign_with_kpis
GROUP BY DATE_TRUNC('month', "Date"::DATE)
ORDER BY "Month";

-- High ROİ 

CREATE VIEW high_roi_campaigns AS
SELECT *
FROM campaigns.ppc_campaign_with_kpis
WHERE "ROI" > 1.5;

-- Low performing

CREATE VIEW low_performing_campaigns AS
SELECT *
FROM campaigns.ppc_campaign_with_kpis
WHERE "ROI" < 0.8;


