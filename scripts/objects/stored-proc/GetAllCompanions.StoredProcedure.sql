USE [DrWho2013]
GO

/****** Object:  StoredProcedure [dbo].[GetAllCompanions]    Script Date: 07/07/2013 22:45:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCompanions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCompanions]
GO

USE [DrWho2013]
GO

/****** Object:  StoredProcedure [dbo].[GetAllCompanions]    Script Date: 07/07/2013 22:45:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ben Farmer
-- Create date: 07/07/2013
-- Description:	Get a list of all companions
-- =============================================
CREATE PROCEDURE [dbo].[GetAllCompanions] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CompanionID, ActorName, StartingYear, Tenure
	FROM Companion
	 
END

GO


