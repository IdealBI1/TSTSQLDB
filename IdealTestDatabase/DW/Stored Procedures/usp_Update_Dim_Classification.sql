
CREATE PROCEDURE [DW].[usp_Update_Dim_Classification]

/****************************************************************************
* Name:		usp_Update_Dim_Classification
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Classification dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	14/11/2022	Sameh Hassan    Created SP0
****************************************************************************/

As


Begin Try
Begin Transaction

If Not Exists (Select Dim_Classification_key From DW.Dim_Classification Where Dim_Classification_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Classification On
	Insert Into DW.Dim_Classification ([Dim_Classification_Key], ClassificationCode, Classification, Dim_EffectiveFrom, Dim_EffectiveTo)
	Select	-1									As [Dim_Classification_Key]
			, 'U'		        				As ClassificationCode
			, Cast('Unknown' As nvarchar(100))	As Classification
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
	Set Identity_Insert DW.Dim_Classification Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Insert Into DW.Dim_Classification (ClassificationCode, Classification, Dim_EffectiveFrom, Dim_EffectiveTo)

SELECT  NewClass.ClassificationCode
        , NewClass.Classification
        , Cast ('2000-01-01' As datetime2)	        As Dim_EffectiveFrom
        , Cast ('9999-12-31' As datetime2)	        As Dim_EffectiveTo
From    (
        Select Distinct INLOCAT.P                       As ClassificationCode
                , NULL                                  As Classification
        From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        Union
        Select Distinct MTL_ABC_CLASSES.ABC_CLASS_NAME  As ClassificationCode
                , NULL                                  As Classification
        From    HSTG.HSTG_EBS_MTL_ABC_CLASSES MTL_ABC_CLASSES (nolock)
        ) NewClass
        Left Join DW.Dim_Classification (nolock)
            On NewClass.ClassificationCode = Dim_Classification.ClassificationCode
WHERE   NewClass.ClassificationCode is not Null
        And Dim_Classification.ClassificationCode is Null
Order By 1

Commit
End Try
 
Begin Catch
 
  IF @@TRANCOUNT > 0
     Rollback
 
	Declare @ERROR_MESSAGE nvarchar(1000) = ERROR_MESSAGE()
			, @ERROR_SEVERITY int = ERROR_SEVERITY()

	Raiserror (@ERROR_MESSAGE, @ERROR_SEVERITY, -1) With Nowait

       Return;
END Catch

