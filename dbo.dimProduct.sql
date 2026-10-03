USE [Superstore]
GO

/****** Object:  Table [dbo].[dimProduct]    Script Date: 2026/10/03 21:12:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimProduct](
	[Product_ID_old] [nvarchar](50) NOT NULL,
	[Product_Name] [nvarchar](max) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Sub_Category] [varchar](max) NOT NULL,
	[Product_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dimProduct_ProductKey] PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


