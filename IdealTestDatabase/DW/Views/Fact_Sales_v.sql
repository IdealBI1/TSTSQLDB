







CREATE View [DW].[Fact_Sales_v]

As 

-- Clear Acopunting CTE
With Rebates As (
	Select	Invoice#
			, Inl#
			, Case when T = 'G' Then 'N3Rebate'
				When T = 'R' Then 'IndividualRebate'
				When T = 'T' Then 'LoyaltyRebate'
				Else ''
				End						As [Rebate Type]
			, Sum(RebateVal)			As [Rebate Amount]
	From	[HSTG].[HSTG_CA_OELREB]	As [OELREB] (nolock)
	Where	[OELREB].[OMD_IS_RECORD_DELETED] = 'N'
			And [OELREB].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'
	Group By Invoice#
			, Inl#
			, Inl#
			, Case when T = 'G' Then 'N3Rebate'
				When T = 'R' Then 'IndividualRebate'
				When T = 'T' Then 'LoyaltyRebate'
				Else ''
				End
	) 
-- Oracle CTE
, DeliveryDate As (
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

-- Clear Accounting Invoices
Select	
		Cast([OEINVHDR].[Invoice#] As bigint)					As [InvoiceNumber]
		, Cast([OEINVLIN].[Inl#] As Decimal(10,3))				As [LineNumber]
		, IsNull(Dim_SalesTransaction.Dim_SalesTransaction_Key, -1)	As Dim_SalesTransaction_Key
		, IsNull(Dim_Location.Dim_Location_Key, -1)				As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, -1)				As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, -1)				As Dim_Product_Key
		, IsNull(Dim_ProductCategory.Dim_ProductCategory_Key, -1)		As Dim_ProductCategory_Key
		, Case When [SOMAST].[Order Source] = 'WEBSHOP' Then 4
			When [SOMAST].[Order Source] = 'MOBILE' Then 5
			When [SOMAST].[Order Source] = 'EDI' Then 6
			When Left([SOMAST].[Order Source], 2) = 'SO' Then 2
			When Left([SOMAST].[Order Source], 2) = 'SQ' Then 3
			When [SOMAST].[Order Source] Is Null Then 1
			Else 99
			End													As [Dim_TransactionSource_Key]
		, IsNull(Convert(int, Convert(char, [OEINVLIN].[Trans Date], 112)), -1)
																As Dim_Date_Key
		, [OEINVHDR].[Trans Date]								As TransactionDate

		, IsNull(Convert(int, Convert(char, [SOLINE].[Deliv Date], 112)), -1)
																As Dim_RequestedDate_Key
		, [SOLINE].[Deliv Date]									As RequestedDate

		, IsNull(Convert(int, Convert(char, [OEINVLIN].[Trans Date], 112)), -1)
																As Dim_DeliveryDate_Key
		, [OEINVHDR].[Trans Date]								As DeliveryDate

		, [OEINVHDR].[So#]										As [SalesOrder]
		, [SOMAST].[Order Source]								As [OrderSource]

		, [OEINVLIN].[Sale Qty]									As [SalesQuantity]
		, [OEINVLIN].[SV Gst Incl]								
			- [OEINVLIN].[Gst Value]							As [SalesValueExGST]

		, IsNull(N3Rebate.[Rebate Amount], 0)					As N3Rebate
		, IsNull(IndividualRebate.[Rebate Amount], 0)			As IndividualRebate
		, IsNull(N3Rebate.[Rebate Amount], 0)
			+ IsNull(IndividualRebate.[Rebate Amount], 0)		As CustomerRebate

		, [OEINVLIN].[SV Gst Incl] 
			- [OEINVLIN].[Gst Value] 
			- IsNull(N3Rebate.[Rebate Amount], 0)
			- IsNull(IndividualRebate.[Rebate Amount], 0)		As [NetSalesValue]
		, [OEINVLIN].[Cogs Value]								As [COGS]
		, IsNull(LoyaltyRebate.[Rebate Amount], 0)				As [LoyaltyRebate]

		, [OEINVLIN].[SV Gst Incl] 
			- [OEINVLIN].[Gst Value] 
			- [OEINVLIN].[Cogs Value]							As [RawMargin]

		, [OEINVLIN].[SV Gst Incl] 
			- [OEINVLIN].[Gst Value] 
			- [OEINVLIN].[Cogs Value]
			- IsNull(N3Rebate.[Rebate Amount], 0)
			- IsNull(IndividualRebate.[Rebate Amount], 0)
			- IsNull(LoyaltyRebate.[Rebate Amount], 0)			As [CommercialMargin]

		, [OEINVLIN].[Cogs Value] * (Dim_ProductCategory.[CategoryRebatePCT] / 100)
																As [SupplierRebate]

		, [OEINVLIN].[SV Gst Incl] 
			- [OEINVLIN].[Gst Value] 
			- [OEINVLIN].[Cogs Value]
			- IsNull(N3Rebate.[Rebate Amount], 0)
			- IsNull(IndividualRebate.[Rebate Amount], 0)
			- IsNull(LoyaltyRebate.[Rebate Amount], 0)		
			+ [OEINVLIN].[Cogs Value] * (Dim_ProductCategory.[CategoryRebatePCT] / 100)
																As [SalesCommercialMarginWithRebates]
		, 'Clear Accounting'									As Fact_SourceSystem
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values ([OEINVLIN].OMD_INSERT_DATETIME)
						, ([OEINVHDR].OMD_INSERT_DATETIME)
						, ([SOMAST].OMD_INSERT_DATETIME)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Fact_InsertDateTime

From	[HSTG].[HSTG_CA_OEINVLIN]			As [OEINVLIN] (nolock)

		Left Join [HSTG].[HSTG_CA_OEINVHDR]		As [OEINVHDR] (nolock)
			On [OEINVLIN].Invoice# = [OEINVHDR].Invoice#
			And [OEINVHDR].[OMD_IS_RECORD_DELETED] = 'N'
			And [OEINVHDR].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [DW].[Dim_Location] As Dim_Location (nolock)
			On [OEINVLIN].Loc = Dim_Location.[LocationCode]
			And [OEINVLIN].[Trans Date] Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_SalesTransaction] As Dim_SalesTransaction (nolock)
			On [OEINVLIN].Invoice# = Dim_SalesTransaction.TransactionNumber
			And Dim_SalesTransaction.[Dim_EffectiveTo] = '9999-12-31'

		Left Join [DW].[Dim_Customer] As Dim_Customer (nolock)
			On [OEINVLIN].[Cust#] = Dim_Customer.[CustomerNumber]
			And [OEINVLIN].[Trans Date] Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product] As Dim_Product (nolock)
			On [OEINVLIN].[Item Code] = Dim_Product.[ItemCode]
			And [OEINVLIN].[Trans Date] Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory] As Dim_ProductCategory (nolock)
--			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key
			On [OEINVLIN].OeIncat = Dim_ProductCategory.Incat
			And [OEINVLIN].[Trans Date] Between Dim_ProductCategory.Dim_EffectiveFrom And Dim_ProductCategory.Dim_EffectiveTo

		Left Join [HSTG].[HSTG_CA_SOMAST]	As [SOMAST] (nolock)
			On [OEINVHDR].[So#] = [SOMAST].[So#]
			And [SOMAST].[OMD_IS_RECORD_DELETED] = 'N'
			And [SOMAST].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [HSTG].[HSTG_CA_SOLINE]	As [SOLINE] (nolock)
			On [OEINVHDR].[So#] = [SOLINE].[So#]
			And [OEINVLIN].Inl# = [SOLINE].Sol#
			And [SOLINE].[OMD_IS_RECORD_DELETED] = 'N'
			And [SOLINE].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join Rebates As N3Rebate (nolock)
			On [OEINVLIN].Invoice# = N3Rebate.Invoice#
			And [OEINVLIN].Inl# = N3Rebate.Inl#
			And N3Rebate.[Rebate Type] = 'N3Rebate'

		Left Join Rebates As [IndividualRebate] (nolock)
			On [OEINVLIN].Invoice# = IndividualRebate.Invoice#
			And [OEINVLIN].Inl# = IndividualRebate.Inl#
			And IndividualRebate.[Rebate Type] = 'IndividualRebate'

		Left Join Rebates As LoyaltyRebate (nolock)
			On [OEINVLIN].Invoice# = LoyaltyRebate.Invoice#
			And [OEINVLIN].Inl# = LoyaltyRebate.Inl#
			And LoyaltyRebate.[Rebate Type] = 'LoyaltyRebate'

Where	[OEINVLIN].[OMD_IS_RECORD_DELETED] = 'N'
		And [OEINVLIN].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'
	
Union -- Oracle Invoices

Select	OE_ORDER_HEADERS_ALL.ORDER_NUMBER								As OrderNumber
		, Format(OE_ORDER_LINES_ALL.LINE_NUMBER, '#') + '.' 
			+ Format(OE_ORDER_LINES_ALL.SHIPMENT_NUMBER, '#')			As LineNumber		
		, IsNull(Dim_SalesTransaction.Dim_SalesTransaction_Key, -1)		As Dim_Invoice_Key
		, IsNull(Dim_Location.Dim_Location_Key, -1)						As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, -1)						As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, -1)						As Dim_Product_Key
		, IsNull(Dim_Product.Dim_ProductCategory_Key, -1)				As Dim_ProductCategory_Key
		, IsNull(Dim_TransactionSource.Dim_TransactionSource_Key, -1)	As Dim_TransactionSource_Key

		, IsNull(Convert(int, Convert(char, OE_ORDER_HEADERS_ALL.ordered_date, 112)), -1)
																		As Dim_Date_Key
		, OE_ORDER_HEADERS_ALL.ordered_date								As TransactionDate
		, IsNull(Convert(int, Convert(char, OE_ORDER_LINES_ALL.REQUEST_DATE, 112)), -1)
																		As Dim_RequestedDate_Key
		, OE_ORDER_LINES_ALL.REQUEST_DATE								As RequestedDate
		, IsNull(Convert(int, Convert(char
			, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, ReturnDeliveryDate.ReturnDeliveryDate
				, DeliveryDate.DeliveryDate) 
			, 112)), -1)												As Dim_DeliveryDate_Key
		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, ReturnDeliveryDate.ReturnDeliveryDate
				, DeliveryDate.DeliveryDate)							As DeliveryDate

		, OE_ORDER_HEADERS_ALL.ORDER_NUMBER								As SalesOrder
		, Null															As OrderSource
		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)					As SalesQuantity
		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity) 
			* OE_ORDER_LINES_ALL.unit_selling_price						As SalesValueExGST

		, Null															As N3Rebate
		, Null															As IndividualRebate
		, Null															As CustomerRebate

		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* OE_ORDER_LINES_ALL.unit_selling_price						As NetSalesValue

		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost)								As COGS

		, Null															As LoyaltyRebate

		, (IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* OE_ORDER_LINES_ALL.unit_selling_price)
		  - (IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost))								As RawMargin

		, (IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* OE_ORDER_LINES_ALL.unit_selling_price)
		  - (IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost))								As CommercialMargin

		, IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* OE_ORDER_LINES_ALL.unit_selling_price
			* (Dim_ProductCategory.[CategoryRebatePCT] / 100)			As SupplierRebate


		, ((IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* OE_ORDER_LINES_ALL.unit_selling_price)
		  - (IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
				, -1 * OE_ORDER_LINES_ALL.FULFILLED_QUANTITY
				, OE_ORDER_LINES_ALL.shipped_quantity)
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost)))
		  + (IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0) 
			* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN'
					, -1 * UnitReturnCost.UnitReturnCost
					, UnitCost.UnitCost)
			* (Dim_ProductCategory.[CategoryRebatePCT] / 100))			As SalesCommercialMarginWithRebates

		, 'Oracle'									As Fact_SourceSystem
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values (OE_ORDER_HEADERS_ALL.OMD_INSERT_DATETIME)
						, (OE_ORDER_LINES_ALL.OMD_INSERT_DATETIME)
						, (OE_TRANSACTION_TYPES.OMD_INSERT_DATETIME)
						, (MTL_SYSTEM_ITEMS.OMD_INSERT_DATETIME)
						, (HZ_CUST_SITE_USES_ALL.OMD_INSERT_DATETIME)
						, (HZ_CUST_ACCT_SITES_ALL.OMD_INSERT_DATETIME)
						, (HZ_CUST_ACCOUNTS_ALL.OMD_INSERT_DATETIME)
						, (FND_FLEX_VALUES.OMD_INSERT_DATETIME)
						, (FND_FLEX_VALUE_SETS.OMD_INSERT_DATETIME)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Fact_InsertDateTime

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

		Left Join [DW].[Dim_SalesTransaction] As Dim_SalesTransaction (nolock)
			On OE_ORDER_HEADERS_ALL.ORDER_NUMBER = Dim_SalesTransaction.TransactionNumber
			And Dim_SalesTransaction.[Dim_EffectiveTo] = '9999-12-31'

		Left Join [DW].[Dim_Customer] As Dim_Customer (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = Dim_Customer.[CustomerNumber]
			And OE_ORDER_HEADERS_ALL.ORDERED_DATE Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product] As Dim_Product (nolock)
			On MTL_SYSTEM_ITEMS.SEGMENT1 = Dim_Product.[ItemCode]
			And OE_ORDER_HEADERS_ALL.ORDERED_DATE Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory] As Dim_ProductCategory (nolock)
			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key
--			And Dim_ProductCategory.[Dim_EffectiveTo] = '9999-12-31'

		Left Join [DW].[Dim_TransactionSource] As Dim_TransactionSource (nolock)
			On Dim_TransactionSource.TransactionSource = OE_TRANSACTION_TYPES.[DESCRIPTION]
			And Dim_TransactionSource.[Dim_EffectiveTo] = '9999-12-31'

Where	OE_ORDER_HEADERS_ALL.OMD_IS_RECORD_DELETED = 'N'
		And OE_ORDER_HEADERS_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'
		And OE_ORDER_HEADERS_ALL.ORG_ID = 85

