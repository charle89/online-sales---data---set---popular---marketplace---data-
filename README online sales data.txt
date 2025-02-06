# online sales - data - set - popular - marketplace - data 
 
Unlocking Insights from Online Sales Data in a Popular Marketplace using MYSQL queries to 
uncover key insight
-----------------------------------------------------------------------------------------
In the fast-paced world of e-commerce, data is the key to success. By analyzing online sales data, businesses can uncover powerful insights that drive growth. A popular marketplace generates thousands of transactions daily, each carrying valuable information about customer preferences, regional demand, and purchasing behavior.  

By leveraging this data, businesses can **identify best-selling products**, optimize pricing strategies, and enhance customer experience. Tracking revenue trends helps in forecasting demand, while sales performance by region informs targeted marketing efforts. Payment method analysis ensures a smooth checkout experience, reducing abandoned carts and boosting conversions.  

In the end, data-driven decisions separate thriving marketplaces from the rest. The ability to adapt, optimize, and innovate based on sales data transforms businesses into industry leaders.

The key kpi's are as follows 

1)TOTAL REVENUE
--- totalrevenue
create view total_revenue as
select sum(`total revenue`) as total_revenue 
from `online sales data`;
	total_revenue
	80567.85000000008‎
Total revenue tells the story of a business’s financial strength. A sudden rise signals growing demand, while a drop warns of potential issues. Analyzing revenue by product, region, and payment method helps identify top performers and areas needing improvement. With these insights, the business can refine pricing, optimize inventory, and focus marketing efforts on high-revenue drivers, ensuring sustained growth and profitability.

2)total unit sold
  
create view `total unit sold` as
select sum(`units sold`) as total_unit_sold 
from `online sales data`;  

	total_unit_sold
	518

Total units sold (518) provides a clear measure of product demand. High sales volumes indicate popular products, while low-performing items may need marketing boosts or pricing adjustments.  

Key Business Decisions: 
i. Optimize Inventory Management: Ensure sufficient stock for high-demand items while reducing slow-moving inventory.  
ii. Enhance Sales Strategy: Focus promotions on bestsellers to maximize revenue.  
iii. Improve Supplier Negotiations: Leverage volume sales data to negotiate better bulk pricing.  
iv. Refine Regional Strategy: Identify regions with high sales to allocate resources efficiently.  

