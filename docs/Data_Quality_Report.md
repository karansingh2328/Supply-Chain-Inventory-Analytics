# Data Quality Report

This report summarizes the data quality assessment and data preparation steps performed before business analysis.

## Missing Values

A total of 8 missing values were found in the `customer_lname` column.

The missing last names were handled while creating the `Customer_name` column using the available customer information.

After creating `Customer_name`, the original `customer_fname` and `customer_lname` columns were removed.

No missing values remain in the cleaned dataset.

## Duplicate Records

No duplicate records were found in the dataset.

No records were removed due to duplication.

## Data Types

The following data type conversions were performed:

- `order_date_dateorders` → Converted to DateTime
- `shipping_date_dateorders` → Converted to DateTime

All remaining columns were verified to have appropriate data types.

## Data Cleaning Summary

The following cleaning steps were completed:

- Renamed columns where necessary.
- Combined customer first and last names into `Customer_name`.
- Removed the original customer name columns after creating the combined column.
- Converted order and shipping date columns to DateTime format.
- Checked for duplicate records.
- Checked for missing values after cleaning.

## Feature Engineering Summary

The following features were created:

- `order_year`
- `order_month`
- `order_month_name`
- `order_quarter`
- `order_day_name`
- `shipping_duration_days`
- `is_weekend_order`
- `profit_margin_percentage`
- `discount_amount`
- `delivery_delay_days`
- `is_late_delivery`

## Business Rule Validation

The dataset was validated to ensure consistency, completeness, and reliability before business analysis.

- No duplicate records were found.
- No missing values remain after data cleaning.
- Date columns were successfully converted to DateTime format.
- Shipping duration was successfully derived from order and shipping dates.
- Delivery delay was successfully derived from the expected and actual delivery information.

The feature-engineered dataset is ready for Excel, SQL, Python, and Power BI analysis.
