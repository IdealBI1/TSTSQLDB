
CREATE PROCEDURE [DW].[usp_Update_Dim_Product]

/****************************************************************************
* Name:		usp_Update_Dim_Product
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Product dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
****************************************************************************/

As

If Not Exists (Select Dim_Product_key From DW.Dim_Product Where Dim_Product_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Product On
	Insert Into DW.Dim_Product ([Dim_Product_Key], [ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_Product_Key]
			, '0'								As [ItemCode]
			, -1								As [Dim_ProductCategory_Key]
			, 'U'								As [Indent]
			, 'Unknown'							As [ProductDescription]
			, 'Unknown'							As [ProductGroup]
			, 'Unknown'							As [Uom]
			, 0									As [ValueAtCost]
			, 0									As [StockQuantity]
			, 0									As [NationalBuyPrice]
			, 0									As [CommitQuantity]
			, 0									As [OrderQuantity]
			, 0									As [RetailPrice]
			, 0									As [SupplierCode]
			, 'Unknown'							As [SupplierItemCode]
			, Cast ('2000-01-01' As datetime2)	As [LastSale]
			, 'Unknown'							As [Comment]
			, Cast ('2000-01-01' As datetime2)	As [CurrentStake]
			, Cast ('2000-01-01' As datetime2)	As [StartDate]
			, Cast ('2000-01-01' As datetime2)	As [LastPurchase]
			, 0									As [OracleID]
			, 'Unknown'							As [BarcodeGTIN]
			, 'Unknown'							As [DCFilled]
            , 'Unknown'							As AutoReplenished
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime
	Set Identity_Insert DW.Dim_Product Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Dateadd(Hour, 10, Max(Dim_UpdateDateTime)), '2000-01-01')
From	[DW].Dim_Product (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_Product
Select	*
Into	#Dim_Product
From	[DW].Dim_Product
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_Product ([ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])
Select	[ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], Latest_Dim_InsertDateTime
  FROM [DW].[Dim_Product_v]
        Left Join (Select ItemCode As Item From DW.Dim_Product Where Dim_EffectiveTo = '9999-12-31') DP
            On [Dim_Product_v].ItemCode = DP.Item
Where	Latest_Dim_InsertDateTime > @Dim_UpdateDateTime
        Or DP.Item Is Null

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[ItemCode]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[ItemCode]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_Product T2
				Where	T2.ItemCode = #Dim_Product.ItemCode
						And T2.[Dim_Type2HashDiff] <> #Dim_Product.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_Product.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_Product
	) x
Group By [ItemCode]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_Product_Final
SELECT	#Dim_Product.[ItemCode]
		, Dim_ProductCategory_Key
		, Indent
		, ProductDescription
		, ProductGroup
		, Uom
		, ValueAtCost
		, StockQuantity
		, NationalBuyPrice
		, CommitQuantity
		, OrderQuantity
		, RetailPrice
		, SupplierCode
		, SupplierItemCode
		, LastSale
		, Comment
		, CurrentStake
		, StartDate
		, LastPurchase
		, OracleID
		, BarcodeGTIN
		, DCFilled
        , AutoReplenished
		, Dim_SourceSystem
		, Dim_Type1HashDiff
		, #Dim_Product.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) From #Dim_Product D Where D.ItemCode = #Dim_Product.ItemCode) As First_Dim_EffectiveFrom
Into	#Dim_Product_Final
From	#Dim_Product
		Join #ChangeDates
			On #Dim_Product.ItemCode = #ChangeDates.ItemCode
			And #Dim_Product.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_Product.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo

Begin Try
Begin Transaction

	-- Check for New Products OR Products with Type I Change only
	Merge	[DW].Dim_Product As T -- Merge Target 
    Using	(Select		*
				From	#Dim_Product_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the Product record
				On T.ItemCode = S.ItemCode 
				And T.Dim_EffectiveTo = '9999-12-31'
	
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.Indent = S.Indent
			, T.ProductDescription = S.ProductDescription
			, T.ProductGroup = S.ProductGroup
			, T.Uom = S.Uom
			, T.ValueAtCost = S.ValueAtCost
			, T.StockQuantity = S.StockQuantity
			, T.NationalBuyPrice = S.NationalBuyPrice
			, T.CommitQuantity = S.CommitQuantity
			, T.OrderQuantity = S.OrderQuantity
			, T.RetailPrice = S.RetailPrice
			, T.SupplierCode = S.SupplierCode
			, T.SupplierItemCode = S.SupplierItemCode
			, T.LastSale = S.LastSale
			, T.Comment = S.Comment
			, T.CurrentStake = S.CurrentStake
			, T.StartDate = S.StartDate
			, T.LastPurchase = S.LastPurchase
			, T.OracleID = S.OracleID
			, T.BarcodeGTIN = S.BarcodeGTIN
			, T.DCFilled = S.DCFilled
            , T.AutoReplenished = S.AutoReplenished
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New Product
	Then Insert ([ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Values ([ItemCode], S.[Dim_ProductCategory_Key], S.[Indent], S.[ProductDescription], S.[ProductGroup], S.[Uom], S.[ValueAtCost], S.[StockQuantity], S.[NationalBuyPrice], S.[CommitQuantity], S.[OrderQuantity], S.[RetailPrice], S.[SupplierCode], S.[SupplierItemCode], S.[LastSale], S.[Comment], S.[CurrentStake], S.[StartDate], S.[LastPurchase], S.[OracleID], S.[BarcodeGTIN], S.[DCFilled], S.[AutoReplenished], S.[Dim_SourceSystem], S.[Dim_Type1HashDiff], S.[Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

DROP TABLE If Exists #Dim_Product_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By ItemCode) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By ItemCode Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_Product_Type2
From	#Dim_Product_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom
		Or Dim_Type2HashDiff not in (Select Dim_Type2HashDiff From [DW].[Dim_Product] Where ItemCode = #Dim_Product_Final.ItemCode And  Dim_EffectiveTo = '9999-12-31')

	-- Check for Products with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedProduct VARCHAR(20))

		Merge	[DW].Dim_Product As T -- Merge Target 
		Using	(Select	*
				From #Dim_Product_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.ItemCode = S.ItemCode 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.ItemCode As UpdatedProduct
		Into @SummaryOfChanges
	;

	-- Insert New Instances for Products updated by a Type II change
	Insert Into DW.Dim_Product 	([ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [ItemCode], [Dim_ProductCategory_Key], [Indent], [ProductDescription], [ProductGroup], [Uom], [ValueAtCost], [StockQuantity], [NationalBuyPrice], [CommitQuantity], [OrderQuantity], [RetailPrice], [SupplierCode], [SupplierItemCode], [LastSale], [Comment], [CurrentStake], [StartDate], [LastPurchase], [OracleID], [BarcodeGTIN], [DCFilled], [AutoReplenished], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	From	#Dim_Product_Type2
			Join @SummaryOfChanges
				On ItemCode = UpdatedProduct

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

