-- Has the average discount changed over time?

SELECT order_year,
       ROUND(AVG(order_item_discount_rate)::numeric * 100, 2) AS average_discount_percentage
FROM dataco_table
GROUP BY order_year
ORDER BY order_year;

-- Business Insight:
-- The average discount rate varies across different years.
-- Changes in discount levels indicate shifts in pricing decisions over time.


-- Which product categories require the highest average discounts?

select category_name,
	round(avg(order_item_discount)::numeric,2) as average_discount
from dataco_table
group by category_name
order by average_discount desc
limit 1;

-- Business Insight:
-- Some product categories consistently receive higher average discounts.
-- These categories may require closer monitoring to evaluate pricing effectiveness.


-- Are higher discounts leading to higher sales and higher profitability?

select order_item_discount_rate,
	   round(avg(sales)::numeric,2) as average_sales,
	   round(avg(order_profit_per_order)::numeric,2) as average_profit
from dataco_table
group by order_item_discount_rate
order by order_item_discount_rate;

-- Business Insight:
-- Higher discounts may increase average sales but do not always improve profitability.
-- The relationship between discounts, sales, and profit should be monitored before increasing discounts.


-- When did sales start declining?

with yearly_sales as (
select order_year,
	   sum(sales) as total_sales
from dataco_table
group by order_year
),
sales_comparison as(
select order_year,
	   total_sales,
	   lag(total_sales)over(order by order_year) as previous_year_total_sales
from yearly_sales
)

select order_year,
	   round((total_sales/1000000.0)::numeric,2)as total_sales_million,
	   round((previous_year_total_sales/1000000.0)::numeric,2)as previous_year_total_sales_million
from sales_comparison
where total_sales<previous_year_total_sales
order by order_year
limit 1;

-- Business Insight:
-- Sales declined in the listed years compared to the previous year.
-- These periods should be investigated to identify possible business or seasonal factors.


-- Which country experienced the greatest single-year sales decline?

with country_sales as(
select order_country,
	   order_year,
	   sum(sales) as total_sales
from dataco_table
group by order_country, order_year
),
sales_comparison as(
select order_country,
	   order_year,
	   total_sales,
	   lag(total_sales)over(partition by order_country order by order_year) as previous_year_sales
from country_sales
)
select order_country,
	   order_year,
	   round((total_sales/1000000.0)::numeric,2) as total_sales_million,
	   round((previous_year_sales/1000000.0)::numeric,2) as previous_year_sales_million,
	   round(((previous_year_sales - total_sales)/1000000.0)::numeric,2) as sales_decline_million
from sales_comparison
where previous_year_sales is not null
order by sales_decline_million desc
limit 1;

-- Business Insight:
-- The listed country recorded the largest year-over-year decline in sales.
-- This market should be reviewed to identify factors contributing to the decline.


-- Which market experienced the greatest year-over-year (YoY) sales decline?

with market_sales as(
select market,
	   order_year,
	   sum(sales) as total_sales
from dataco_table
group by market,order_year
),
sales_comparison as(
select  market,
	    order_year,
		total_sales,
		lag(total_sales)over(partition by market order by order_year) as previous_year_sales
from market_sales
)
select market,
	   order_year,
	   round((total_sales/1000000.0)::numeric,2)as total_sales_million,
	   round((previous_year_sales/1000000.0)::numeric,2)as previous_year_sales_million,
	   round(((previous_year_sales - total_sales)/1000000.0)::numeric,2) as sales_decline_million
from sales_comparison
where previous_year_sales is not null
order by sales_decline_million desc
limit 1;

-- Business Insight:
-- The listed market experienced the largest year-over-year decrease in sales.
-- Performance in this market should be analyzed to identify improvement opportunities.


-- Which customer segment experienced the greatest year-over-year (YoY) sales decline?

with segment_sales as(
select customer_segment,
	   order_year,
	   sum(sales) as total_sales
from dataco_table
group by customer_segment, order_year
),
sales_comparison as(
select customer_segment,
	   order_year,
	   total_sales,
	   lag(total_sales) over(partition by customer_segment order by order_year) as previous_year_sales
from segment_sales
)
select customer_segment,
	   order_year,
	   round((total_sales/1000000.0)::numeric,2)as total_sales_million,
	   round((previous_year_sales/1000000.0)::numeric,2) as previous_year_sales_million,
	   round(((previous_year_sales - total_sales)/1000000.0)::numeric, 2) as sales_decline_million
from sales_comparison
where previous_year_sales is not null
order by sales_decline_million desc
limit 1;

-- Business Insight:
-- The listed customer segment recorded the largest decline in annual sales.
-- Customer behavior within this segment should be evaluated to understand the decline.


-- Which product categories contribute the highest and lowest sales revenue?

with category_sales as (
select category_name,
       SUM(sales) as total_sales
from dataco_table
group by category_name
),
category_rank as(
select category_name,
  	   total_sales,
	   rank()over(order by total_sales desc) as highest_rank,
	   rank()over(order by total_sales asc) as lowest_rank
from category_sales
)
select category_name,
	   round((total_sales/1000000.0)::numeric,2) as total_sales_million,
	   highest_rank,
	   lowest_rank
from category_rank
where highest_rank = 1 or
	  lowest_rank  = 1;

-- Business Insight:
-- Sales contribution varies significantly across product categories.
-- Low-performing categories may require additional business attention.


-- Which product generates the highest sales within each category?

with product_sales as(
select category_name,
	   product_name,
	   sum(sales) as total_sales
from dataco_table
group by category_name, product_name
),
sales_comparison as(
select category_name,
	   product_name,
	   total_sales,
	   rank() over(partition by category_name order by total_Sales desc) as sales_rank
from product_sales
)
select category_name,
	   product_name,
	   round((total_sales/1000000.0)::numeric,2) as total_sales_million,
	   sales_rank
