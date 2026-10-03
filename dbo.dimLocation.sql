USE [Superstore]
GO

/****** Object:  Table [dbo].[dimLocation]    Script Date: 2026/10/03 21:11:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimLocation](
	[Location_ID] [bigint] NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[Region] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Postal_Code] [int] NOT NULL,
 CONSTRAINT [PK_dimLocation] PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


