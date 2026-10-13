**Superstore Sales & Profitability Analysis
Overview**

This project analyzes the Superstore dataset using SQL and Tableau to identify sales trends, profitability drivers, customer behavior, and operational opportunities.

**The project involved:**

Data cleaning and validation;
Star schema development;
Advanced SQL analysis;
Tableau dashboard development;
Profitability and discount analysis


**Business Problem**

Although Superstore generates strong sales growth, profitability varies significantly across categories, products, and geographic regions. The objective of this project was to identify the key drivers of profitability and determine whether discounting, product mix, or operational factors were negatively impacting margins.

**Data Model**

A star schema was developed from the original dataset.

**Fact Table**

**fact_sales**:
Order ID;
Order Date;
Ship Date;
Customer Key;
Product Key;
Location Key;
Sales;
Profit;
Quantity;
Discount


**Dimension Tables**

**dim_customer**:
Customer ID;
Customer Name;
Segment

**dim_product**:
Product Key;
Product ID;
Product Name;
Category;
Sub Category

**dim_location:**
Location Key;
Region;
State;
City;
Postal Code

**SQL Techniques Applied**:
Joins;
Views;
CASE Statements;
Window Functions;
RANK();
Aggregations;
Star Schema Design;
Data Cleaning

**Example analyses included:**

Product rankings;
Customer segmentation;
Regional performance;
Sub-category profitability;
Discount impact analysis

**Key recommendations:**
1. Reduce discounting during seasonal peak periods where demand is already strong.
2. Review pricing and promotional strategies for Machines and Furniture Tables.
3. Investigate profitability challenges in Texas and other high-sales, low-profit states.
4. Increase focus on high-margin Technology and consumable Office Supply products.
5. Expand marketing initiatives targeting Consumer customers during Q3 and Q4.

**Detailed analysis:**

**Office Supplies Analysis**

Office Supplies consumable items exhibit the lowest discount rates and sales volumes, yet they achieve the highest profit margins. In contrast, larger asset-based products such as Storage and Binders generate higher sales volumes and receive larger discounts, but produce lower profit margins.
Sales within the Office Supplies category tend to peak in March. Increasing marketing efforts or promotional campaigns during this period may further boost sales. In September 2011, March 2012 and December 2013, profit growth closely matched the increase in sales, suggesting that the strategies implemented during that period were effective and may be worth replicating.

Binders recorded exceptionally strong sales during these three periods despite relatively low discount levels, while maintaining impressive profit margins of 39%, 46%, and 42%, respectively. Across all four years, Binders consistently achieved high sales volumes while operating with elevated discount levels and still delivering a respectable average profit margin of 15%.

The cumulative analysis indicates that Appliances and Storage maintain average discount levels while generating strong sales and healthy profit margins. This suggests that high discount rates may not be necessary to drive profitability and that opportunities may exist to reduce discounting without significantly impacting sales performance.
Storage and Appliances currently receive similar discount levels; however, Appliances generate lower revenue while maintaining higher profit margins. Storage products are generally bulkier items that sell well but often produce lower margins due to increased shipping and operating costs.

Sales consistently increase during Q3 and Q4; however, a noticeable decline occurs in October each year, which warrants further investigation. Binders experienced negative profit margins in three of the observed fourth-quarter periods, with 2012 being the only exception.
The cause of these margin declines remains unclear, as the distribution of shipping modes does not appear to have a strong relationship with profitability. Similarly, average shipping days remained relatively stable throughout the analysis period. When comparing the quarter with the highest margin to the quarter with the lowest margin, average shipping times were nearly identical.

The primary difference observed was that the lower-margin quarter recorded a higher proportion of Second Class shipments and a slightly lower share of non-standard shipping methods. While this may indicate a potential relationship between shipping mix and profitability, the evidence is not strong enough to draw a definitive conclusion and warrants further investigation.

Storage products display a different pattern. Higher profit margins tend to occur when the proportion of non-standard shipping is higher and average Second Class shipping times are lower. While the relationship does not prove causation, the findings suggest that improved shipping efficiency may contribute to stronger margins by reducing logistics-related costs. This relationship warrants further investigation, particularly given the importance of Second-Class shipping within the Storage sub-category.

