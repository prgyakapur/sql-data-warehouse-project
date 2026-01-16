# 🏗️ SQL Data Warehouse: End-to-End Engineering Project
**Consolidating ERP & CRM Data for Strategic Business Intelligence**

## 📌 Project Overview
This project demonstrates the construction of a modern data warehouse using the **Medallion Architecture**. The goal was to consolidate fragmented data from two disparate source systems—**CRM** and **ERP**—into a unified "Single Version of Truth."

By implementing the **Separation of Concerns (SoC)** principle, this pipeline ensures that data quality is managed in stages, moving from raw ingestion to business-ready analytical models.

---

## 🛠️ Data Lifecycle & Analyst Priorities

### 🥉 1. Bronze: Integration & Raw Ingestion
* **Goal:** Create a centralized landing zone for all source data.
* **Process:** Loaded 6 core datasets (from the `/datasets` folder) into the Bronze layer.
* **Analyst Value:** Combines customer profiles with transactional history, breaking down data silos between departments.

### 🥈 2. Silver: Data Quality & Cleansing
* **Goal:** Transform "dirty" source data into reliable information.
* **Key Actions:**
    * **Standardization:** Fixing inconsistent naming and formatting (e.g., Gender, Dates).
    * **Deduplication:** Removing redundant records to ensure accurate reporting.
    * **Null Management:** Identifying and treating missing values.
* **Analyst Value:** High-quality data is the foundation of trust. This layer ensures that 100% of the data used in reporting is verified and clean.

### 🥇 3. Gold: BI Analytics & Reporting
* **Goal:** Deliver actionable insights via a **Star Schema** (Fact & Dimension tables).
* **Strategic Focus Areas:**
    * **Customer Behavior:** Analyzing lifecycle shifts and segmentation.
    * **Product Performance:** Identifying high-growth categories and SKU velocity.
    * **Sales Trends:** Time-series analysis to pinpoint seasonality and revenue drivers.

---

## 📂 Project Structure
As shown in the repository, the project is organized to be modular and scalable:
```bash
├── datasets/     # Raw CRM & ERP source files (CSVs)
├── docs/         # Data Catalog and architectural diagrams
├── scripts/      # SQL scripts (01_Bronze, 02_Silver, 03_Gold)
├── tests/        # Data quality check scripts
├── LICENSE       # Project licensing
└── README.md     # Project documentation & business context
