# Supply Chain & Inventory Analytics

An end-to-end data analytics project analyzing supply chain, sales, profitability, customer behavior, product performance, discounts, and delivery operations using **SQL, Python, Excel, and Power BI**.

The project follows a complete analytics workflow:

**Business Understanding → Data Cleaning → Feature Engineering → SQL Analysis → Python EDA → Excel Analysis → Power BI Dashboard → Business Insights**

---

## 📌 Project Overview

This project analyzes a global retail supply chain dataset to identify business problems and generate actionable insights related to:

- Sales performance
- Profitability
- Customer segments
- Product performance
- Regional performance
- Discounts
- Shipping and delivery performance
- Sales and profit trends
- Underperforming products and regions

The objective is to understand **why sales or profit decline, where performance is weak, how discounts affect sales and profit, and which operational areas require improvement.**

---

## 🎯 Business Objectives

The analysis focuses on the following business objectives:

- Increase profit while minimizing unnecessary discounts
- Identify regions and countries with weak sales performance
- Identify products and categories generating low or negative profit
- Understand customer segment performance
- Analyze sales and profit trends over time
- Identify regions with declining or stagnant sales
- Analyze shipping and delivery performance
- Identify opportunities for improving customer satisfaction
- Support data-driven business decision-making

---

## 👥 Stakeholders

The analysis is designed to support:

| Stakeholder | Business Focus |
|---|---|
| CEO | Overall business performance |
| Sales Manager | Sales trends and regional performance |
| Marketing Manager | Customer and segment behavior |
| Finance Manager | Profitability, discounts, and margins |
| Operations Manager | Shipping and delivery performance |

---

## 📊 Dataset

**Dataset:** Global Superstore  
**Source:** Kaggle  
**Domain:** Retail Sales & Supply Chain Analytics

### Dataset Size

- **Rows:** 51,291
- **Columns:** 26
- **Time Period:** 2011–2014
- **Countries:** 147
- **Regions:** 13
- **States:** 1,094
- **Cities:** 3,636
- **Customer Segments:** 3
- **Categories:** 3
- **Sub-Categories:** 17
- **Unique Customers:** 4,873
- **Unique Product Names:** 3,788
- **Unique Product IDs (SKUs):** 10,292

The dataset contains more Product IDs than Product Names, indicating that the same product name can be associated with multiple SKU-level records.

For product-performance analysis, **Product Name** is primarily used, while **Product ID** can be used for SKU-level analysis.

---

## 🔍 Key Business Questions

The project answers business questions such as:

### Sales Analysis

- When did sales start declining?
- Which regions experienced the largest month-over-month sales decline?
- Which product categories experienced the greatest sales decline?
- Which customer segment experienced the greatest decline?
- Which regions have stagnant sales?
- Which products have experienced stagnant sales?

### Profit Analysis

- Which regions generate the highest and lowest profit?
- Which regions experienced the greatest decline in profit?
- Which product categories generate the lowest profit?
- Which products generate low or negative profit?
- Which months recorded the largest profit decline?

### Discount Analysis

- How has the average discount changed year over year?
- Which product category requires the highest average discount?
- Which regions require the highest discounts?
- Is higher discounting associated with higher sales?
- Is higher discounting associated with higher profit?

### Shipping Analysis

- How has average shipping time changed year over year?
- Which regions have the longest average shipping time?
- Which customer segments experience the longest shipping time?
- Which countries have the longest average shipping time?

---

## 🛠️ Tools & Technologies

### SQL
- PostgreSQL
- CTEs
- Window Functions
- `LAG()`
- `DATE_TRUNC()`
- Aggregations
- Subqueries
- Ranking
- Time-series analysis

### Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- Correlation Analysis

### Excel
- Data analysis
- Pivot Tables
- Charts
- KPI analysis
- Trend analysis
- Business reporting

### Power BI
- Data modeling
- DAX
- KPI cards
- Interactive dashboards
- Time-series analysis
- Drill-down analysis
- Business performance reporting

---

## 🔄 Project Workflow

```text
Raw Data
   ↓
Data Cleaning
   ↓
Feature Engineering
   ↓
SQL Business Analysis
   ↓
Python EDA
   ↓
Excel Analysis
   ↓
Power BI Dashboard
   ↓
Business Insights & Recommendations
