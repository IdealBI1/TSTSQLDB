


CREATE View [DW].[Fact_SalesOrderOpen_V]

AS


-- Oracle CTE
With DeliveryDate As (
	SELECT	TRX_SOURCE_LINE_ID
			, Max(TRANSACTION_DATE) As DeliveryDate
	FROM	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] MMT 
	WHERE	MMT.OMD_CURRENT_RECORD_INDICATOR = 'Y'
			And TRANSACTION_TYPE_ID in (52,54)
	Group By TRX_SOURCE_LINE_ID
	)
, ReturnDeliveryDate As (
	SELECT	TRX_SOURCE_LINE_ID
			, Max(TRANSACTION_DATE) As ReturnDeliveryDate
	FROM	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] MMT 
	WHERE	MMT.OMD_CURRENT_RECORD_INDICATOR = 'Y'
			And TRANSACTION_TYPE_ID = 15
			And TRANSACTION_ACTION_ID = 27
			And TRANSACTION_SOURCE_TYPE_ID = 12
	Group By TRX_SOURCE_LINE_ID
	)
, UnitCost As (
	SELECT	TRX_SOURCE_LINE_ID
			, Max(IsNull(ACTUAL_COST, 0)) As UnitCost
	FROM	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] MMT 
	WHERE	MMT.OMD_CURRENT_RECORD_INDICATOR = 'Y'
			And TRANSACTION_TYPE_ID = 54
	Group By TRX_SOURCE_LINE_ID
	)
, UnitReturnCost As (
	SELECT	TRX_SOURCE_LINE_ID
			, Max(IsNull(ACTUAL_COST, 0)) As UnitReturnCost
	FROM	[HSTG].[HSTG_EBS_MTL_MATERIAL_TRANSACTIONS] MMT 
	WHERE	MMT.OMD_CURRENT_RECORD_INDICATOR = 'Y'
			And TRANSACTION_TYPE_ID = 15
			And TRANSACTION_ACTION_ID = 27
			And TRANSACTION_SOURCE_TYPE_ID = 12
	Group By TRX_SOURCE_LINE_ID
	)

-- Clear Accounting Sales Orders
Select	SOLINE.[So#]													As OrderNumber
		, Cast(SOLINE.[Sol#] As Decimal(10,3))							As LineNumber
--		, IsNull(Dim_SalesTransaction.Dim_SalesTransaction_Key, '0')	As Dim_SalesTransaction_Key
		, IsNull(Dim_Location.Dim_Location_Key, '0')					As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')					As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')						As Dim_Product_Key
		, IsNull(Dim_Product.Dim_ProductCategory_Key, '0')				As Dim_ProductCategory_Key
		, Case When [SOMAST].[Order Source] = 'WEBSHOP' Then 4
			When [SOMAST].[Order Source] = 'MOBILE' Then 5
			When [SOMAST].[Order Source] = 'EDI' Then 6
			When Left([SOMAST].[Order Source], 2) = 'SO' Then 2
			When Left([SOMAST].[Order Source], 2) = 'SQ' Then 3
			When [SOMAST].[Order Source] Is Null Then 1
			Else 99
			End															As Dim_TransactionSource_Key
		, IsNull(Convert(int, Convert(char, SOMAST.[Order Date], 112)), -1)	As Dim_OrderDate_Key
		, SOMAST.[Order Date]											As OrderDate
		, DATEDIFF(Day, SOMAST.[Order Date], getdate())					As DaysOpen
		, IsNull(Convert(int, Convert(char, SOLINE.[Deliv Date], 112)), -1)	As Dim_DeliveryDate_Key
		, SOLINE.[Deliv Date]											As DeliveryDate
		, SOLINE.P														As [Priority]
		, SOMAST.Spn													As UserID
		, SOMAST.H														As Hold
		, SOMAST.P														As Project
		, SOLINE.[Order Qty]											As OrderedQty
		, SOLINE.[Cancel Qty]											As CancelledQt
		, SOLINE.[Bord Qty]												As BackorderedQty
		, SOLINE.[Inv Qty]												As ShippedQty
		, SOLINE.LinePrice												As [LinePrice]
		, SOLINE.[Po Qty]												As [OnOrderQty]
		, SOLINE.[OV Gst Incl] - SOLINE.[Gst Value]						As SalesValueExGST
		, SOLINE.[Gst Value]											As GstValue
		, Null															As COGS -- Investigate
		, SOLINE.[Disc %]												As DiscountRate
		, SOLINE.[Disc Value]											As DiscountValue
		, (SOLINE.[Order Qty] - SOLINE.[Cancel Qty]- SOLINE.[Inv Qty])
			* SOLINE.LinePrice 
			* (1 - SOLINE.[Disc %] / 100)								As OnOrderValueExclGST -- Remaining Value
		, 'Clear Accounting'											As SourceSystem

From	[HSTG].[HSTG_CA_SOLINE]			As [SOLINE] (nolock)

		Join [HSTG].[HSTG_CA_SOMAST]	As [SOMAST] (nolock)
			On [SOLINE].[So#] = [SOMAST].[So#]
			And [SOMAST].[OMD_IS_RECORD_DELETED] = 'N'
			And [SOMAST].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [DW].[Dim_Location] As Dim_Location (nolock)
			On [SOMAST].Loc = Dim_Location.[LocationCode]
			And SOMAST.[Order Date] Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Customer] As Dim_Customer (nolock)
			On [SOMAST].[Cust#] = Dim_Customer.[CustomerNumber]
			And SOMAST.[Order Date] Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product] As Dim_Product (nolock)
			On [SOLINE].[Item Code] = Dim_Product.[ItemCode]
			And SOMAST.[Order Date] Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory] As Dim_ProductCategory (nolock)
			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key
			And Dim_ProductCategory.[Dim_EffectiveTo] = '9999-12-31'

Where	[SOLINE].[OMD_IS_RECORD_DELETED] = 'N'
		And [SOLINE].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'
		And [SOLINE].[OMD_INSERT_DATETIME] >= '2022-06-01' -- To exclude historical CA sales orders before 2020
		And (SOLINE.[Order Qty] - SOLINE.[Cancel Qty]- SOLINE.[Inv Qty]) > 0

Union -- Oracle Sales Orders

Select	OE_ORDER_HEADERS_ALL.ORDER_NUMBER									As OrderNumber
		, Format(OE_ORDER_LINES_ALL.LINE_NUMBER, '#') + '.' 
			+ Format(OE_ORDER_LINES_ALL.SHIPMENT_NUMBER, '#')				As LineNumber		
--		, IsNull(Dim_SalesTransaction.Dim_SalesTransaction_Key, '0')		As Dim_SalesTransaction_Key
		, IsNull(Dim_Location.Dim_Location_Key, '0')						As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')						As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')							As Dim_Product_Key
		, IsNull(Dim_Product.Dim_ProductCategory_Key, '0')					As Dim_ProductCategory_Key
		, IsNull(Dim_TransactionSource.Dim_TransactionSource_Key, '0')		As Dim_TransactionSource_Key

		, IsNull(Convert(int, Convert(char, OE_ORDER_HEADERS_ALL.ORDERED_DATE, 112)), -1)
																			As Dim_OrderDate_Key
		, OE_ORDER_HEADERS_ALL.ORDERED_DATE									As OrderDate
		, DATEDIFF(Day, OE_ORDER_HEADERS_ALL.ORDERED_DATE, getdate())		As DaysOpen
