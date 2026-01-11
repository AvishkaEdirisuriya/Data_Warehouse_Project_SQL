# SQL Data Warehouse Project (Bronze–Silver–Gold Architecture)

## 📌 Overview
This project demonstrates the design and implementation of an **end-to-end SQL Server Data Warehouse** using the **Bronze–Silver–Gold layered architecture**.  
The solution covers database initialization, schema design, data ingestion, transformation, and analytics-ready views following **modern data engineering best practices**.

📺 **Inspiration & Learning Reference**:  
This project was inspired by the *Data with Baara* YouTube series.

---

## 🏗️ Architecture Overview

```
flow:
  Source CSV Files
      ↓
  Bronze Layer (Raw Data)
      ↓
  Silver Layer (Cleaned & Transformed)
      ↓
  Gold Layer (Analytics-Ready Views)
```

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
### Bronze Tables

- crm_cust_info
- crm_prd_info
- crm_sales_details
- erp_cust_az12
- erp_loc_a101
- erp_px_cat_g1v2

## 🥈 Silver Layer (Cleansed & Transformed)

### 🎯 Purpose
- Clean, standardize, and validate data
- Resolve duplicates and inconsistencies
- Prepare data for analytics

### Key Transformations
- Deduplication using `ROW_NUMBER()`
- Gender & marital status normalization
- Date validation and correction
- Sales value reconciliation
- Product category extraction
- Country code standardization
- Default handling for missing or invalid values

### Stored Procedure
```sql
EXEC silver.load_silver;
```

### Silver Tables

- crm_cust_info
- crm_prd_info
- crm_sales_details
- erp_cust_az12
- erp_loc_a101
- erp_px_cat_g1v2

## 🥇 Gold Layer (Analytics & Reporting)

### 🎯 Purpose
- Provide business-ready datasets
- Implement Star Schema
- Support BI tools and ad-hoc analytics

### Gold Objects (Views)
#### 📘 Dimension: `dim_products`
- Product attributes
- Category & subcategory mapping
- Active products only (SCD-ready logic)

#### 👤 Dimension: `dim_customers`
- Unified customer profile
- Gender resolution logic (CRM → ERP fallback)
- Country enrichment
- Clean demographic attributes

#### 📊 Fact: `fact_sales`
- Sales transactions
- Linked to product & customer dimensions
- Ready for aggregation and KPI reporting

## ⭐ Star Schema Overview

          dim_customers
                |
                |
          fact_sales
                |
                |
          dim_products



