
CREATE PROCEDURE [DW].[usp_Update_Dim_Stocktake]

/****************************************************************************
* Name:		usp_Update_Dim_Stocktake
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Stocktake dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	18/11/2022	Sameh Hassan    Created SP0
****************************************************************************/

As


Begin Try
Begin Transaction

If Not Exists (Select Dim_Stocktake_key From DW.Dim_Stocktake Where Dim_Stocktake_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Stocktake On
	Insert Into DW.Dim_Stocktake ([Dim_Stocktake_Key], Dim_Location_Key, LocationCode, StocktakeInProgress, StocktakeDate, StocktakeEndDate, Dim_SourceSystem, Dim_InsertDateTime, Dim_UpdateDateTime)
	Select	-1					As [Dim_Stocktake_Key]
                , -1					As Dim_Location_Key
                , Cast('Unk' As char(3))		As LocationCode
                , Cast('U' As char(1))			As StocktakeInProgress
                , Cast (Null As date)                   As StocktakeDate
                , Cast (Null As date)                   As StocktakeEndDate
                , Cast('Unknown' As nvarchar(20))	As Dim_SourceSystem
                , Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
                , Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_Stocktake Off

End

Declare @Dim_UpdateDateTime Datetime2 = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
	, @BatchID int

;
Merge INTO DW.Dim_Stocktake T
Using (SELECT Dim_Location_Key, LocationCode, StocktakeInProgress, StocktakeDate, StocktakeEndDate, Dim_SourceSystem
        From DW.Dim_Stocktake_v
        ) S
        On T.LocationCode = S.LocationCode
        And IsNull(T.StocktakeDate, '') = isNull(S.StocktakeDate, '')

When Matched And T.StocktakeEndDate <> S.StocktakeEndDate
                Or T.StocktakeInProgress <> S.StocktakeInProgress
Then Update
Set T.StocktakeEndDate = S.StocktakeEndDate
, T.StocktakeInProgress = S.StocktakeInProgress
, T.Dim_UpdateDateTime = @Dim_UpdateDateTime

When Not Matched 
Then Insert (Dim_Location_Key, LocationCode, StocktakeInProgress, StocktakeDate, StocktakeEndDate, Dim_SourceSystem, Dim_InsertDateTime, Dim_UpdateDateTime)
Values (S.Dim_Location_Key, S.LocationCode, S.StocktakeInProgress, S.StocktakeDate, S.StocktakeEndDate, S.Dim_SourceSystem, @Dim_UpdateDateTime, @Dim_UpdateDateTime)
;

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

