
CREATE View [DW].[Fact_InvoiceLine_Old_v]

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
-- Clear Accounting Invoices
Select	
		Cast([OEINVHDR].[Invoice#] As bigint)					As [InvoiceNumber]
		, Cast([OEINVLIN].[Inl#] As int)						As [LineNumber]
		, IsNull(Dim_Invoice.Dim_Invoice_Key, '0')				As Dim_Invoice_Key
		, IsNull(Dim_Location.Dim_Location_Key, '0')			As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')			As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')				As Dim_Product_Key
		, IsNull(Dim_Product.Dim_ProductCategory_Key, '0')		As Dim_ProductCategory_Key
		, Case When [SOMAST].[Order Source] = 'WEBSHOP' Then 4
			When [SOMAST].[Order Source] = 'MOBILE' Then 5
			When [SOMAST].[Order Source] = 'EDI' Then 6
			When Left([SOMAST].[Order Source], 2) = 'SO' Then 2
			When Left([SOMAST].[Order Source], 2) = 'SQ' Then 3
			When [SOMAST].[Order Source] Is Null Then 1
			Else 99
			End													As [Dim_TransactionSource_Key]
		, Convert(int, Convert(char, [OEINVLIN].[Trans Date], 112))
																As Dim_Date_Key
		, [OEINVHDR].[Trans Date]								As TransactionDate
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
		, 'Clear Accounting'									As SourceSystem

From	[HSTG].[HSTG_CA_OEINVLIN]			As [OEINVLIN] (nolock)

		Left Join [HSTG].[HSTG_CA_OEINVHDR]		As [OEINVHDR] (nolock)
			On [OEINVLIN].Invoice# = [OEINVHDR].Invoice#
			And [OEINVHDR].[OMD_IS_RECORD_DELETED] = 'N'
			And [OEINVHDR].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [DW].[Dim_Location_v] As Dim_Location (nolock)
			On [OEINVLIN].Loc = Dim_Location.[LocationCode]
			And [OEINVLIN].[Trans Date] Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Invoice_v] As Dim_Invoice (nolock)
			On [OEINVLIN].Invoice# = Dim_Invoice.InvoiceNumber

		Left Join [DW].[Dim_Customer_v] As Dim_Customer (nolock)
			On [OEINVLIN].[Cust#] = Dim_Customer.[CustomerNumber]
			And [OEINVLIN].[Trans Date] Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product_v] As Dim_Product (nolock)
			On [OEINVLIN].[Item Code] = Dim_Product.[ItemCode]
			And [OEINVLIN].[Trans Date] Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory_v] As Dim_ProductCategory (nolock)
			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key

		Left Join [HSTG].[HSTG_CA_SOMAST]	As [SOMAST] (nolock)
			On [OEINVHDR].[So#] = [SOMAST].[So#]
			And [SOMAST].[OMD_IS_RECORD_DELETED] = 'N'
			And [SOMAST].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

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

Select	Try_Cast(RA_CUSTOMER_TRX_ALL.TRX_NUMBER As Bigint)		As InvoiceNumber
		, RA_CUSTOMER_TRX_LINES_ALL.LINE_NUMBER					As LineNumber

		, IsNull(Dim_Invoice.Dim_Invoice_Key, '0')				As Dim_Invoice_Key
		, IsNull(Dim_Location.Dim_Location_Key, '0')			As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')			As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')				As Dim_Product_Key
		, IsNull(Dim_Product.Dim_ProductCategory_Key, '0')		As Dim_ProductCategory_Key

		, Case When OE_ORDER_HEADERS_ALL.GLOBAL_ATTRIBUTE20 = 'W' then 4 --'Webshop' 
				When OE_ORDER_HEADERS_ALL.GLOBAL_ATTRIBUTE20 is null 
					then Dim_TransactionSource.Dim_TransactionSource_Key
				End												As [Dim_TransactionSource_Key]

		, Convert(int, Convert(char, RA_CUSTOMER_TRX_ALL.TRX_DATE, 112))
																As Dim_Date_Key
		, RA_CUSTOMER_TRX_ALL.TRX_DATE							As TransactionDate

		, Cast(OE_ORDER_HEADERS_ALL.ORDER_NUMBER As nvarchar)	As SalesOrder
		, Cast(OE_ORDER_HEADERS_ALL.ORDER_SOURCE_ID As nvarchar)	As OrderSource

--		, ORDER_LINES_ALL.ordered_quantity
		, OE_ORDER_LINES_ALL.shipped_quantity					As SalesQuantity
--		, CUSTOMER_TRX_LINES_ALL.quantity_invoiced
		, OE_ORDER_LINES_ALL.shipped_quantity 
			* OE_ORDER_LINES_ALL.unit_selling_price				As SalesValueExGST
		, Null													As N3Rebate
		, Null													As IndividualRebate
		, Null													As CustomerRebates
		, OE_ORDER_LINES_ALL.shipped_quantity 
			* OE_ORDER_LINES_ALL.unit_selling_price 
			+ isNull(OE_ORDER_LINES_ALL.tax_value, 0)			As NetSalesValue
		, OE_ORDER_LINES_ALL.shipped_quantity 
			* CST_ITEM_COSTS.item_cost							As COGS
		, Null													As LoyaltyRebate
		, OE_ORDER_LINES_ALL.shipped_quantity 
				* OE_ORDER_LINES_ALL.unit_selling_price 
			- OE_ORDER_LINES_ALL.shipped_quantity 
				* CST_ITEM_COSTS.item_cost						As RawMargin
		, OE_ORDER_LINES_ALL.shipped_quantity 
				* OE_ORDER_LINES_ALL.unit_selling_price 
			- OE_ORDER_LINES_ALL.shipped_quantity 
				* CST_ITEM_COSTS.item_cost							
		-- No Rebates
																As CommercialMargin

		, OE_ORDER_LINES_ALL.shipped_quantity 
			* CST_ITEM_COSTS.item_cost
			* (IsNull(Dim_ProductCategory.[CategoryRebatePCT], 0) / 100)
																As [SupplierRebate]
		, OE_ORDER_LINES_ALL.shipped_quantity 
				* OE_ORDER_LINES_ALL.unit_selling_price 
			- OE_ORDER_LINES_ALL.shipped_quantity 
				* CST_ITEM_COSTS.item_cost							
		-- No Rebates
			+ OE_ORDER_LINES_ALL.shipped_quantity 
				* CST_ITEM_COSTS.item_cost
				* (IsNull(Dim_ProductCategory.[CategoryRebatePCT], 0) / 100)

																As SalesCommercialMarginWithRebates
		, 'Oracle'												As SourceSystem


From	[HSTG].[HSTG_EBS_OE_ORDER_HEADERS_ALL] OE_ORDER_HEADERS_ALL (nolock)
		Join  [HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] OE_ORDER_LINES_ALL (nolock)
			On OE_ORDER_HEADERS_ALL.HEADER_ID = OE_ORDER_LINES_ALL.HEADER_ID
			And OE_ORDER_HEADERS_ALL.ORG_ID = OE_ORDER_LINES_ALL.ORG_ID
		Left Join [HSTG].[HSTG_EBS_OE_ORDER_SOURCES] OE_ORDER_SOURCES (nolock)
			On OE_ORDER_HEADERS_ALL.order_source_id = OE_ORDER_SOURCES.order_source_id
		Left Join [LND].[LND_EBS_CST_ITEM_COSTS_TBR] CST_ITEM_COSTS (nolock)
			On OE_ORDER_LINES_ALL.INVENTORY_ITEM_ID = CST_ITEM_COSTS.INVENTORY_ITEM_ID
			And CST_ITEM_COSTS.ORGANIZATION_ID = 89
		Join [HSTG].[HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL] RA_CUSTOMER_TRX_LINES_ALL (nolock)
			On Cast(OE_ORDER_LINES_ALL.line_id As varchar) = RA_CUSTOMER_TRX_LINES_ALL.interface_line_attribute6
		Join [HSTG].[HSTG_EBS_RA_CUSTOMER_TRX_ALL] RA_CUSTOMER_TRX_ALL (nolock)
			On RA_CUSTOMER_TRX_LINES_ALL.CUSTOMER_TRX_ID = RA_CUSTOMER_TRX_ALL.CUSTOMER_TRX_ID
			And RA_CUSTOMER_TRX_ALL.TRX_NUMBER < 'A'

		Left Join [LND].[LND_EBS_HZ_CUST_SITE_USES_ALL_TBR] HZ_CUST_SITE_USES_ALL (nolock)
			On OE_ORDER_HEADERS_ALL.ship_to_org_id = HZ_CUST_SITE_USES_ALL.site_use_id
		Left Join [LND].[LND_EBS_HZ_CUST_ACCT_SITES_ALL_TBR] HZ_CUST_ACCT_SITES_ALL (nolock)
			On HZ_CUST_SITE_USES_ALL.cust_acct_site_id = HZ_CUST_ACCT_SITES_ALL.cust_acct_site_id
		Left Join [HSTG].[HSTG_EBS_HZ_CUST_ACCOUNTS_ALL] HZ_CUST_ACCOUNTS_ALL (nolock)
			On HZ_CUST_ACCT_SITES_ALL.cust_account_id = HZ_CUST_ACCOUNTS_ALL.cust_account_id
		Left Join [LND].[LND_EBS_FND_FLEX_VALUES_TBR] FND_FLEX_VALUES (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = FND_FLEX_VALUES.attribute12 
			And FND_FLEX_VALUES.flex_value not like '3%'
		Left Join [LND].[LND_EBS_FND_FLEX_VALUE_SETS_TBR] FND_FLEX_VALUE_SETS (nolock)
			On FND_FLEX_VALUES.flex_value_set_id = FND_FLEX_VALUE_SETS.flex_value_set_id
			And FND_FLEX_VALUE_SETS.flex_value_set_name = 'RD_BRANCH'

		Left Join [DW].[Dim_Location_v] As Dim_Location (nolock)
			On FND_FLEX_VALUES.flex_value = Dim_Location.[LocationCode]
			And RA_CUSTOMER_TRX_ALL.TRX_DATE Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Invoice_v] As Dim_Invoice (nolock)
			On Try_Cast(RA_CUSTOMER_TRX_ALL.TRX_NUMBER As Bigint) = Dim_Invoice.InvoiceNumber

		Left Join [DW].[Dim_Customer_v] As Dim_Customer (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = Dim_Customer.[CustomerNumber]
			And RA_CUSTOMER_TRX_ALL.TRX_DATE Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product_v] As Dim_Product (nolock)
			On RA_CUSTOMER_TRX_LINES_ALL.INVENTORY_ITEM_ID = Dim_Product.OracleID
			And RA_CUSTOMER_TRX_ALL.TRX_DATE Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_ProductCategory_v] As Dim_ProductCategory (nolock)
			On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key

		Left Join [DW].[Dim_TransactionSource_v] As Dim_TransactionSource (nolock)
			On OE_ORDER_SOURCES.[name] = Dim_TransactionSource.TransactionSource

