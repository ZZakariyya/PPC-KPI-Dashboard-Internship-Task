-- SQL schema for PPC KPI Dashboard
-- Define tables and relationships here 

CREATE SCHEMA IF NOT EXISTS campaign;

CREATE TABLE campaign.campaign_performance (
    Campaign_ID TEXT PRIMARY KEY,
    Clicks INTEGER,
    Conversions INTEGER,
    Platform TEXT,
    Content_Type TEXT,
    Target_Age TEXT,
    Target_Gender TEXT,
    Region TEXT,
    Revenue FLOAT,
    Spend FLOAT,
    Date DATE,
    Impressions INTEGER,
    CTR FLOAT,
    Conversion_rate FLOAT,
    CPC FLOAT,
    ROI FLOAT,
    CPA FLOAT,
    CPM FLOAT
);