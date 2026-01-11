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

---

## 🧱 Layer Details

---

## 🥉 Bronze Layer (Raw Data)

### 🎯 Purpose
- Store raw, unmodified data from source systems
- Act as a **landing zone** for ingestion

### Key Features
- Tables mirror source structure
- Data loaded using `BULK INSERT`
- Tables truncated before every load
- No transformations applied

### Stored Procedure
```sql
EXEC bronze.load_bronze;
```
## Bronze Tables

crm_cust_info
crm_prd_info
crm_sales_details
erp_cust_az12
erp_loc_a101
erp_px_cat_g1v2



