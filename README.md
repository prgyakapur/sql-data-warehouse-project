# 🏗️ SQL Data Warehouse: End-to-End Engineering Project
**Transforming Fragmented ERP & CRM Data into a Unified Source of Truth**

## 📌 Project Overview
This project demonstrates the construction of a modern data warehouse using the **Medallion Architecture**. The goal was to consolidate data from two disparate source systems—**CRM** and **ERP**—to provide a holistic view of business operations.

By implementing **Separation of Concerns (SoC)**, the pipeline ensures that raw data ingestion, business logic transformation, and analytical modeling are handled in independent, manageable layers.

---

## 🛠️ System Architecture
The data flows through three distinct layers within the **PostgreSQL** environment:

### 🥉 1. Bronze Layer (The Landing Zone)
* **Concern:** Raw Data Ingestion.
* **Process:** Direct `COPY` from 6 source CSV files (Customers, Products, Sales, etc.).
* **Integrity:** Data is kept in its original format to allow for full auditability and reprocessing.

### 🥈 2. Silver Layer (The Cleaning Room)
* **Concern:** Data Quality & Standardization.
* **Key Transformations:**
    * **Handling Nulls:** Replacing missing values in critical fields.
    * **Deduplication:** Removing redundant records from the CRM/ERP merge.
    * **Normalization:** Cleaning text fields (trimming spaces, standardizing case).
    * **Data Casting:** Converting strings to proper Dates and Numerics.

### 🥇 3. Gold Layer (The Analytics Hub)
* **Concern:** Performance & Business Logic.
* **Data Model:** Implemented a **Star Schema** consisting of:
    * **Fact Tables:** Transactional data (Sales).
    * **Dimension Tables:** Descriptive context (Customer, Product, Geography).
* **Historization:** Implemented **Slowly Changing Dimensions (SCD)** to track attribute changes over time.

---

## 🚀 Key Features for Data Analysts
* **Single Version of Truth:** Combined ERP and CRM datasets to eliminate "data silos."
* **Automated Pipeline:** Utilized **Stored Procedures** to refresh data across all layers.
* **Data Integrity:** Built-in checks to isolate records that fail quality standards.
* **Data Catalog:** Comprehensive dictionary defining every column and business rule.

---

## 📂 Project Structure
```bash
├── 01_Bronze_Setup.sql      # Schema creation and raw data loading
├── 02_Silver_Cleansing.sql   # Data quality scripts and transformations
├── 03_Gold_Modeling.sql     # Star schema view/table creation
├── /data                    # Source CSV files from CRM & ERP
└── README.md                # Project documentation
