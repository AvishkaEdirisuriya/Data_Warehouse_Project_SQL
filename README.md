# SQL Data Warehouse Project (Bronze–Silver–Gold Architecture)

## 📌 Overview
This project demonstrates the design and implementation of an **end-to-end SQL Server Data Warehouse** using the **Bronze–Silver–Gold layered architecture**.  
The solution covers database initialization, schema design, data ingestion, transformation, and analytics-ready views following **modern data engineering best practices**.

📺 **Inspiration & Learning Reference**:  
This project was inspired by the *Data with Baara* YouTube series and extended with additional transformations, validations, and documentation.

---

## 🏗️ Architecture Overview

Source CSV Files
↓
Bronze Layer
(Raw Data)
↓
Silver Layer
(Cleaned & Transformed)
↓
Gold Layer
(Analytics-Ready Views)


| Layer  | Purpose |
|------|--------|
| **Bronze** | Raw data ingestion from source CSV files |
| **Silver** | Data cleansing, standardization, validation |
| **Gold** | Star schema views for reporting & analytics |

---

## 🛠️ Tech Stack
- **Database**: Microsoft SQL Server
- **Language**: T-SQL
- **ETL Method**: Stored Procedures
- **Data Source**: CSV Files (CRM & ERP systems)
- **Version Control**: Git & GitHub

---

## 📂 Project Structure

sql-data-warehouse-project/
│
├── datasets/
│ ├── source_crm/
│ │ ├── cust_info.csv
│ │ ├── prd_info.csv
│ │ └── sales_details.csv
│ └── source_erp/
│ ├── CUST_AZ12.csv
│ ├── LOC_A101.csv
│ └── PX_CAT_G1V2.csv
│
├── sql/
│ ├── 01_create_database_and_schemas.sql
│ ├── 02_bronze_layer.sql
│ ├── 03_silver_layer.sql
│ └── 04_gold_layer.sql
│
└── README.md
