

Create View [DW].[Dim_Product_Old_v]

As
-- Clear Acopunting CTEs
With RebateHistory As (
	SELECT	[Incat]
			, Year(Cast('01-' + Replace([Month], '_', '-') As Datetime))	As CategoryYear
			, Cast('01-' + Replace([Month], '_', '-') As Datetime)			As FromDate
			, Dateadd(Second, -1, Dateadd(Day, 1, Convert(Datetime, EOMONTH(Cast('01-' + Replace([Month], '_', '-') As Date)))))	As ToDate
			, CatReb
	From (
	SELECT [Incat], [Jan_20], [Feb_20], [Mar_20], [Apr_20], [May_20], [Jun_20], [Jul_20], [Aug_20], [Sep_20], [Oct_20], [Nov_20], [Dec_20], [Jan_21], [Feb_21], [Mar_21], [Apr_21], [May_21], [Jun_21], [Jul_21], [Aug_21], [Sep_21], [Oct_21], [Nov_21], [Dec_21], [Jan_22], [Feb_22], [Mar_22]
		FROM [REF].[CategoryRebateHistory]) P
		Unpivot
		(CatReb For [Month] in ([Jan_20], [Feb_20], [Mar_20], [Apr_20], [May_20], [Jun_20], [Jul_20], [Aug_20], [Sep_20], [Oct_20], [Nov_20], [Dec_20], [Jan_21], [Feb_21], [Mar_21], [Apr_21], [May_21], [Jun_21], [Jul_21], [Aug_21], [Sep_21], [Oct_21], [Nov_21], [Dec_21], [Jan_22], [Feb_22], [Mar_22])) AS unpvt
	) 
, UniqueRebateHistory As (
	Select	RebateHistory.Incat
			, RebateHistory.CatReb
			, IsNull(CategoryHistory.Item_Category_Description
					, [INCAT].[Category Description])				As [CategoryDescription]
			, IsNull(CategoryHistory.Item_Category_Sub_Description
					, [INCAT].[Category Sub Description])			As [SubCategoryDescription]
			, Min(FromDate) As FromDate
			, Max(ToDate) As ToDate
	From	RebateHistory
			Left Join Ref.CategoryHistory
				On RebateHistory.Incat = CategoryHistory.Incat
				And RebateHistory.CategoryYear = CategoryHistory.[Year]

			Left Join [HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
				On RebateHistory.Incat = [INCAT].Incat
				And [INCAT].[OMD_IS_RECORD_DELETED] = 'N'
				And [INCAT].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

	Group By RebateHistory.Incat
			, RebateHistory.CatReb
			, IsNull(CategoryHistory.Item_Category_Description
					, [INCAT].[Category Description])
			, IsNull(CategoryHistory.Item_Category_Sub_Description
					, [INCAT].[Category Sub Description])
	)
, LastHistoryEndDate As (
	Select	[Incat], Max(ToDate) As LastToDate
	From	UniqueRebateHistory
	Group By [Incat]
	)
, ItemStagingDates As (
	Select	[Item Code]
			, Min(OMD_INSERT_DATETIME) As FirstInsert
			, Max(OMD_INSERT_DATETIME) As LastInsert
	From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)
	Where	[INMAST].[OMD_IS_RECORD_DELETED] = 'N'
	Group By [Item Code]
)
, ItemFirstIncat As (
	Select	Distinct [Item Code]
			, FIRST_VALUE(Incat) Over(Partition By [Item Code] Order By OMD_INSERT_DATETIME) As FirstIncat
	From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)
	Where	[INMAST].[OMD_IS_RECORD_DELETED] = 'N'
)
-- Oracle CTE
, LastItemSale As (
Select	inventory_item_id, Max(creation_date) As LastSale
From	[HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] (nolock)
Group By inventory_item_id
) 

-- Clear Accounting History Category Rebates - To be loaded once only

