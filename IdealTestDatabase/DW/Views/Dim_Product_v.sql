



CREATE View [DW].[Dim_Product_v]

As
-- Clear Acopunting CTEs
With ItemDates As (
	Select	Incat, [Item Code]
			, OMD_INSERT_DATETIME
			, Case When Lag(OMD_INSERT_DATETIME) Over(Partition By [Item Code] Order By OMD_INSERT_DATETIME) Is Null 
				Then '2000-01-01'
				Else OMD_INSERT_DATETIME
				End						As FromDate
			, IsNull(Dateadd(Second, -1
						, Lead(OMD_INSERT_DATETIME) Over(Partition By [Item Code] Order By OMD_INSERT_DATETIME)
							)
					, Cast ('9999-12-31' As datetime2)
					)	As ToDate
	From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)
	Where	[INMAST].[OMD_IS_RECORD_DELETED] = 'N'
	)
-- Oracle CTE
,  LastItemSale As (
	Select	inventory_item_id, Max(TRANSACTION_DATE) As LastSale
	From	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] (nolock)
	Where	TRANSACTION_TYPE_ID In (52,53)
	Group By inventory_item_id
	) 
, LastItemPurchase As (
	Select	inventory_item_id, Max(TRANSACTION_DATE) As LastPurchase
	From	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] (nolock)
	Where	TRANSACTION_TYPE_ID = 18
	Group By inventory_item_id
	) 
, SoldItems As (
	Select Distinct OE_ORDER_LINES_ALL.INVENTORY_ITEM_ID
	From	[HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] OE_ORDER_LINES_ALL (nolock)
	)
, InventoryItems As (
	Select Distinct RD_BI_INV_VALUES_RPT.ITEM_CODE
	From	[HSTG].[HSTG_EBS_RD_BI_INV_VALUES_RPT]  RD_BI_INV_VALUES_RPT (nolock)
	)
, StockItems As (
    SELECT  Distinct MTL_SYSTEM_ITEMS.SEGMENT1
    FROM    HSTG.HSTG_EBS_MTL_PHYSICAL_INVENTORY_TAGS MTL_PHYSICAL_INVENTORY_TAGS (nolock)
            Join [HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)
                    On MTL_PHYSICAL_INVENTORY_TAGS.INVENTORY_ITEM_ID = MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID
                    And MTL_PHYSICAL_INVENTORY_TAGS.ORGANIZATION_ID = MTL_SYSTEM_ITEMS.organization_id
)

Select	ItemCode
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
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Latest_Dim_InsertDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT(ISNULL(CONVERT(NVARCHAR, Indent), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, ProductDescription), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, ProductGroup), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Uom), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, ValueAtCost), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, StockQuantity), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, NationalBuyPrice), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, CommitQuantity), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, OrderQuantity), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, RetailPrice), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, SupplierCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, SupplierItemCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, LastSale), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Comment), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, CurrentStake), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, StartDate), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, LastPurchase), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, OracleID), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, BarcodeGTIN), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DCFilled), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, AutoReplenished), N'')
					) 
		          )
			, 2)										As Dim_Type1HashDiff
		, CONVERT(CHAR(32),
			HASHBYTES('MD5', 
				IsNull(Convert(NVARCHAR, Dim_ProductCategory_Key), N'')
				)
			, 2)										As Dim_Type2HashDiff
