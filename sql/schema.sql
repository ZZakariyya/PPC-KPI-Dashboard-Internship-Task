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