from sales_comparison
where sales_rank = 1;

-- Business Insight:
-- Each category is led by a product that contributes the highest sales.
-- These products represent the strongest revenue drivers within their categories and should remain a key focus for business performance.

-- Which product category experienced the greatest year-over-year (YoY) sales decline?

with product_sales as(
select category_name,
	   order_year,
	   sum(sales) as total_sales
from dataco_table
group by category_name,order_year
),
sales_comparison as (
select category_name,
	   order_year,
	   total_sales,
	   lag(total_sales) over(partition by category_name order by order_year asc) as previous_year_sales
from product_sales
)
select category_name,
	   order_year,
	   round((total_sales/1000000.0)::numeric, 2)as total_sales_million,
	   round((previous_year_sales/1000000.0)::numeric,2)as previous_year_sales,
	   round(((previous_year_sales - total_sales)/1000000.0)::numeric,2) as sales_decline_million
from sales_comparison
where previous_year_sales is not null
order by sales_decline_million desc
limit 1;

-- Business Insight:
-- The listed categories experienced the largest decline in yearly sales.
-- These categories should be monitored for changing customer demand.


-- Which products generate the lowest or negative profit?

select product_name,
       round(sum(order_profit_per_order)::numeric,2) as total_profit
from dataco_table
group by product_name
having sum(order_profit_per_order) < 0
order by total_profit;

-- Business Insight:
-- The listed products generate little or negative profit.
-- These products should be reviewed to improve overall profitability.


-- Which product categories generate the lowest profit?

select category_name,
	   round(sum(order_profit_per_order)::numeric,2) as total_profit
from dataco_table
group by category_name
order by total_profit asc;

-- Business Insight:
-- The listed product categories contribute the least profit.
-- Improving profitability within these categories could increase overall business performance.


-- Which regions contribute the least profit?

select order_region,
	   round((sum(order_profit_per_order)/1000000.0)::numeric,2) as total_profit_millions
from dataco_table
group by order_region
order by total_profit_millions asc;

-- Business Insight:
-- The listed regions generate the lowest profit contribution.
-- Regional performance should be evaluated to identify improvement opportunities.


-- Which countries have the highest late delivery rate?

select order_country,
	   round(count(*) filter(where is_late_delivery = True)*100.0 / count(*)::numeric,2) as late_delivery_rate
from dataco_table
group by order_country
order by  late_delivery_rate desc;

-- Business Insight:
-- The listed countries have the highest percentage of late deliveries.
-- Delivery performance in these countries should be investigated to improve customer satisfaction.


-- Which shipping mode has the highest average delivery delay?

select shipping_mode,
	   round(avg(delivery_delay_days),2) as average_delivery_delay_days
from dataco_table
group by shipping_mode
order by average_delivery_delay_days desc;

-- Business Insight:
-- Second Class shipping has the highest average delivery delay.
-- This shipping mode may require operational improvements to reduce delivery delays.


-- Which customer segment experiences the highest average delivery delay?

select customer_segment,
	   round(avg(delivery_delay_days),2) as average_delivery_delay_days
from dataco_table
group by customer_segment
order by average_delivery_delay_days desc;

-- Business Insight:
-- The Home Office segment experiences the highest average delivery delay.
-- Improving delivery performance for this segment could enhance customer experience.


-- Which customer segment has the lowest average order value and purchases fewer products per order?

select customer_segment,
	   round(avg(order_item_total)::numeric,2) as average_order_value,
	   round(avg(order_item_quantity)::numeric,2) as average_products_per_order
from dataco_table
group by customer_segment
order by average_order_value asc;

-- Business Insight:
-- The Home Office segment has the lowest average order value and purchases fewer products per order.
-- This segment presents an opportunity to increase basket size and customer spending.


-- Which markets generate the lowest sales and profit?

select market,
	   round((sum(sales)/1000000.0)::numeric,2) as total_sales_million,
	   round((sum(order_profit_per_order)/1000000.0)::numeric,2) as total_profit_million
from dataco_table
group by market
order by total_sales_million,total_profit_million asc;

-- Business Insight:
-- The listed markets contribute the lowest sales and profit.
-- These markets should be reviewed to identify opportunities for growth.


-- Which countries generate the lowest sales and profit?

select order_country,
	   round(sum(sales)::numeric,2) as total_sales,
	   round(sum(order_profit_per_order)::numeric,2)as total_profit
from dataco_table
group by order_country
order by total_sales,total_profit asc;

-- Business Insight:
-- The listed markets contribute the lowest sales and profit.
-- These markets should be reviewed to identify opportunities for growth.


-- Which markets and countries have experienced the greatest YoY decline in sales?

with market_countries_sales as(
select market,
	   order_country,
	   order_year,
	   sum(sales) as total_sales
from dataco_table
group by market, order_country, order_year
),
sales_comparison as(
select market,
	   order_country,
	   order_year,
	   total_sales,
	   lag(total_sales) over(partition by market, order_country order by order_year) as previous_year_sales
from market_countries_sales
)
select market,
	   order_country,
	   order_year,
	   round((total_sales/1000000.0)::numeric,2) as total_sales_million,
	   round((previous_year_sales/1000000.0)::numeric,2) as previous_year_sales_million,
	   round(((previous_year_sales-total_sales)/1000000.0)::numeric,2) as sales_decline_million
from sales_comparison
where previous_year_sales is not null
order by sales_decline_million desc;

-- Business Insight:
-- The listed market-country combinations experienced the largest year-over-year sales decline.
-- These locations should be prioritized for further business analysis.