Select	  CONVERT(CHAR(32),
			HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, [INMAST].[Item Code]), N'')
		              , '|', ISNULL(UniqueRebateHistory.FromDate, N'')
					) 
		          )
			, 2)												As [Dim_Product_Key]
		, [INMAST].Incat
		, [INMAST].[Item Code]									As [ItemCode]

		, Case When Left([INMAST].[Item Code], 1) = '#'
				Then 'Y'
				Else 'N'
				End												As [Indent]
		, [Item Description]
		, Case When [INMAST].[User4] = 'IESS' Then 'Solar'
				When [INMAST].Incat Between  '1110000' and '1390000' Then 'Lighting'
				When [ProductGroup].Incat Is Not Null Then [ProductGroup].[ProductGroup]
				Else 'Unspecified'
				End												As [ProductGroup]
		, [INCAT].Mj											As [CategoryCode]
		, UniqueRebateHistory.[CategoryDescription]				As [CategoryDescription]
		, [INCAT].Minor											As [SubCategoryCode]
		, UniqueRebateHistory.[SubCategoryDescription]			As [SubCategoryDescription]
		, [INCAT].[Type]										As [MagnitudeCode] 
		, MagC.MagnitudeClassification

		, [INCAT].[CatReb]										As [CategoryRebatePCT]
		, [Uom]
		, [Value @ Cost]										As [ValueAtCost]
		, [Stock Qty]											As [StockQuantity]
		, [Nat Buy Prc]											As [NationalBuyPrice]
		, [Commit Qty]											As [CommitQuantity]
		, [Order Qty]											As [OrderQuantity]
		, [RetailPrc]											As [RetailPrice]
		, Cast([MSup] As Int)									As [SupplierCode]
		, [Supplier Item Code]									As [SupplierItemCode]
		, [Last Sale]											As [LastSale]
		, [Comment]
		, [Curr Stake]											As [CurrentStake]
		, [QohCurrStake]										As [QuantityOnhandCurrentStake]
		, [Start Date]											As [StartDate]
		, [Last Purch]											As [LastPurchase]
		, Cast([OracleID] As Int)								As [OracleID]
		, [Barcode/Gtin]										As [BarcodeGTIN]
		, Substring([INMAST].[D], 1, 20)						As [DCFilled]

		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When UniqueRebateHistory.FromDate = '2020-01-01'
				Then '2010-01-01' -- To add an older starting point for Oracle Transactions
				Else UniqueRebateHistory.FromDate
				End												As Dim_EffectiveFrom
		, Case 
				When UniqueRebateHistory.ToDate = LastHistoryEndDate.LastToDate
					And UniqueRebateHistory.ToDate < ItemStagingDates.FirstInsert 
					Then DateAdd(Second, -1, ItemStagingDates.FirstInsert)
				When UniqueRebateHistory.ToDate < ItemStagingDates.FirstInsert Then UniqueRebateHistory.ToDate
				When UniqueRebateHistory.FromDate > ItemStagingDates.LastInsert Then Cast ('9999-12-31' As datetime2)
				Else DateAdd(Second, -1, ItemStagingDates.FirstInsert)
				End												As Dim_EffectiveTo

From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)
		Left Join [HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
			On [INMAST].Incat = [INCAT].Incat
			And [INCAT].[OMD_IS_RECORD_DELETED] = 'N'
			And [INCAT].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On [INMAST].Incat = [ProductGroup].Incat

		Left Join Ref.MagnitudeClassification MagC
			On [INCAT].[Type] = MagC.MAGFAM

		Join ItemStagingDates
			On [INMAST].[Item Code] = ItemStagingDates.[Item Code]
			And [INMAST].OMD_INSERT_DATETIME = ItemStagingDates.FirstInsert

		Join ItemFirstIncat
			On [INMAST].[Item Code] = ItemFirstIncat.[Item Code]
		
		Join UniqueRebateHistory
			On [INMAST].Incat = UniqueRebateHistory.Incat
			And UniqueRebateHistory.FromDate < ItemStagingDates.FirstInsert

		Join LastHistoryEndDate
			On [INMAST].Incat = LastHistoryEndDate.Incat

Where	[INMAST].[Item Code] is Not Null

Union -- Unknown Record

Select	
		'0'										As [Dim_Product_Key]
		, '0'									As [Incat]
		, '0'									As [ItemCode]
		, 'U'									As [Indent]
		, 'Unknown'								As [ItemDescription]
		, 'Unknown'								As [ProductGroup]
		, '0'									As [CategoryCode]
		, 'Unknown'								As [CategoryDescription]
		, '0'									As [SubCategoryCode]
		, 'Unknown'								As [SubCategoryDescription]
		, 'Unk'									As [MagnitudeCode]
		, 'Unknown'								As MagnitudeClassification
		, 0										As [CategoryRebatePCT]
		, 'Unknown'								As [Uom]
		, 0										As [ValueAtCost]
		, 0										As [StockQuantity]
		, 0										As [NationalBuyPrice]
		, 0										As [CommitQuantity]
		, 0										As [OrderQuantity]
		, 0										As [RetailPrice]
		, 0										As [SupplierCode]
		, 'Unknown'								As [SupplierItemCode]
		, Cast ('2000-01-01' As datetime2)		As [LastSale]
		, 'Unknown'								As [Comment]
		, Cast ('2000-01-01' As datetime2)		As [CurrentStake]
		, 0										As [QuantityOnhandCurrentStake]
		, Cast ('2000-01-01' As datetime2)		As [StartDate]
		, Cast ('2000-01-01' As datetime2)		As [LastPurchase]
		, 0										As [OracleID]
		, 'Unknown'								As [BarcodeGTIN]
		, 'Unknown'								As [DCFilled]
		, 'Unknown'								As Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)		As Dim_EffectiveTo

