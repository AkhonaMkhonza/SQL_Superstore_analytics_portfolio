USE [Superstore]
GO

/****** Object:  View [dbo].[vw_segment_performance]    Script Date: 2026/10/03 21:03:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_segment_performance] AS
SELECT
c.Segment,
COUNT(DISTINCT c.Customer_ID) AS CustomerCount,
COUNT(DISTINCT fs.Order_ID) AS OrderCount,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,
SUM(fs.Quantity) AS TotalQuantity,
AVG(fs.Sales) AS AvgSalesperTransaction

FROM fact_sales fs
INNER JOIN dimCustomer c
ON fs.Customer_ID = c.Customer_ID

GROUP BY c.Segment
GO


