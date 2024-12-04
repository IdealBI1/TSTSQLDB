
CREATE PROCEDURE [DW].[usp_Update_Fact_InventoryTarget]

/****************************************************************************
* Name:		usp_Update_Fact_InventoryTarget
* Author:	Sameh Hassan
* Desc:		Inserts/updates the InventoryTarget Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	12/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Begin Try
Begin Transaction

    Insert INTO DW.Fact_InventoryTarget (TargetDateKey, Dim_Location_Key, Rolling12MSalesValue, Fact_SourceSystem, Fact_UpdateDateTime)
    SELECT  TargetDateKey, Dim_Location_Key, Rolling12MSalesValue, Fact_SourceSystem, Fact_UpdateDateTime
    FROM    [DW].[Fact_InventoryTarget_v] 

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