--		, IsNull(Convert(int, Convert(char, DeliveryDate.DeliveryDate, 112)), -1) 
		, IsNull(Convert(int, Convert(char
			, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, ReturnDeliveryDate.ReturnDeliveryDate
--				, OE_ORDER_LINES_ALL.ACTUAL_FULFILLMENT_DATE
				, DeliveryDate.DeliveryDate) 
			, 112)), -1)													As Dim_DeliveryDate_Key
--		, DeliveryDate.DeliveryDate											
		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, ReturnDeliveryDate.ReturnDeliveryDate
--				, OE_ORDER_LINES_ALL.ACTUAL_FULFILLMENT_DATE
				, DeliveryDate.DeliveryDate)								As DeliveryDate

		, OE_ORDER_HEADERS_ALL.SHIPMENT_PRIORITY_CODE						As [Priority]
		, Null																As UserID
		, Null																As Hold
		, Null																As Project

		, OE_ORDER_LINES_ALL.ordered_quantity 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As OrderedQty
		, OE_ORDER_LINES_ALL.cancelled_quantity 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As CancelledQty
		, (IsNull(OE_ORDER_LINES_ALL.ordered_quantity, 0) - IsNull(shipped_quantity, 0)) 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As BackorderedQty
		, IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0) 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As ShippedQty
		, (OE_ORDER_LINES_ALL.ordered_quantity - IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0))
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As [OnOrderQty]
		, OE_ORDER_LINES_ALL.unit_selling_price								As LinePrice
		, IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0) 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1) 
			* OE_ORDER_LINES_ALL.unit_selling_price							As SalesValueExGST
		, IsNull(OE_ORDER_LINES_ALL.tax_value, 0) 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	As GstValue
		--, IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0) 
		--	* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1) 
		--	* OE_ORDER_LINES_ALL.unit_cost									As COGS
		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost)									As COGS
		, 0																	As DiscountRate
		, 0																	As DiscountValue
		, (OE_ORDER_LINES_ALL.ordered_quantity
			- OE_ORDER_LINES_ALL.cancelled_quantity
			- IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0))
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1)	
			* OE_ORDER_LINES_ALL.unit_selling_price							As OnOrderValueExclGST -- Remaining Value
		, 'Oracle'															As SourceSystem