Union -- Clear Accounting Current Daily Product Updates

Select	  CONVERT(CHAR(32),
			HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, [INMAST].[Item Code]), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Case When Lag([INMAST].OMD_INSERT_DATETIME)
															Over(Partition By [INMAST].[Item Code]
															Order By [INMAST].OMD_INSERT_DATETIME) 
															Is Null Then '2000-01-01'
														Else [INMAST].OMD_INSERT_DATETIME
														End), N'')
					) 
		          )
			, 2)												As [Dim_Product_Key]
		, [INMAST].Incat
		, [INMAST].[Item Code]									As [ItemCode]

		, Case When Left([INMAST].[Item Code], 1) = '#'
				Then 'Y'
				Else 'N'
				End												As [Indent]
		, [Item Description]
		, Case When [INMAST].[User4] = 'IESS' Then 'Solar'
				When [INMAST].Incat Between  '1110000' and '1390000' Then 'Lighting'
				When [ProductGroup].Incat Is Not Null Then [ProductGroup].[ProductGroup]
				Else 'Unspecified'
				End												As [ProductGroup]
		, [INCAT].Mj											As [CategoryCode]
		, [INCAT].[Category Description]						As [CategoryDescription]
		, [INCAT].Minor											As [SubCategoryCode]
		, [INCAT].[Category Sub Description]					As [SubCategoryDescription]
		, [INCAT].[Type]										As [MagnitudeCode] 
		, MagC.MagnitudeClassification

		, [INCAT].[CatReb]										As [CategoryRebatePCT]
		, [Uom]
		, [Value @ Cost]										As [ValueAtCost]
		, [Stock Qty]											As [StockQuantity]
		, [Nat Buy Prc]											As [NationalBuyPrice]
		, [Commit Qty]											As [CommitQuantity]
		, [Order Qty]											As [OrderQuantity]
		, [RetailPrc]											As [RetailPrice]
		, Cast([MSup] As Int)									As [SupplierCode]
		, [Supplier Item Code]									As [SupplierItemCode]
		, [Last Sale]											As [LastSale]
		, [Comment]
		, [Curr Stake]											As [CurrentStake]
		, [QohCurrStake]										As [QuantityOnhandCurrentStake]
		, [Start Date]											As [StartDate]
		, [Last Purch]											As [LastPurchase]
		, Cast([OracleID] As Int)								As [OracleID]
		, [Barcode/Gtin]										As [BarcodeGTIN]
		, Substring([INMAST].[D], 1, 20)						As [DCFilled]
										
		, 'Clear Accounting'									As Dim_SourceSystem
		, [INMAST].OMD_INSERT_DATETIME							As Dim_EffectiveFrom
		, IsNull(Dateadd(Second, -1, 
				Lead([INMAST].OMD_INSERT_DATETIME)
				Over(Partition By --[INMAST].Incat, 
									[INMAST].[Item Code]
					Order By [INMAST].OMD_INSERT_DATETIME)
						), Cast ('9999-12-31' As datetime2))	As Dim_EffectiveTo


