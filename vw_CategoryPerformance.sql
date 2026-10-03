USE [Superstore]
GO

/****** Object:  View [dbo].[vw_CategoryPerformance]    Script Date: 2026/10/03 20:53:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER VIEW [dbo].[vw_CategoryPerformance] AS
SELECT 
p.Category,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,
SUM(Quantity) AS TotalQuantity,
ROUND(
(SUM(fs.Profit)/NULLIF(SUM(fs.Sales),0)) * 100,
2 ) AS ProfitMargin

FROM fact_sales fs
INNER JOIN DimProduct p
ON fs.Product_ID = p.Product_ID
GROUP BY p.Category
GO


