-- SQL views for PPC KPI Dashboard
-- Define aggregated views here 

-- Campaign summary view
CREATE OR REPLACE VIEW public.campaign_summary AS
SELECT
    "Campaign_ID",
    "Date",
    SUM("Clicks") AS total_clicks,
    SUM("Conversions") AS total_conversions,
    SUM("Spend") AS total_spend,
    SUM("Revenue") AS total_revenue,
    AVG("CTR") AS avg_ctr,
    AVG("CPC") AS avg_cpc,
    AVG("CPA") AS avg_cpa,
    AVG("ROAS") AS avg_roas
FROM public.ppc_campaigns
GROUP BY "Campaign_ID", "Date";

-- Regional performance view
CREATE OR REPLACE VIEW public.region_performance AS
SELECT
    "Region",
    COUNT(DISTINCT "Campaign_ID") AS total_campaigns,
    SUM("Clicks") AS total_clicks,
    SUM("Conversions") AS total_conversions,
    SUM("Spend") AS total_spend,
    SUM("Revenue") AS total_revenue,
    AVG("CTR") AS avg_ctr,
    AVG("CPC") AS avg_cpc,
    AVG("CPA") AS avg_cpa,
    AVG("ROAS") AS avg_roas
FROM public.ppc_campaigns
GROUP BY "Region"
ORDER BY total_revenue DESC;

-- Platform performance view
CREATE OR REPLACE VIEW public.platform_performance AS
SELECT
    "Platform",
    COUNT(DISTINCT "Campaign_ID") AS total_campaigns,
    SUM("Clicks") AS total_clicks,
    SUM("Conversions") AS total_conversions,
    SUM("Spend") AS total_spend,
    SUM("Revenue") AS total_revenue,
    AVG("CTR") AS avg_ctr,
    AVG("CPC") AS avg_cpc,
    AVG("CPA") AS avg_cpa,
    AVG("ROAS") AS avg_roas
FROM public.ppc_campaigns
GROUP BY "Platform"
ORDER BY total_revenue DESC;