3)average unit sold 
create view `average unit sold` as
select avg(`units sold`) as `avg unit sold`
 from `online sales data 	
                                 avg unit sold
	                         2.1583
Business Decision Based on Average Units Sold KPI 

The average units sold (2.16 per transaction) provides insights into customer purchasing behavior and product performance.  

Key Business Decisions: 
i. Bundle Strategy: If the average is low, introduce product bundles to increase per-transaction sales.  
ii. Pricing Optimization: Adjust pricing to encourage bulk purchases without reducing profit margins.  
iii. Marketing Strategy: Target promotions toward products with lower-than-average sales to boost volume.  
iv. Inventory Planning: Align stock levels with sales trends to prevent shortages or overstocking.  

This KPI helps refine sales tactics, improve inventory efficiency, and maximize revenue per customer.


4)KPI Analysis: Total Revenue by Region

create view `total revenue by regions` as
select region, sum(`total revenue`) 
as `total revenue by region` 
from `online sales data` 
group by region 
order by region desc; 

The total revenue across regions is broken down as follows:

- North America:$36,844.34  
- Europe: $21,268.06  
- Asia: $22,455.45

Key Insights:
- North America generates the highest revenue, contributing approximately 45% of the total revenue.
- Europe follows with the second-highest revenue contribution at 25.5%.
- Asia represents 28.5% of the total revenue, making it a strong contender but still behind North America.

Key Areas for Improvement:
i. Revenue Optimization in Asia: Despite a significant contribution, Asia's revenue lags behind both North America and Europe. Strategies to increase market penetration, customer acquisition, or improve sales strategies should be explored.
ii. Europe's Growth Potential: While Europe shows a solid contribution, there may be untapped opportunities. Market expansion, customer retention programs, or tailored products/services could boost revenue.
iii. Diversifying Revenue Streams: North America's dominance suggests a need to ensure it is not over-reliant on a few major clients. Identifying new revenue streams or diversifying the client base could mitigate risks.
iv. Cross-regional Strategy Alignment: Ensuring consistency in strategies across regions could help balance revenue growth, especially in Europe and Asia.

Conclusion: While North America leads, all regions show growth potential. Targeted strategies for Asia and Europe could enhance global revenue performance.


5)top 20 selling product
create view `top selling product` as
select `product name`, sum(`total revenue`) as `top selling product`
from `online sales data`
group by `product name`
order by `product name` desc limit 20;


product name                                         top selling product  
------------------- ----------------------------------------------------                                  
Zara Summer Dress	                                 179.97
Youth to the People Superfood Antioxidant Cleanser	 36
Yeti Tundra Haul Portable Wheeled Cooler	         399.99
YETI Tundra 65 Cooler	                                 349.99
YETI Tundra 45 Cooler	                                 299.99
Yeti Roadie 24 Cooler	                                 199.99
Yeti Rambler Tumbler	                                 239.94
Yeti Rambler Bottle	                                 149.97
Yeti Rambler 20 oz Tumbler	                         59.98
YETI Hopper Flip Portable Cooler	                 249.99
Wilson Evolution Basketball	                         149.95
Where the Crawdads Sing by Delia Owens	                 75.96
Vitamix Explorian Blender	                         349.99
Uniqlo Ultra Light Down Jacket	                         239.97
Uniqlo Airism Seamless Boxer Briefs	                 39.6
Uniqlo Airism Mesh Boxer Briefs	                         59.6
Under Armour Tech 2.0 T-Shirt	                         99.96
Under Armour HOVR Sonic 4 Shoes	                         219.98
Under Armour HeatGear T-Shirt	                         149.95
TRX All-in-One Suspension Training System	         169.95


This Key Performance Indicator (KPI) represents the total revenue generated across a broad range of products, from clothing and accessories to electronics, books, and home appliances. The products listed reflect a diverse assortment of categories, showing varying price points and consumer preferences. The KPI helps track revenue performance and provides a clear snapshot of product demand and market trends.

### Total Revenue Breakdown by Product:
- High-Value Items: Items like the Sony WH-1000XM4 Headphones ($1049.97), MacBook Pro 16-inch ($2499.99), and Canon EOS R5 Camera ($3899.99) contribute significantly to total revenue.
- Mid-Range Items: Products such as YETI Coolers ($199.99 to $399.99), Instant Pot Duo Nova ($99.95), and Nike Air Force 1 Sneakers ($270) indicate strong consumer interest in quality but affordable goods.
- Low-Value Items: Low-cost items, like The Ordinary Niacinamide Serum ($6.50) and Neutrogena Skincare Set($89.99), show steady demand in the budget segment.

Key Areas for Improvement:
1. Diversification of Price Points: Ensure product offerings span across more price ranges to cater to both premium and budget-conscious customers.
2. Product Variety & Market Demand: Increase stock of high-demand products such as electronics and home appliances to meet market demand.
3. Cross-Selling & Bundling: Focus on bundling complementary items (e.g., electronics with accessories or skincare kits) to increase average transaction value.
4. Targeting Underperforming Categories: Review underperforming categories such as clothing and books, considering promotions or targeted campaigns to boost sales.
5. Regional Demand Analysis: Track regional revenue performance to tailor product availability according to regional preferences.
6. Improved Customer Engagement: Strengthen customer loyalty programs to increase repeat purchases and long-term value. 
7. Seasonal Trends: Adjust inventory based on seasonal demand fluctuations, ensuring popular seasonal items (e.g., winter apparel, summer gadgets) are stocked in advance.

By focusing on these key areas, revenue growth can be optimized, and underperforming segments can be strengthened for more balanced overall sales performance.

6) sales by product cartegory
create view `sales by product category`as
select `product category`, sum(`total revenue`) `as sales by product category`
from `online sales data`
group by `product category`
order by `product category`desc;
      
     product category          sales product by category
---------------------------------------------------------
    
    Sports	                14326.519999999997
    Home Appliances	        18646.16
    Electronics	                34982.41000000001
    Clothing	                8128.930000000001
    Books	                1861.9300000000007
    Beauty Products	        2621.8999999999996

KPI Analysis: Sales Distribution by Category

    
The sales distribution across categories shows significant variance. The top-performing category is Electronics, generating the highest sales at 34,982.41, followed by Home Appliances with 18,646.16, and Sport at 14,326.52. Categories such as Clothing and Beauty Products* are considerably lower, contributing 8,128.93 and 2,621.90, respectively. Books contributes the least with 1,861.93 in sales.

Key Insights:

1. Electronics Dominates Sales: Electronics accounts for the largest share of sales, making up the majority of total revenue.  
2. Home Appliances Perform Well: Home Appliances is the second-largest category, maintaining a strong sales figure.
3. Underperformance in Clothing and Books: Clothing and Books underperform relative to their potential market demand, showing lower sales numbers compared to Electronics and Home Appliances.
4. Beauty Products Showing Weak Sales: Beauty Products have the lowest sales figure after Books, indicating a need for stronger marketing or a reevaluation of the product mix.

 Key Areas for Improvement:

1. Enhance Marketing Efforts for Clothing & Beauty Products: Invest in targeted marketing campaigns, influencer collaborations, or seasonal promotions to boost sales.
2. Increase Product Variety or Bundles in Underperforming Categories: Explore expanding the product range or introducing bundle offers to create more value.
3. Optimize Pricing Strategies: Competitive pricing adjustments in Clothing and Beauty Products could attract more customers, particularly in a competitive market.
4. Improve Visibility for Books: Reassess the visibility and placement of books in your store or website to enhance their discoverability, potentially through dedicated categories or promotions.
5. Cross-Promotion Between Categories: Implement cross-category promotions (e.g., bundling electronics with home appliances or clothing items) to increase sales volume across lower-performing categories.

Conclusion:
Focusing on strategic improvements in marketing, product offerings, and pricing across the lower-performing categories (Clothing, Books, Beauty Products) will balance sales distribution and drive overall growth.

7)Payment Method Distribution
create view `payment method distribution` as
select `payment method`, count(*) as `payment method distributuion`
from `online sales data`
group by `payment method`;

 KPI Analysis: Payment Distribution

The payment distribution reveals that Credit Card is the most preferred payment method, accounting for 120 transactions. PayPal follows with 80 transactions, while *Debit Card* lags significantly behind, with only 40 transactions. This data provides insights into customer preferences and potential gaps in payment method offerings.

 Key Insights:

1. Dominance of Credit Card Payments: Credit cards are the most favored payment method, suggesting that customers prefer this option for ease and security.
2. Moderate Adoption of PayPal: PayPal accounts for a moderate share of transactions, indicating a segment of customers who prefer e-wallets or online payment systems.
3. Low Usage of Debit Cards: Debit card usage is notably low, which may indicate limited customer adoption or barriers related to security, transaction fees, or other preferences.

 Key Areas for Improvement:

1. Encourage Debit Card Usage: Implement promotions, incentives, or easier checkout processes to make debit card payments more attractive. Consider lowering transaction fees or offering debit card-exclusive discounts.
2. Enhance PayPal Integration: If PayPal transactions are growing but underperforming relative to expectations, consider integrating more PayPal-specific features (e.g., installment payments, loyalty programs) to boost usage.
3. Offer New Payment Options: Introduce additional payment methods such as digital wallets (Apple Pay, Google Pay) or buy-now-pay-later options to appeal to different customer preferences and diversify payment acceptance.
4. Improve Customer Education on Payment Methods: Provide clear information on the benefits of using different payment methods, especially for debit card users, through email campaigns, website banners, or customer support.  
5. Simplify Checkout Process: Ensure the checkout process is streamlined and does not discourage debit card users from completing transactions, such as by addressing potential security concerns or ease of use.

 Conclusion:  
Focusing on strategies to enhance debit card usage and improving the integration of alternative payment methods like PayPal can increase transaction volume and improve the customer payment experience.


8)--- daily sales trends
create view`daily sales trend` as 
select date, sum(`total revenue`) as `daily sales trends`
from `online sales data`
group by date
order by date limit 20 ;

          Date                              Daily sales trend 
              2024-01-01	1999.98
              2024-01-02	499.99
              2024-01-03	209.97
              2024-01-04	63.96
              2024-01-05	89.99
              2024-01-06	149.95
              2024-01-07	2499.99
              2024-01-08	1199.98
              2024-01-09	539.94
              2024-01-10	51.98
              2024-01-11	129.99
              2024-01-12	599.97
              2024-01-13	1499.98
              2024-01-14	189.99
              2024-01-15	499.98
              2024-01-16	107.97
              2024-01-17	399.99
              2024-01-18	479.96
              2024-01-19	999.98
              2024-01-20	99.99 

     KPI Analysis: Daily Sales Revenue  

  
The dataset represents daily sales revenue from January 1 to January 20, 2024. Revenue fluctuates significantly, with the highest sales recorded on January 7 ($2,499.99) and January 1 ($1,999.98), while the lowest occurs on January 10 ($51.98). Understanding these variations helps in identifying trends, peak sales periods, and areas for improvement.  

    Key Insights:  

1. Revenue Volatility: Sales show substantial fluctuations, suggesting that demand varies across days. Identifying patterns (e.g., weekends vs. weekdays, promotions, or seasonal effects) is crucial.  
2. High-Value Transactions Drive Peaks: Days with higher revenue likely result from bulk purchases or high-ticket items, as seen on January 1, 7, and 8.  
3. Low Revenue Days: Several days (e.g., January 10, 16, 20) show significantly lower sales, indicating potential demand gaps or weaker marketing efforts.  
4. Mid-Tier Sales Consistency: Revenue between $400 and $600 occurs on multiple days, suggesting a stable segment of repeatable sales.  

### Key Areas for Improvement:  

1. Increase Sales on Low-Performing Days**: Analyze why sales drop on certain days and implement targeted promotions or incentives to drive traffic.  
2. Leverage High-Sales Trends: Identify common factors behind peak sales days (marketing campaigns, product launches, discounts) and replicate strategies for other periods.  
3. Introduce Demand-Smoothing Tactics: Implement limited-time daily deals, flash sales, or dynamic pricing to balance revenue distribution.  
4. Optimize Product Offerings: Assess whether specific products contribute disproportionately to revenue and expand their availability or promote related items.  
5. Refine Marketing and Promotions: Strengthen targeted advertising, email campaigns, and remarketing efforts to improve sales consistency across all days.  

         Conclusion:  
Addressing revenue volatility and optimizing marketing strategies can enhance overall sales performance. Increasing engagement on low-sales days and capitalizing on peak sales trends will improve revenue consistency and business growth. 


9)   Revenue growth rate

create view `revenue growth rate` as
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month, 
    SUM(`Total Revenue`) AS Monthly_Revenue 
FROM `online sales data` 
GROUP BY Month 
ORDER BY Month;

         month                       monthly revenue growth
         2024-01	14548.319999999992
         2024-02	10803.369999999999
         2024-03	12849.239999999996
         2024-04	12451.689999999995
         2024-05	8455.49
         2024-06	7384.549999999998
         2024-07	6797.08
         2024-08	7278.109999999999 


       KPI Analysis: Revenue Growth Rate 
 
The dataset represents monthly revenue from January to August 2024. Revenue peaked in January ($14,548.32) and exhibited a downward trend, reaching its lowest point in July ($6,797.08) before a slight recovery in August ($7,278.11). Analyzing the growth rate and identifying factors influencing revenue fluctuations is critical for strategic improvements.  

     Key Insights:  

1. Overall Declining Trend: Revenue decreased significantly from January to July, with a 53% drop. This suggests potential seasonality, reduced customer demand, or ineffective sales strategies.  
2. Sharp Decline from May Onward: Revenue fell from $8,455.49 in May to $6,797.08 in July, marking a critical low point. External factors such as market saturation, competition, or reduced marketing efforts could be influencing this decline.  
3. Slight Recovery in August: The increase from July to August ($481.03) may indicate the beginning of a reversal. Identifying the cause of this growth is crucial to sustaining an upward trajectory.  
4. Revenue Volatility: The fluctuations suggest inconsistent sales performance, highlighting the need for better demand forecasting and promotional planning.  

Key Areas for Improvement: 

1. Boost Sales Strategies:Introduce targeted marketing campaigns, promotional discounts, and loyalty programs to drive revenue growth.  
2. Address Seasonal Trends: Identify external factors influencing demand shifts and adjust inventory, pricing, and marketing efforts accordingly.  
3. Improve Customer Retention: Strengthen engagement through personalized recommendations, remarketing, and enhanced customer service.  
4. Expand Sales Channels: Leverage multiple sales channels, including e-commerce, partnerships, and offline promotions, to reduce revenue dependency on specific periods.  
5. Optimize Pricing Models: Implement data-driven pricing strategies, such as dynamic pricing or bundling, to maximize revenue potential.  

          Conclusion:
To reverse the revenue decline and ensure sustained growth, strategic improvements in marketing, sales optimization, and customer retention are essential. A data-driven approach to demand forecasting and pricing adjustments will enhance revenue stability.