From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)
		Left Join [HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
			On [INMAST].Incat = [INCAT].Incat
			And [INCAT].[OMD_IS_RECORD_DELETED] = 'N'
			And [INCAT].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On [INMAST].Incat = [ProductGroup].Incat

		Left Join Ref.MagnitudeClassification MagC (nolock)
			On [INCAT].[Type] = MagC.MAGFAM

Where	[INMAST].[Item Code] is Not Null
		And [INMAST].[OMD_IS_RECORD_DELETED] = 'N'


Union -- Oracle Current Daily Product Updates

Select	  CONVERT(CHAR(32),
			HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, mtl_system_items.segment1), N'')
		              , '|', ISNULL(mtl_system_items.[description], N'')
					) 
		          )
			, 2)												As [Dim_Product_Key]
		, MTL_CATEGORIES.SEGMENT1								As Incat
		, mtl_system_items.segment1								As ItemCode
		, Case When Left(mtl_system_items.segment1, 1) = '#'
				Then 'Y'
				Else 'N'
				End												As [Indent]
		, mtl_system_items.[description]						As ItemDescription

		, Case --When [INMAST].[User4] = 'IESS' Then 'Solar' *** Not applicable to Oracle data
				When MTL_CATEGORIES.SEGMENT1 Between '1110000' and '1390000' Then 'Lighting'
				When [ProductGroup].Incat Is Not Null Then [ProductGroup].[ProductGroup]
				Else 'Unspecified'
				End												As [ProductGroup]

		, Left(MTL_CATEGORIES.SEGMENT1, 2)						As [CategoryCode]
		, Null													As [CategoryDescription]
		, Substring(MTL_CATEGORIES.SEGMENT1, 3, 5)				As [SubCategoryCode]
		, Null													As [SubCategoryDescription]
		, Null													As [MagnitudeCode] 
		, Null													As MagnitudeClassification

		, MTL_CATEGORIES.ATTRIBUTE2								As CategoryRebatePCT
		, mtl_system_items.primary_uom_code						As Uom

		, Null													As [ValueAtCost]
		, Null													As [StockQuantity]
		, Null													As [NationalBuyPrice]
		, Null													As [CommitQuantity]
		, Null													As [OrderQuantity]
		, Null													As [RetailPrice]
		, Null													As [SupplierCode]
		, Null													As [SupplierItemCode]

		, LastItemSale.LastSale
		, mtl_system_items.ATTRIBUTE2							As Comment

		, Null													As [CurrentStake]
		, Null													As [QuantityOnhandCurrentStake]

		, IsNull(MTL_SYSTEM_ITEMS.start_date_active, MTL_SYSTEM_ITEMS.creation_date) 
																As StartDate

		, Null													As [LastPurchase]

		, mtl_system_items.INVENTORY_ITEM_ID					As OracleID

		, Null													As [BarcodeGTIN]

		, mtl_system_items.ATTRIBUTE17							As DCFilled

		, 'Oracle'												As Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)						As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)						As Dim_EffectiveTo

From	[HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)

		Join [HSTG].[HSTG_EBS_MTL_ITEM_CATEGORIES] MTL_ITEM_CATEGORIES (nolock)
			On MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID = MTL_ITEM_CATEGORIES.INVENTORY_ITEM_ID
			And MTL_SYSTEM_ITEMS.ORGANIZATION_ID = MTL_ITEM_CATEGORIES.organization_id

		Join [HSTG].[HSTG_EBS_MTL_CATEGORIES] MTL_CATEGORIES (nolock)
			On MTL_ITEM_CATEGORIES.category_id = MTL_CATEGORIES.category_id

		Join [HSTG].[HSTG_EBS_MTL_CATEGORY_SETS] MTL_CATEGORY_SETS (nolock)
			On MTL_CATEGORIES.structure_id = MTL_CATEGORY_SETS.structure_id
			And MTL_CATEGORY_SETS.category_set_name  = 'Redeal Stock'

		Left Join LastItemSale
			On MTL_SYSTEM_ITEMS.inventory_item_id = LastItemSale.inventory_item_id

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On MTL_CATEGORIES.SEGMENT1 = [ProductGroup].Incat
			
		Left Join [HSTG].[HSTG_CA_INMAST] INMAST (nolock)
			On MTL_SYSTEM_ITEMS.segment1 = INMAST.[Item Code]

Where	MTL_SYSTEM_ITEMS.ORGANIZATION_ID = 89
		And INMAST.[Item Code] Is Null -- To exclude Clear Accounting Items


