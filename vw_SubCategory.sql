USE [Superstore]
GO

/****** Object:  View [dbo].[vw_SubCategoryPerformance]    Script Date: 2026/10/03 21:04:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_SubCategoryPerformance] AS
SELECT 
p.Category,
p.Sub_Category,
COUNT(*) AS TotalTransactions,
SUM(CASE WHEN fs.Profit < 0 THEN 1 ELSE 0 END) AS LossMakingTransactions,
AVG(fs.Discount) AS AvgDiscount,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,

ROUND(
SUM(fs.Profit) * 100.0 /
NULLIF (SUM(fs.Sales),0),2)
AS ProfitMargin,

RANK() OVER (
ORDER BY 
ROUND( SUM(fs.Profit) * 100.0 /
NULLIF(SUM(fs.Sales),0),2) ASC )
AS MarginRank

FROM fact_sales fs
INNER JOIN dimProduct p
ON fs.Product_ID = p.Product_ID
GROUP BY 
p.Category,
p.Sub_Category

GO


