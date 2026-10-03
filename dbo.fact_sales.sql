USE [Superstore]
GO

/****** Object:  Table [dbo].[fact_sales]    Script Date: 2026/10/03 21:09:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_sales](
	[Order_ID] [varchar](50) NULL,
	[Order_Date] [date] NULL,
	[Ship_Date] [date] NULL,
	[Ship_Mode] [varchar](50) NULL,
	[Customer_ID] [nvarchar](50) NOT NULL,
	[Product_ID_archived] [varchar](50) NULL,
	[Sales] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[Discount] [decimal](5, 2) NULL,
	[Profit] [decimal](18, 2) NULL,
	[Product_ID] [int] NOT NULL,
	[Location_ID] [bigint] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[fact_sales]  WITH CHECK ADD  CONSTRAINT [FK_fact_customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[dimCustomer] ([Customer_ID])
GO

ALTER TABLE [dbo].[fact_sales] CHECK CONSTRAINT [FK_fact_customer]
GO

ALTER TABLE [dbo].[fact_sales]  WITH CHECK ADD  CONSTRAINT [FK_fact_location] FOREIGN KEY([Location_ID])
REFERENCES [dbo].[dimLocation] ([Location_ID])
GO

ALTER TABLE [dbo].[fact_sales] CHECK CONSTRAINT [FK_fact_location]
GO

ALTER TABLE [dbo].[fact_sales]  WITH CHECK ADD  CONSTRAINT [FK_fact_sales_dimProduct_ProductKey] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[dimProduct] ([Product_ID])
GO

ALTER TABLE [dbo].[fact_sales] CHECK CONSTRAINT [FK_fact_sales_dimProduct_ProductKey]
GO


