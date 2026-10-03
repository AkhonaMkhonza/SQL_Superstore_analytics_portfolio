USE [Superstore]
GO

/****** Object:  View [dbo].[vw_region_rankings]    Script Date: 2026/10/03 20:59:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_region_rankings] AS
SELECT 
l.Region,
SUM(fs.Sales) AS TotalSales,
SUM(fs.Profit) AS TotalProfit,
RANK() OVER (
ORDER BY SUM(fs.Sales) DESC 
) AS SalesRank 

FROM fact_sales fs
INNER JOIN dimLocation l
ON fs.Location_ID = l.Location_ID
GROUP BY l.Region
GO


