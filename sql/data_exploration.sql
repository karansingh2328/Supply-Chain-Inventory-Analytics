select * from dataco_table
limit 10;

alter table dataco_feature_engineered
rename to dataco_table;

select count (*) as total_records
from dataco_table;

select count(distinct order_id) as unique_orders
from dataco_table;

select count(distinct customer_id) as unique_customers
from dataco_table;

select count(distinct product_name) as unique_products
from dataco_table;

select min (order_date_dateorders) as start_date,
	   max (order_date_dateorders) as end_date
from dataco_table;

select order_id ,
count(*) as duplicated_count
from dataco_table
group by order_id
having count (*)>1;

select count(*) as negative_orders
from dataco_table
where sales < 0 or order_profit_per_order <=0;

select count(distinct customer_segment) total_customer_segment
from dataco_table;

select count(distinct category_name) total_customer_name
from dataco_table;

select category_name,
count (distinct product_name) as total_product_name
from dataco_table
group by category_name;

select count(distinct market) as total_markets
from dataco_table;

select count(distinct order_country) as total_order_countries
from dataco_table;

select distinct order_region
from dataco_table
order by order_region;

select distinct order_status
from dataco_table
order by order_status;

select distinct shipping_mode
from dataco_table
order by shipping_mode;

select round(count(*)filter(where delivery_delay_days = 1)*100.0/count(*),2) as late_delivery_percentage
from dataco_table;

select min (sales) as minimum_sales,
	   max(sales) as maximum_sales,
	   round(avg(sales)::numeric,2) as average_sales
from dataco_table;

select min(order_profit_per_order) as minimum_profit,
	   max(order_profit_per_order) as maximum_profit,
	   round(avg(order_profit_per_order)::numeric,2)as average_profit
from dataco_table;

select min(discount_amount) as minimum_discount,
	   max(discount_amount) as maximum_discount,
	   round(avg(discount_amount)::numeric,2) as average_discount
from dataco_table;