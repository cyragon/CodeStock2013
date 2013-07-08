USE [DrWho2013]
GO

/****** Object:  StoredProcedure [dbo].[GetAllDoctors]    Script Date: 07/07/2013 22:47:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllDoctors]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllDoctors]
GO

USE [DrWho2013]
GO

/****** Object:  StoredProcedure [dbo].[GetAllDoctors]    Script Date: 07/07/2013 22:47:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ben Farmer
-- Create date: 07/07/2013
-- Description:	Get a list of all doctors
-- =============================================
CREATE PROCEDURE [dbo].[GetAllDoctors] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DoctorID, ActorName, StartingYear, Tenure
	FROM Doctor
	 
END

GO


