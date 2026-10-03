USE [Superstore]
GO

/****** Object:  Table [dbo].[dimCustomer]    Script Date: 2026/10/03 21:10:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimCustomer](
	[Customer_ID] [nvarchar](50) NOT NULL,
	[Customer_Name] [nvarchar](max) NOT NULL,
	[Segment] [varchar](50) NOT NULL,
 CONSTRAINT [PK_dimCustomer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