From (

-- Clear Accounting Current Daily Product Updates
Select	  [INMAST].[Item Code]									As [ItemCode]
		, Dim_ProductCategory.Dim_ProductCategory_Key			As [Dim_ProductCategory_Key]
		, Case When Left([INMAST].[Item Code], 1) = '#'
				Then 'Y'
				Else 'N'
				End												As [Indent]
		, [Item Description]									As [ProductDescription]
		, Case When [INMAST].[User4] = 'IESS' Then 'Solar'
				When [INMAST].Incat Between  '1110000' and '1390000' Then 'Lighting'
				When [ProductGroup].Incat Is Not Null Then [ProductGroup].[ProductGroup]
				Else 'Unspecified'
				End												As [ProductGroup]
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
		, [Start Date]											As [StartDate]
		, [Last Purch]											As [LastPurchase]
		, Cast([OracleID] As Int)								As [OracleID]
		, [Barcode/Gtin]										As [BarcodeGTIN]
		, Substring([INMAST].[D], 1, 20)						As [DCFilled]
        , Case When INMAST.D = 'Y' 
                Then 'Auto Replenished'
                Else ''
                End                                             As AutoReplenished

		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When ItemDates.FromDate > Dim_ProductCategory.Dim_EffectiveFrom
				Then ItemDates.FromDate
				Else Dim_ProductCategory.Dim_EffectiveFrom
				End												As Dim_EffectiveFrom
		, Case When ItemDates.ToDate > Dim_ProductCategory.Dim_EffectiveTo
				Then Dim_ProductCategory.Dim_EffectiveTo
				Else ItemDates.ToDate
				End 											As Dim_EffectiveTo
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values ([INMAST].OMD_INSERT_DATETIME)
						, (Dim_ProductCategory.Dim_UpdateDateTime)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_INMAST]	[INMAST] (nolock)

		Join ItemDates ItemDates
			On [INMAST].Incat = ItemDates.Incat
			And [INMAST].[Item Code] = ItemDates.[Item Code]
			And [INMAST].OMD_INSERT_DATETIME = ItemDates.OMD_INSERT_DATETIME

		Left Join [DW].[Dim_ProductCategory] Dim_ProductCategory
			On [INMAST].Incat = Dim_ProductCategory.Incat
			And ItemDates.FromDate <= Dim_ProductCategory.Dim_EffectiveTo
			And ItemDates.ToDate >= Dim_ProductCategory.Dim_EffectiveFrom

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On [INMAST].Incat = [ProductGroup].Incat

Where	[INMAST].[Item Code] is Not Null
		And [INMAST].[OMD_IS_RECORD_DELETED] = 'N'

Union -- Oracle Current Daily Product Updates

Select	MTL_SYSTEM_ITEMS.SEGMENT1								As ItemCode
		, Dim_ProductCategory.Dim_ProductCategory_Key			As [Dim_ProductCategory_Key]
		, Case When Left(MTL_SYSTEM_ITEMS.segment1, 1) = '#'
				Then 'Y'
				Else 'N'
				End												As [Indent]
		, MTL_SYSTEM_ITEMS.[description]						As ProductDescription

		, Case --When [INMAST].[User4] = 'IESS' Then 'Solar' *** Not applicable to Oracle data
				When MTL_CATEGORIES.SEGMENT1 Between '1110000' and '1390000' Then 'Lighting'
				When [ProductGroup].Incat Is Not Null Then [ProductGroup].[ProductGroup]
				Else 'Unspecified'
				End												As [ProductGroup]
		, MTL_SYSTEM_ITEMS.primary_uom_code						As Uom
		, Null													As [ValueAtCost]
		, Null													As [StockQuantity]
		, Null													As [NationalBuyPrice]
		, Null													As [CommitQuantity]
		, Null													As [OrderQuantity]
		, Null													As [RetailPrice]
		, Null													As [SupplierCode]
		, Null													As [SupplierItemCode]
		, LastItemSale.LastSale
		, MTL_SYSTEM_ITEMS.ATTRIBUTE2							As Comment
		, Null													As [CurrentStake]
		, IsNull(MTL_SYSTEM_ITEMS.start_date_active, MTL_SYSTEM_ITEMS.creation_date) 
																As StartDate
		, LastItemPurchase.LastPurchase							As [LastPurchase]
		, MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID					As OracleID
		, Null													As [BarcodeGTIN]
		, MTL_SYSTEM_ITEMS.ATTRIBUTE17							As DCFilled
        , ''                                                    As AutoReplenished
		, 'Oracle'												As Dim_SourceSystem

		, IsNull(Dim_ProductCategory.Dim_EffectiveFrom, '2000-01-01')
																As Dim_EffectiveFrom
		, IsNull(Dim_ProductCategory.Dim_EffectiveTo, '9999-12-31')
					 											As Dim_EffectiveTo
		, 
            -- Case When SoldItems.INVENTORY_ITEM_ID Is Null 
            --     And InventoryItems.ITEM_CODE Is Null 
            --     And StockItems.SEGMENT1 Is Not Null
            -- Then Cast('9999-12-31' As Datetime)
            -- Else 
                (Select Max(OMD_INSERT_DATETIME) 
                    From (Values (MTL_SYSTEM_ITEMS.OMD_INSERT_DATETIME)
                                , (MTL_ITEM_CATEGORIES.OMD_INSERT_DATETIME)
                                , (MTL_CATEGORIES.OMD_INSERT_DATETIME)
                                , (MTL_CATEGORY_SETS.OMD_INSERT_DATETIME)
                                , (Dim_ProductCategory.Dim_UpdateDateTime)
                                ) As AllInsertDates(OMD_INSERT_DATETIME)
                    ) 
            --  End                    
                    As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)

		Join [HSTG].[HSTG_EBS_MTL_ITEM_CATEGORIES_V] MTL_ITEM_CATEGORIES (nolock)
			On MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID = MTL_ITEM_CATEGORIES.INVENTORY_ITEM_ID
			And MTL_SYSTEM_ITEMS.ORGANIZATION_ID = MTL_ITEM_CATEGORIES.organization_id
			And MTL_ITEM_CATEGORIES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Join [HSTG].[HSTG_EBS_MTL_CATEGORIES] MTL_CATEGORIES (nolock)
			On MTL_ITEM_CATEGORIES.category_id = MTL_CATEGORIES.category_id
			And MTL_CATEGORIES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Join [HSTG].[HSTG_EBS_MTL_CATEGORY_SETS] MTL_CATEGORY_SETS (nolock)
			On MTL_CATEGORIES.structure_id = MTL_CATEGORY_SETS.structure_id
			And MTL_CATEGORY_SETS.category_set_name  = 'Redeal Stock'
