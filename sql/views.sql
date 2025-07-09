-- SQL views for PPC KPI Dashboard
-- Define aggregated views here 

-- View 1: Campaign Summary
CREATE VIEW campaign_summary AS
SELECT 
    Campaign_ID,
    Platform,
    Content_Type,
    SUM(Impressions) AS total_impressions,
    SUM(Clicks) AS total_clicks,
    SUM(Conversions) AS total_conversions,
    SUM(Spend) AS total_spend,
    SUM(Revenue) AS total_revenue,
    ROUND(AVG(CTR), 3) AS avg_ctr,
    ROUND(AVG(CVR), 3) AS avg_cvr,
    ROUND(AVG(CPC), 3) AS avg_cpc,
    ROUND(AVG(CPA), 3) AS avg_cpa,
    ROUND(AVG(ROAS), 3) AS avg_roas
FROM ppc_campaign_data
GROUP BY Campaign_ID, Platform, Content_Type;

-- View 2: Regional Performance
CREATE VIEW regional_performance AS
SELECT 
    Region,
    SUM(Impressions) AS total_impressions,
    SUM(Clicks) AS total_clicks,
    SUM(Conversions) AS total_conversions,
    SUM(Spend) AS total_spend,
    SUM(Revenue) AS total_revenue,
    ROUND(AVG(CTR), 3) AS avg_ctr,
    ROUND(AVG(CVR), 3) AS avg_cvr,
    ROUND(AVG(ROAS), 3) AS avg_roas
FROM ppc_campaign_data
GROUP BY Region;
