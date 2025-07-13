# PPC-KPI-Dashboard-Internship-Task

Welcome to the official GitHub repository for the **Data Analyst Internship Task** at [Your Company Name].

This project simulates a real-world analytics scenario for a digital marketing team. Interns will work with pay-per-click (PPC) campaign data to:

- Research and define marketing KPIs
- Build a database schema and views
- Create a performance dashboard in Looker Studio
- Submit all work via GitHub Pull Request

---

## 📁 Dataset Overview

You are provided with PPC campaign performance data containing:

- `Campaign_ID`
- `Platform` (e.g., Google, Meta, LinkedIn)
- `Content_Type` (e.g., Video, Static, Carousel)
- `Target_Age`, `Target_Gender`, `Region`
- `Date`
- `Impressions`, `Clicks`, `Conversions`, `Spend`, `Revenue`

> ✅ The dataset is clean. Your focus is on analysis, metric definition, database structuring, and insight generation.

---

## 🎯 Your Task

### 1. Research & Define KPIs
- Research common **PPC / Google Ads KPIs**
- Choose at least **4 KPIs** that can be derived from the dataset
- Document your choices and formulas in `/docs/kpi_research.md`

### 2. Calculate KPIs
- Use Python to calculate the KPIs and add them to the dataset
- Save your script in `/scripts/kpi_calculations.py`

### 3. Design & Upload to Database
- Design a schema and load the data into a PostgreSQL database
- Create relevant views (e.g., campaign summary, regional performance)
- Save your SQL in `/sql/schema.sql` and `/sql/views.sql`

---

### 📦 Choose Your Data Storage

You may use any of the following options to store your processed dataset:

#### 🟢 Option 1: Free Online PostgreSQL
We recommend:
- [ElephantSQL](https://www.elephantsql.com/)
- [Supabase](https://supabase.com/)
- [Render PostgreSQL](https://render.com/)

Make sure you can access your database from Looker Studio (via public IP or CSV export).

#### 🟢 Option 2: Google Sheets
Clean your dataset, calculate KPIs, and upload to Google Sheets. You can connect it directly to Looker Studio.

You may also build your own local database using the dataset in `/data`.

---

## 📊 Dashboard (Looker Studio)

1. Connect to your final data (via PostgreSQL or CSV)
2. Create a dashboard that includes:
   - At least **3 visualizations** (e.g., bar chart, time series, pie chart)
   - At least **2 filters** (e.g., date range, platform)
   - Scorecards showing your KPIs

3. **Share the dashboard**:
   - Grant access to `zakariyya.z@antetechnologies.com`
   - Copy and paste the dashboard link in your PR and in `/docs/README.md`

```markdown
### 📊 Dashboard Link
[Click to View Dashboard](https://lookerstudio.google.com/s/hcyTmdm6OK0)