--			And MTL_CATEGORY_SETS.category_set_name In ('Redeal Stock', 'Redeal Purchasing', 'Redeal Projects')
			And MTL_CATEGORY_SETS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join LastItemSale
			On MTL_SYSTEM_ITEMS.inventory_item_id = LastItemSale.inventory_item_id

		Left Join LastItemPurchase
			On MTL_SYSTEM_ITEMS.inventory_item_id = LastItemPurchase.inventory_item_id

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On MTL_CATEGORIES.SEGMENT1 = [ProductGroup].Incat
			
		Left Join [DW].[Dim_ProductCategory] Dim_ProductCategory
			On MTL_CATEGORIES.SEGMENT1 = Dim_ProductCategory.Incat

		Left Join [HSTG].[HSTG_CA_INMAST] INMAST (nolock)
			On MTL_SYSTEM_ITEMS.segment1 = INMAST.[Item Code]

		Left Join SoldItems  --To limit the list to Products with Sales transactions only
			On MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID = SoldItems.INVENTORY_ITEM_ID 

		Left Join InventoryItems  --To include Products in Inventory but not sold
			On MTL_SYSTEM_ITEMS.SEGMENT1 = InventoryItems.ITEM_CODE

		Left Join StockItems  --To include Products in Stocktake but not sold
			On MTL_SYSTEM_ITEMS.SEGMENT1 = StockItems.SEGMENT1

Where	MTL_SYSTEM_ITEMS.ORGANIZATION_ID = 89
		And MTL_SYSTEM_ITEMS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
        And (SoldItems.INVENTORY_ITEM_ID Is Not Null 
            OR InventoryItems.ITEM_CODE Is Not Null 
            OR StockItems.SEGMENT1 Is Not Null)
		And INMAST.[Item Code] Is Null -- To exclude Clear Accounting Items
--		And (LastItemSale.LastSale Is Not Null Or LastItemPurchase.LastPurchase Is Not Null) -- To limit to Items with Sale or Purchase History
) As DimProduct
