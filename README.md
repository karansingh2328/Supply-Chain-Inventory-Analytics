# 🚚 Supply Chain & Inventory Analytics

An end-to-end data analytics project focused on analyzing sales, profitability, customers, products, discounts, shipping, delivery performance, and geographic performance across a retail supply chain.

The project transforms raw transactional data into structured analysis, business insights, and interactive Power BI dashboards to support data-driven decision-making.

---

## 📌 Project Overview

This project analyzes the DataCo Supply Chain dataset to understand business and operational performance across:

- Sales and revenue
- Profitability
- Customers and customer segments
- Products and categories
- Discounts
- Markets, countries, and cities
- Shipping performance
- Delivery delays
- Supply chain efficiency

The goal is to identify performance trends, underperforming areas, and opportunities for business improvement.

---

## 📊 Dataset

**Dataset:** DataCo Supply Chain Dataset  
**Source:** Kaggle  
**Time Period:** 2015–2018

| Metric | Value |
|---|---:|
| Rows | 180,519 |
| Raw Columns | 53 |
| Cleaned Columns | 45 |
| Feature-Engineered Columns | 50 |
| Unique Customers | 20,652 |
| Unique Orders | 65,752 |
| Unique Products | 118 |
| Product Categories | 50 |
| Markets | 5 |
| Countries | 164 |
| Cities | 3,597 |

---

## 🔄 Project Workflow

### 1. Excel Business Analysis

The project started with Excel-based business analysis and visualization.

Analysis included:

- Sales performance
- Profit performance
- Product and category performance
- Customer segment performance
- Market and geographic performance
- Discount analysis
- Shipping and delivery analysis

---

### 2. Python Data Cleaning & Feature Engineering

Python was used to prepare the dataset for deeper analysis.

#### Data Cleaning

- Handled missing customer last names
- Created a combined customer name field
- Converted date columns to DateTime
- Checked for duplicate records
- Validated missing values
- Verified data types

#### Feature Engineering

Created analytical features including:

- Order year
- Order month
- Order quarter
- Order day
- Shipping duration
- Weekend order indicator
- Profit margin
- Discount amount
- Delivery delay
- Late delivery indicator

---

### 3. SQL Business Analysis

PostgreSQL was used to perform business-focused analysis.

The SQL analysis covered:

- Sales trends
- Profit trends
- Year-over-year performance
- Month-over-month performance
- Product performance
- Category performance
- Customer segment performance
- Discount patterns
- Market performance
- Country performance
- Shipping and delivery performance

SQL techniques included:

- Aggregations
- GROUP BY
- CTEs
- Window functions
- Ranking
- Date functions
- Trend analysis

---

### 4. Power BI Dashboard

Power BI was used to build interactive dashboards for business reporting.

The dashboards cover:

- Sales performance
- Profitability
- Products
- Operations
- Discounts
- Shipping
- Delivery performance
- Market and geographic performance

DAX measures were created to support dynamic KPIs and time-based analysis.

Dashboard screenshots are available in the `images/` folder.

---

## 📈 Key Performance Indicators

| KPI | Value |
|---|---:|
| Total Sales | $36,784,735.01 |
| Total Profit | $3,966,902.97 |
| Total Orders | 65,752 |
| Total Customers | 20,652 |

Additional KPIs were created in Power BI for:

- Profit Margin
- Average Order Value
- Average Profit per Order
- Late Delivery Rate
- Average Delivery Delay
- Average Discount Rate
- Average Shipping Duration
- Total Quantity Sold
- Sales Growth
- Profit Growth

---

## 💡 Key Analysis Areas

The project focuses on identifying:

- Sales growth and decline
- Low-profit and loss-making products
- Underperforming product categories
- Market and country performance
- Customer segment performance
- Discount dependency
- Relationship between discounts, sales, and profit
- Shipping and delivery delays
- Operational performance
- Supply chain improvement opportunities

---

## 🧹 Data Quality

The dataset was checked for:

- Missing values
- Duplicate records
- Data types
- Date consistency
- Shipping duration
- Delivery delays
- Data completeness

The cleaned dataset contains no remaining missing values and no duplicate records.

---

---

## 📊 Power BI Dashboard

### Executive Overview

![Executive Dashboard](https://github.com/karansingh2328/Supply-Chain-Inventory-Analytics/blob/main/images/Executive%20Dashboard.png)

### Product Analysis

![Product Analysis](https://github.com/karansingh2328/Supply-Chain-Inventory-Analytics/blob/main/images/Products%20Page.png)

### Operations & Shipping

![Operations Dashboard](https://github.com/karansingh2328/Supply-Chain-Inventory-Analytics/blob/main/images/Operations%20Page.png)

### Discount Analysis

![Discount Analysis](https://github.com/karansingh2328/Supply-Chain-Inventory-Analytics/blob/main/images/Discount%20Page.png)

---

## ✅ Project Completion

The project follows a complete analytics workflow:

**Excel Business Analysis → Python Data Cleaning & Feature Engineering → PostgreSQL Business Analysis → Power BI Dashboard → Business Insights**

This project demonstrates the complete process of taking a real-world supply chain dataset from initial analysis and data preparation to SQL analysis, dashboard development, and business interpretation.

---

## 👤 Author

### Karan Singh

Aspiring Data Analyst

**Tools:** SQL | Python | Excel | Power BI

**GitHub:** https://github.com/karansingh2328

**LinkedIn:** https://www.linkedin.com/in/karansingh2328/

---
