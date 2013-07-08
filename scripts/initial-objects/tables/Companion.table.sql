USE [DrWho2013]
GO

/****** Object:  Table [dbo].[Companion]    Script Date: 07/07/2013 22:41:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companion]') AND type in (N'U'))
DROP TABLE [dbo].[Companion]
GO

USE [DrWho2013]
GO

/****** Object:  Table [dbo].[Companion]    Script Date: 07/07/2013 22:41:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Companion](
	[CompanionID] [int] IDENTITY(1,1) NOT NULL,
	[ActorName] [varchar](50) NULL,
	[StartingYear] [int] NULL,
	[Tenure] [int] NULL,
 CONSTRAINT [PK_Companion] PRIMARY KEY CLUSTERED 
(
	[CompanionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


