-- SQL schema for PPC KPI Dashboard
-- Define tables and relationships here 

CREATE TABLE public.ppc_campaigns (
  "Campaign_ID" VARCHAR,
  "Clicks" INT,
  "Conversions" INT,
  "Platform" VARCHAR,
  "Content_Type" VARCHAR,
  "Target_Age" VARCHAR,
  "Target_Gender" VARCHAR,
  "Region" VARCHAR,
  "Revenue" FLOAT,
  "Spend" FLOAT,
  "Date" DATE,
  "Impressions" INT,
  "CTR" FLOAT,
  "CPC" FLOAT,
  "CPA" FLOAT,
  "ROAS" FLOAT,
  PRIMARY KEY ("Campaign_ID", "Date")
);
