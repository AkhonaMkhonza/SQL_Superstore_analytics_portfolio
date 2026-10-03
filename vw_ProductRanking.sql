USE [Superstore]
GO

/****** Object:  View [dbo].[vw_product_rankings]    Script Date: 2026/10/03 20:59:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_product_rankings] AS 
SELECT 
p.Product_Name,
p.Category,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,
Rank() OVER (
ORDER BY SUM(fs.Sales) DESC
) ProductRanks

FROM fact_sales fs
INNER JOIN dimProduct p
ON fs.Product_ID = p.Product_ID
GROUP BY 
p.Product_Name,
p.Category
GO


