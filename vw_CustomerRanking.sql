USE [Superstore]
GO

/****** Object:  View [dbo].[vw_CustomerRankings]    Script Date: 2026/10/03 20:58:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_CustomerRankings] AS 
WITH customer_sales AS 
(
SELECT 
fs.Customer_ID,
c.Customer_Name,
SUM(fs.sales) AS Revenue

FROM fact_sales fs
INNER JOIN dimCustomer c
ON fs.Customer_ID = c.Customer_ID
GROUP BY
fs.Customer_ID,
c.Customer_Name
)
SELECT 
Customer_Name,
Revenue,
RANK() OVER (ORDER BY Revenue DESC) AS CustomerRank
FROM customer_sales
GO