From	[HSTG].[HSTG_EBS_OE_ORDER_HEADERS_ALL] OE_ORDER_HEADERS_ALL
		Join [HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] OE_ORDER_LINES_ALL
			On OE_ORDER_HEADERS_ALL.HEADER_ID = OE_ORDER_LINES_ALL.HEADER_ID
			And OE_ORDER_LINES_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Join [HSTG].[HSTG_EBS_OE_TRANSACTION_TYPES_TL] OE_TRANSACTION_TYPES
			On OE_ORDER_HEADERS_ALL.ORDER_TYPE_ID = OE_TRANSACTION_TYPES.TRANSACTION_TYPE_ID
			And OE_TRANSACTION_TYPES.[NAME] in ('INTRE', '140OR', 'INTERNAL')
			And OE_TRANSACTION_TYPES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS
			On OE_ORDER_LINES_ALL.INVENTORY_ITEM_ID = MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID
			And (MTL_SYSTEM_ITEMS.ORGANIZATION_ID = 89
					Or MTL_SYSTEM_ITEMS.ORGANIZATION_ID Is Null)
			And MTL_SYSTEM_ITEMS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join DeliveryDate
			On OE_ORDER_LINES_ALL.LINE_ID = DeliveryDate.TRX_SOURCE_LINE_ID

		Left Join ReturnDeliveryDate
			On OE_ORDER_LINES_ALL.LINE_ID = ReturnDeliveryDate.TRX_SOURCE_LINE_ID

		Left Join UnitCost
			On OE_ORDER_LINES_ALL.LINE_ID = UnitCost.TRX_SOURCE_LINE_ID

		Left Join UnitReturnCost
			On OE_ORDER_LINES_ALL.LINE_ID = UnitReturnCost.TRX_SOURCE_LINE_ID

		Left Join [HSTG].[HSTG_EBS_HZ_CUST_SITE_USES_ALL] HZ_CUST_SITE_USES_ALL (nolock)
			On OE_ORDER_HEADERS_ALL.ship_to_org_id = HZ_CUST_SITE_USES_ALL.site_use_id
			And HZ_CUST_SITE_USES_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_HZ_CUST_ACCT_SITES_ALL] HZ_CUST_ACCT_SITES_ALL (nolock)
			On HZ_CUST_SITE_USES_ALL.cust_acct_site_id = HZ_CUST_ACCT_SITES_ALL.cust_acct_site_id
			And HZ_CUST_ACCT_SITES_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_HZ_CUST_ACCOUNTS_ALL] HZ_CUST_ACCOUNTS_ALL (nolock)
			On HZ_CUST_ACCT_SITES_ALL.cust_account_id = HZ_CUST_ACCOUNTS_ALL.cust_account_id
			And HZ_CUST_ACCOUNTS_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_FND_FLEX_VALUES] FND_FLEX_VALUES (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = FND_FLEX_VALUES.attribute12 
			And FND_FLEX_VALUES.flex_value not like '3%'
			And FND_FLEX_VALUES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_FND_FLEX_VALUE_SETS] FND_FLEX_VALUE_SETS (nolock)
			On FND_FLEX_VALUES.flex_value_set_id = FND_FLEX_VALUE_SETS.flex_value_set_id
			And FND_FLEX_VALUE_SETS.flex_value_set_name = 'RD_BRANCH'
			And FND_FLEX_VALUE_SETS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_EBS_MTL_PARAMETERS] MTL_PARAMETERS
			On OE_ORDER_LINES_ALL.SHIP_FROM_ORG_ID = MTL_PARAMETERS.ORGANIZATION_ID
			And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [DW].[Dim_Location] As Dim_Location (nolock)
			On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Location.[LocationCode]
			And OE_ORDER_HEADERS_ALL.ORDERED_DATE Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Customer] As Dim_Customer (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = Dim_Customer.[CustomerNumber]
			And OE_ORDER_HEADERS_ALL.ORDERED_DATE Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product] As Dim_Product (nolock)
			On MTL_SYSTEM_ITEMS.SEGMENT1 = Dim_Product.[ItemCode]
			And OE_ORDER_HEADERS_ALL.ORDERED_DATE Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory] As Dim_ProductCategory (nolock)
			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key
			And Dim_ProductCategory.[Dim_EffectiveTo] = '9999-12-31'

		Left Join [DW].[Dim_TransactionSource] As Dim_TransactionSource (nolock)
			On Dim_TransactionSource.TransactionSource = OE_TRANSACTION_TYPES.[DESCRIPTION]
			And Dim_TransactionSource.[Dim_EffectiveTo] = '9999-12-31'

Where	OE_ORDER_HEADERS_ALL.ORG_ID = 85
		And OE_ORDER_LINES_ALL.ordered_quantity > IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0)
		And OE_ORDER_LINES_ALL.ordered_quantity > 0
		And OE_ORDER_HEADERS_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