Overall, the Office Supplies category exhibits a clear distinction between consumable and asset-based products. Consumable items generate high profit margins despite relatively low sales volumes, while larger assets such as Storage, Binders, Appliances, and Supplies generate stronger sales but operate with significantly lower margins.

The primary profitability challenge within Office Supplies appears to stem from larger asset-based products, where higher discount rates and logistics-related costs reduce profit margins. Conversely, consumable items deliver lower revenue but substantially higher profitability, making them an important contributor to overall category performance.

**Furniture Analysis**

Furniture sales consistently peak in September and December, a pattern that is also observed across the other product categories. However, unlike the other categories, Furniture profits remain relatively flat during these periods despite the increase in sales. When discount rates exceed 15%, profits typically decline and often become negative. 

Average discount rates during these peak sales periods range from 12.32% to 17.63%, while sales consistently remain between $20,000 and $30,000. This suggests that a portion of the discounting may be unnecessary, as demand appears to increase naturally during these months. Notably, the second-highest profit peak occurred in December 2013, when the average discount rate was only 12.32%.
Outside of the September and December peak periods, the highest profit was recorded in March 2012, when the average discount rate was just 10.4%. This further supports the view that discounting may be eroding profitability and that a more conservative promotional strategy could improve margins without significantly impacting sales.

Overall, Furniture generates lower profit margins than the other two categories.

Within the category, Chairs generate the highest sales and achieve the second-highest profit margin. Furnishings produce the highest margins while maintaining a relatively moderate average discount rate of 9.5%. Conversely, Chairs, Bookcases, and Tables generally receive higher discounts, which places pressure on profitability.

Tables deliver strong sales performance but record the lowest profit margins within the category. This is likely attributable to their high average discount rate of 21.35%, suggesting that aggressive discounting may be eroding profitability.

**Technology Analysis**

Technology delivers strong sales performance and healthy profit margins overall. The primary exception is the Machines sub-category, which records a profit margin of just 2%. Machines also have the highest average discount rate across all sub-categories at 24.71%, generate strong sales performance while ranking sixth overall by sales. This suggests that reducing discount levels may present an opportunity to improve profitability without significantly impacting demand.

Compared to the other categories, Technology appears to be the most profitable. While sales follow a relatively stable trend over time, profits occasionally rise significantly higher than those of Furniture and Office Supplies, indicating stronger margins and more efficient conversion of revenue into profit.

With the exception of Machines, the Technology category demonstrates consistently strong performance, characterized by both high sales and healthy profit margins. This indicates that the category's pricing and discount strategies are generally effective and that profitability concerns are largely concentrated within the Machines sub-category.

**Sales by Segment**

Home Office exhibits the flattest sales trend over the analysis period, while both Consumer and Corporate segments demonstrate consistent year-over-year growth. Among the three segments, the Consumer segment shows the strongest growth trajectory, indicating strong customer demand and presenting the greatest opportunity for future revenue expansion.

Sales across all three segments follow a similar seasonal pattern, increasing steadily throughout the year and accelerating during the third and fourth quarters. This suggests that demand is influenced by seasonal factors, with the strongest sales performance occurring in the latter half of the year

**Sales by State**

Five of the top ten states by sales are not profitable, highlighting a disconnect between revenue generation and profitability.

Texas generates the third-highest sales revenue but records the second-lowest profit margin among the top-performing states. This suggests that high sales volumes may be offset by factors such as heavy discounting, higher operating costs, or an unfavorable product mix.

In contrast, California and New York achieve the strongest sales performance while maintaining healthy profit margins that exceed the overall average profit margin. This indicates that these states are not only effective at generating revenue but are also able to convert a larger proportion of sales into profit.

**Top-Selling Products Analysis**

Five of the top ten best-selling products belong to the Office Supplies category, with two of these products generating negative profit margins. This highlights that strong sales performance does not necessarily translate into profitability.

Among the top-selling products are two Copiers from the Technology category, which maintain strong profit margins of 40.9% and 37.07%, demonstrating the category's ability to convert sales into profit effectively.

The top-selling products also include two Machines from the Technology category. However, their profitability varies significantly, with one product generating a negative profit margin while the other achieves a margin of 22%. This inconsistency highlights ongoing profitability challenges within the Machines sub-category and suggests that pricing and discounting strategies may not be effectively supporting margins across all products
