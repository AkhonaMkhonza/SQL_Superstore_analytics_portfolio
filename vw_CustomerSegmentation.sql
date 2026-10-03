USE [Superstore]
GO

/****** Object:  View [dbo].[vw_customer_segmentation]    Script Date: 2026/10/03 20:56:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_customer_segmentation] AS
WITH customer_sales AS
(
SELECT 
c.Customer_ID,
c.Customer_Name,
c.Segment,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,
COUNT(DISTINCT fs.Order_ID) AS TotalOrders

FROM fact_sales fs
INNER JOIN dimCustomer c
ON fs.Customer_ID = c.Customer_ID 
GROUP BY 
c.Customer_ID,
c.Customer_Name,
c.Segment
)

SELECT *,
CASE 
WHEN TotalSales >= 10000 THEN 'High Value'
WHEN TotalSales >= 5000 THEN 'Medium Value'
ELSE 'Low Value'
END AS CustomerValueSegment
FROM customer_sales 
GO


