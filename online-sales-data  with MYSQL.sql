create database `online sales data`;
use `online sales data`;

--- to know all the columns of the table 
select*from `online sales data`;

--- to know all the type in the data 
describe `online sales data`;

--- writing  MYSQL Query for all the possible kpi to enhance our business decesion

--- totalrevenue
create view total_revenue as
select sum(`total revenue`) as total_revenue 
from `online sales data`;

--- total unit sold
create view `total unit sold` as
select sum(`units sold`) as total_unit_sold 
from `online sales data`;

--- average unit sold 
create view `average unit sold` as
select avg(`units sold`) as `avg unit sold`
 from `online sales data`;

--- total revenue by regions
create view `total revenue by regions` as
select region, sum(`total revenue`) 
as `total revenue by region` 
from `online sales data` 
group by region 
order by region desc; 

-- top selling product
create view `top selling product` as
select `product name`, sum(`total revenue`) as `top selling product`
from `online sales data`
group by `product name`
order by `product name` desc;

--- sales by product cartegory
create view `sales by product category`as
select `product category`, sum(`total revenue`) `as sales by product category`
from `online sales data`
group by `product category`
order by `product category`desc;

--- Payment Method Distribution
create view `payment method distribution` as
select `payment method`, count(*) as `payment method distributuion`
from `online sales data`
group by `payment method`;

--- daily sales trends
create view`daily sales trend` as 
select date, sum(`total revenue`) as `daily sales trends`
from `online sales data`
group by date
order by date ;

SELECT `transaction ID`, COUNT(*) AS Purchase_Count 
FROM `online sales data`
 GROUP BY `transaction ID`
 ORDER BY Purchase_Count DESC;
 
 --- Revenue Growth Rate (assuming data for multiple months)
 create view `revenue growth rate` as
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month, 
    SUM(`Total Revenue`) AS Monthly_Revenue 
FROM `online sales data` 
GROUP BY Month 
ORDER BY Month;


select* from `online sales data`;