Online Marketplace Sales Analytics

MySQL | Business Intelligence | Revenue & Growth Analysis

 Executive Summary

This project analyzes transactional data from a popular online marketplace to uncover revenue drivers, customer purchasing behavior, regional performance, and category trends.

Using MySQL, I built structured queries and analytical views to transform raw sales data into measurable KPIs that support pricing strategy, inventory planning, regional expansion, and revenue optimization decisions.

The analysis demonstrates how structured SQL analytics can guide data-driven growth in e-commerce environments.

 Business Objective

E-commerce marketplaces generate thousands of transactions daily. Without structured analysis, it becomes difficult to:

Identify top-performing products

Monitor revenue trends

Optimize pricing and inventory

Understand regional demand patterns

Improve checkout conversion rates

This project builds a SQL-based KPI framework to provide actionable business intelligence.

📊 Core KPIs Developed
1️⃣ Total Revenue
CREATE VIEW total_revenue AS
SELECT SUM(`total revenue`) AS total_revenue
FROM `online sales data`;

Total Revenue: $80,567.85

Business Insight:

Total revenue reflects overall marketplace performance and financial health. Tracking revenue trends enables leadership to detect growth momentum or early signs of decline.

Strategic Impact:

Supports pricing optimization

Identifies high-value revenue drivers

Enables financial forecasting

2️⃣ Total Units Sold
CREATE VIEW total_unit_sold AS
SELECT SUM(`units sold`) AS total_unit_sold
FROM `online sales data`;

Total Units Sold: 518

Insight:

Indicates overall product demand and sales volume.

Business Decisions:

Optimize inventory for high-demand products

Reduce slow-moving stock

Negotiate supplier pricing using volume leverage

3️⃣ Average Units per Transaction
CREATE VIEW average_unit_sold AS
SELECT AVG(`units sold`) AS avg_unit_sold
FROM `online sales data`;

Average Units per Transaction: 2.16

Insight:

Customers purchase approximately 2 items per transaction.

Strategic Recommendations:

Introduce product bundles

Offer volume discounts

Increase cross-selling opportunities

4️⃣ Revenue by Region
CREATE VIEW total_revenue_by_regions AS
SELECT region,
       SUM(`total revenue`) AS total_revenue_by_region
FROM `online sales data`
GROUP BY region;
Revenue Distribution:

North America: $36,844.34 (45%)

Europe: $21,268.06 (25.5%)

Asia: $22,455.45 (28.5%)

Key Insight:

North America dominates revenue generation, but Asia and Europe present growth opportunities.

Strategic Actions:

Expand marketing in Asia

Improve retention in Europe

Diversify revenue dependency from North America

5️⃣ Top-Selling Products
CREATE VIEW top_selling_product AS
SELECT `product name`,
       SUM(`total revenue`) AS product_revenue
FROM `online sales data`
GROUP BY `product name`
ORDER BY product_revenue DESC
LIMIT 20;
Insight:

High-ticket electronics and branded products significantly drive revenue.

Business Implications:

Focus marketing on premium electronics

Expand high-margin product categories

Implement accessory bundling strategies

6️⃣ Sales by Product Category
CREATE VIEW sales_by_product_category AS
SELECT `product category`,
       SUM(`total revenue`) AS category_sales
FROM `online sales data`
GROUP BY `product category`;
Revenue by Category:

Electronics: $34,982.41

Home Appliances: $18,646.16

Sports: $14,326.52

Clothing: $8,128.93

Beauty: $2,621.90

Books: $1,861.93

Key Insight:

Electronics contributes the highest share of revenue, while Books and Beauty underperform.

Strategic Recommendations:

Expand electronics inventory

Improve marketing for clothing & beauty

Introduce promotional campaigns for books

7️⃣ Payment Method Distribution
CREATE VIEW payment_method_distribution AS
SELECT `payment method`,
       COUNT(*) AS transaction_count
FROM `online sales data`
GROUP BY `payment method`;
Payment Usage:

Credit Card: 120

PayPal: 80

Debit Card: 40

Insight:

Credit cards dominate checkout behavior.

Business Recommendations:

Improve debit card incentives

Integrate additional payment options (Apple Pay, BNPL)

Simplify checkout flow

8️⃣ Daily Revenue Trends
CREATE VIEW daily_sales_trend AS
SELECT date,
       SUM(`total revenue`) AS daily_sales
FROM `online sales data`
GROUP BY date;
Insight:

Revenue volatility observed across days, with significant peaks driven by high-ticket purchases.

Strategic Actions:

Introduce flash sales on low-performing days

Replicate promotional patterns from high-revenue days

Improve marketing timing strategy

9️⃣ Monthly Revenue Trend
CREATE VIEW revenue_growth_rate AS
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month,
       SUM(`Total Revenue`) AS Monthly_Revenue
FROM `online sales data`
GROUP BY Month
ORDER BY Month;
Trend Analysis:

Revenue declined from January ($14,548.32) to July ($6,797.08) before slight recovery in August.

Key Insight:

Downward revenue trend suggests seasonality or reduced customer acquisition.

Strategic Recommendations:

Improve customer
