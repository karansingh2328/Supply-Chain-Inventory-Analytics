# Supply Chain & Inventory Analytics

An end-to-end retail supply chain analytics project focused on analyzing **sales, profitability, customers, products, discounts, regions, and shipping performance** to identify business problems and support data-driven decision-making.

The project follows a complete analytics workflow from raw data preparation to business analysis and interactive dashboard reporting.

---

## 📌 Project Overview

Retail businesses operate across multiple products, customers, markets, and regions, making it important to understand where sales and profit are growing, declining, or remaining stagnant.

This project analyzes the **Global Superstore / DataCo supply chain dataset** to investigate:

- Sales performance and trends
- Profitability and profit declines
- Product and category performance
- Customer segment performance
- Regional and country performance
- Discount patterns and their relationship with sales and profit
- Shipping and delivery performance
- Stagnant and declining business areas

The goal is to transform raw transactional data into meaningful business insights that can help improve **revenue, profitability, customer experience, and operational efficiency**.

---

## 🎯 Business Objectives

The analysis focuses on answering the following business objectives:

- Increase profit while minimizing unnecessary discounting
- Identify regions and countries with weak sales performance
- Identify products and categories generating low or negative profit
- Understand customer segment performance
- Identify declining and stagnant sales trends
- Understand changes in profitability over time
- Analyze the relationship between discounts, sales, and profit
- Identify regions and countries with longer shipping times
- Improve operational and customer experience through delivery analysis

---

## ❓ Key Business Questions

### Sales Performance

- When did sales start declining?
- Which region experienced the largest month-over-month sales decline?
- Which product category experienced the greatest sales decline?
- Which customer segment experienced the greatest decline in sales?
- Which regions have experienced stagnant sales?
- Which products have experienced stagnant sales?
- How much did sales decline compared with the previous month?
- Which regions generate the lowest revenue?

### Profitability

- Which regions generate the highest and lowest profit?
- Which region experienced the greatest decline in profit?
- Which product category experienced the greatest decline in profit?
- Which month recorded the largest decline in profit?
- Which products generate low or negative profit?
- Which product categories generate the lowest profit?
- Which regions contribute the least profit from underperforming products?
- For how many consecutive months have low- or negative-profit products continued to underperform?

### Discount Analysis

- How has the average discount changed year over year?
- Which product category requires the highest average discount?
- Which region requires the highest average discount?
- Is higher discounting associated with higher sales?
- Is higher discounting associated with higher profit?
- Is declining profit associated with higher discounts?

### Shipping & Operations

- How has average shipping time changed year over year?
- Which region has the longest average shipping time?
- Which customer segment experiences the longest shipping time?
- Which countries have the longest average shipping time?
- How does delivery performance vary across regions and customer segments?

---

## 📊 Dataset

**Dataset:** Global Superstore  
**Source:** Kaggle  
**Domain:** Retail Sales & Supply Chain Analytics

### Dataset Size

| Metric | Value |
|---|---:|
| Rows | 51,291 |
| Columns | 26 |
| Countries | 147 |
| Regions | 13 |
| States | 1,094 |
| Cities | 3,636 |
| Customer Segments | 3 |
| Categories | 3 |
| Sub-Categories | 17 |
| Unique Customers | 4,873 |
| Unique Product Names | 3,788 |
| Unique Product IDs (SKUs) | 10,292 |
| Time Period | 2011–2014 |

The dataset contains **3,788 unique product names** but **10,292 unique Product IDs**. Therefore, Product Name is primarily used for product-level business analysis, while Product ID can be used for SKU-level analysis.

---

## 🔄 Project Workflow

```text
Raw Data
   │
   ▼
Data Quality Assessment
   │
   ▼
Data Cleaning
   │
   ▼
Feature Engineering
   │
   ├──────────────┐
   ▼              ▼
 SQL Analysis   Python EDA
   │              │
   └───────┬──────┘
           ▼
      Excel Analysis
           │
           ▼
      Power BI Dashboard
           │
           ▼
   Business Insights
