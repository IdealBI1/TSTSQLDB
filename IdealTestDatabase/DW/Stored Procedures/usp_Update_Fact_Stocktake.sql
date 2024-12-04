
CREATE PROCEDURE [DW].[usp_Update_Fact_Stocktake]

/****************************************************************************
* Name:		usp_Update_Fact_Stocktake
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Stocktake Fact
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	19/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

-- Get Latest Snapshot Date

Declare  @Fact_UpdateDateTime Datetime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

Begin Try
Begin Transaction

Merge Into [DW].[Fact_Stocktake] T
Using (Select   *
        From    DW.Fact_Stocktake_v) S
        On T.Dim_Stocktake_Key = S.Dim_Stocktake_Key
        And T.Dim_Bin_Key = S.Dim_Bin_Key
        And T.ItemCode = S.ItemCode

When Matched And T.[Fact_HashDiff] <> S.[Fact_HashDiff] Then UPDATE
Set [Dim_ProductCategory_Key] = S.[Dim_ProductCategory_Key]
    , [Dim_Product_Key] = S.[Dim_Product_Key]
    , [Dim_Location_Key] = S.[Dim_Location_Key]
    , [Dim_Bin_Key] = S.[Dim_Bin_Key]
    , [StocktakeInProgress] = S.[StocktakeInProgress]
    , [FrozenWAC] = S.[FrozenWAC]
    , [VarianceValue] = S.[VarianceValue]
    , [MasterLastCostWAC] = S.[MasterLastCostWAC]
    , [LastCostWAC] = S.[LastCostWAC]
    , [CurrentStocktakeQtyOnHand] = S.[CurrentStocktakeQtyOnHand]
    , [FrozenQtyOnHand] = S.[FrozenQtyOnHand]
    , [QuantityVariance] = S.[QuantityVariance]
    , [Fact_SourceSystem] = S.[Fact_SourceSystem]
    , [Fact_HashDiff] = S.[Fact_HashDiff]
    , [Fact_UpdateDateTime] = @Fact_UpdateDateTime

When Not Matched By Target THEN
Insert ([Dim_ProductCategory_Key], [Dim_Product_Key], [ItemCode], [Dim_Location_Key], [Dim_Bin_Key], [Dim_Stocktake_Key], [StocktakeInProgress], [FrozenWAC], [VarianceValue], [MasterLastCostWAC], [LastCostWAC], [CurrentStocktakeQtyOnHand], [FrozenQtyOnHand], [QuantityVariance], [Fact_SourceSystem], [Fact_HashDiff], [Fact_InsertDateTime], [Fact_UpdateDateTime])
Values (S.[Dim_ProductCategory_Key], S.[Dim_Product_Key], S.[ItemCode], S.[Dim_Location_Key], S.[Dim_Bin_Key], S.[Dim_Stocktake_Key], S.[StocktakeInProgress], S.[FrozenWAC], S.[VarianceValue], S.[MasterLastCostWAC], S.[LastCostWAC], S.[CurrentStocktakeQtyOnHand], S.[FrozenQtyOnHand], S.[QuantityVariance], S.[Fact_SourceSystem], S.[Fact_HashDiff], @Fact_UpdateDateTime, @Fact_UpdateDateTime)

When Not Matched By Source And Exists (Select Distinct Dim_Stocktake_Key From DW.Fact_Stocktake_v Where  Dim_Stocktake_Key = T.Dim_Stocktake_Key ) THEN
Delete

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

