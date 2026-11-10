# Financial Fraud Risk Analysis & Portfolio Dashboard

An end-to-end data analytics solution designed to detect, analyze, and visualize fraudulent transactions within financial account activities. This project demonstrates a full data pipeline workflow—moving from exploratory SQL querying and data extraction to building an executive-level interactive dashboard in Power BI.

---

## 📌 Project Overview

Financial fraud presents critical operational risks to financial institutions. This project establishes an analytics framework to monitor transaction volumes, isolate high-risk fraud cases, and quantify total capital exposure. 

### Key Business Metrics (KPIs):
* **Total Transactions:** Overall transactional volume analyzed across financial channels.
* **Flagged Fraud Cases:** Total count of transactions verified or flagged as high-risk fraud.
* **Total Capital at Risk:** Aggregated financial value associated with flagged fraudulent activities.

---

## 🛠️ Tech Stack & Tools

* **Database & Querying:** PostgreSQL / SQL (Data extraction, aggregation, filter logic)
* **Data Pipeline & Scripting:** Python (Data generation & preprocessing)
* **Visualization & Analytics:** Power BI Desktop (Interactive KPI cards, dynamic slicers, custom layout formatting)
* **Version Control:** Git & GitHub (Command line workflow & project tracking)

---

## 📁 Repository Structure

```text
Financial-Fraud-Risk-Analysis/
│
├── dashboard/
│   ├── Financial_Fraud_Risk_Dashboard.pbix   # Completed Power BI report workspace
│   └── dashboard_preview.png                 # High-resolution dashboard summary
│
├── data/
│   └── bank_fraud_data.csv                   # Primary compiled dataset
│
├── query_result_csvs/
│   ├── query1_output.csv                     # SQL query 1 execution result
│   ├── query2_output.csv                     # SQL query 2 execution result
│   └── query3_output.csv                     # SQL query 3 execution result
│
├── scripts/
│   ├── data_generator.py                     # Python script for synthetic data generation
│   └── fraud_analysis_queries.sql            # Core SQL queries & analytics
│
└── README.md                                 # Project documentation
```

---

## 📊 Dashboard Key Features

1. **Executive KPI Header:** Instant top-level metrics showcasing Total Volume, Fraud Count, and Exposure.
2. **Dynamic Filtering:** Slicers for granular breakdown by date ranges, transaction types, and risk levels.
3. **Optimized Layout:** Standardized visual hierarchy, custom card label formatting, and centered callout metrics.

---

## 🚀 Getting Started Locally

### Prerequisites
* [Power BI Desktop](https://powerbi.microsoft.com/) installed on Windows.
* PostgreSQL or any standard SQL database client (to execute `.sql` scripts).

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/rameshjakkula007/Financial-Fraud-Risk-Analysis.git
   ```
2. Open `dashboard/Financial_Fraud_Risk_Dashboard.pbix` in Power BI Desktop.
3. If prompted for data source paths, point the source to `data/bank_fraud_data.csv` in your local clone directory.