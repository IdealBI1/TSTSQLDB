
CREATE PROCEDURE [DW].[usp_Update_Fact_IndentAge]

/****************************************************************************
* Name:		usp_Update_Fact_IndentAge
* Author:	Sameh Hassan
* Desc:		Inserts/updates the IndentAge Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	30/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Declare @Fact_UpdateDateTime datetime2 = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

Begin Try
Begin Transaction

MERGE Into DW.Fact_IndentAge T
Using [DW].[Fact_IndentAge_v]  S
        On (Select LocationCode From DW.Dim_Location Where Dim_Location_Key = T.Dim_Location_Key) = S.LocationCode
        And (Select ItemCode From DW.Dim_Product Where Dim_Product_Key = T.Dim_Product_Key) = S.ItemCode

WHEN MATCHED AND T.InventoryQty <> S.InventoryQty 
THEN UPDATE 
SET InventoryQty =S.InventoryQty
    , InventoryDateKey = CASE WHEN T.InventoryQty = 0 
                                THEN S.InventoryDateKey
                                ELSE T.InventoryDateKey END
    , Fact_UpdateDateTime = @Fact_UpdateDateTime

WHEN NOT MATCHED BY TARGET 
THEN INSERT (Dim_Location_Key, Dim_Product_Key, InventoryQty, InventoryDateKey, Fact_InsertDateTime, Fact_UpdateDateTime)
    VALUES (S.Dim_Location_Key, S.Dim_Product_Key, S.InventoryQty, S.InventoryDateKey, @Fact_UpdateDateTime, @Fact_UpdateDateTime)                               

WHEN NOT MATCHED BY SOURCE 
THEN UPDATE 
SET InventoryQty = 0
    , Fact_UpdateDateTime = @Fact_UpdateDateTime

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

