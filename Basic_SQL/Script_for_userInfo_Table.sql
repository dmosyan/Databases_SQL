USE [ISTC]
GO
/****** Object:  Table [dbo].[userInfo]    Script Date: 9/19/2019 11:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userInfo](
	[firstName] [varchar](10) NULL,
	[lastName] [varchar](12) NULL,
	[Age] [int] NULL,
	[dateOfBirth] [date] NULL,
	[nationality] [varchar](57) NULL,
	[isMarried] [int] NULL,
	[education] [varchar](10) NULL,
	[universityName] [varchar](81) NULL,
	[isWorking] [bit] NULL,
	[salary] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
