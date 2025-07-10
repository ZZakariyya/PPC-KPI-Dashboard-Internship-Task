CREATE TABLE IF NOT EXISTS ppc_campaigns_analysis (
    Campaign_ID VARCHAR,
    Clicks INTEGER,
    Conversions INTEGER,
    Platform VARCHAR,
    Content_Type VARCHAR,
    Target_Age VARCHAR,
    Target_Gender VARCHAR,
    Region VARCHAR,
    Revenue FLOAT,
    Spend FLOAT,
    Date DATE,
    Impressions INTEGER,
    CTR FLOAT,
    CPC FLOAT,
    CPA FLOAT,
    Conversion_Rate FLOAT,
    ROAS FLOAT
);


SELECT * FROM ppc_campaigns_analysis;

-- views.sql
-- 1. Region üzrə performans
CREATE OR REPLACE VIEW region_performance AS
SELECT
    region,
    COUNT(DISTINCT campaign_id) AS total_campaigns,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(conversions) AS total_conversions,
    SUM(spend) AS total_spend,
    SUM(revenue) AS total_revenue,
    ROUND(CAST(SUM(clicks)::DECIMAL / NULLIF(SUM(impressions), 0) AS NUMERIC), 4) AS ctr,
    ROUND(CAST(SUM(spend) / NULLIF(SUM(clicks), 0) AS NUMERIC), 2) AS cpc,
    ROUND(CAST(SUM(spend) / NULLIF(SUM(conversions), 0) AS NUMERIC), 2) AS cpa,
    ROUND(CAST(SUM(conversions)::DECIMAL / NULLIF(SUM(clicks), 0) AS NUMERIC), 4) AS conversion_rate,
    ROUND(CAST(SUM(revenue) / NULLIF(SUM(spend), 0) AS NUMERIC), 2) AS roas
FROM ppc_campaigns_analysis
GROUP BY region;


-- 2. Kampaniya xülasəsi
CREATE OR REPLACE VIEW campaign_summary AS
SELECT
    campaign_id,
    platform,
    content_type,
    date,
    clicks,
    conversions,
    revenue,
    spend,
    ctr,
    roas
FROM ppc_campaigns_analysis;


SELECT * FROM ppc_campaigns_analysis;
SELECT * FROM region_performance;
SELECT * FROM campaign_summary;
