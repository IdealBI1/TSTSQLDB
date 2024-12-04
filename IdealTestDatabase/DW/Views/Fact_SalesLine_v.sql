

CREATE View [DW].[Fact_SalesLine_v]

As 
-- Oracle CTE
With OnOrder As (
	Select	PO_LINES_ALL.item_id
			, PO_LINE_LOCATIONS_ALL.ship_to_organization_id
			, sum(PO_LINE_LOCATIONS_ALL.quantity - PO_LINE_LOCATIONS_ALL.quantity_received) As OnOrderQty
	From	[LND].[LND_EBS_PO_LINE_LOCATIONS_ALL_TBR] PO_LINE_LOCATIONS_ALL (nolock)
			Join [LND].[LND_EBS_PO_LINES_ALL_TBR] PO_LINES_ALL (nolock)
				On PO_LINE_LOCATIONS_ALL.PO_HEADER_ID = PO_LINES_ALL.PO_HEADER_ID
				And PO_LINE_LOCATIONS_ALL.PO_LINE_ID = PO_LINES_ALL.PO_LINE_ID
	Where	PO_LINE_LOCATIONS_ALL.closed_code = 'OPEN'
	Group By PO_LINES_ALL.item_id, PO_LINE_LOCATIONS_ALL.ship_to_organization_id
)
-- Clear Accounting Sales Orders

Select	SOLINE.[So#]											As [OrderNumber]
		, Cast(SOLINE.[Sol#] As int)							As [LineNumber]

		, IsNull(Dim_Location.Dim_Location_Key, '0')			As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')			As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')				As Dim_Product_Key
		, Convert(int, Convert(char, SOLINE.[Deliv Date], 112))
																As Dim_DeliveryDate_Key
		, Convert(int, Convert(char, SOMAST.[Order Date], 112))
																As Dim_OrderDate_Key
		, Case When [SOMAST].[Order Source] = 'WEBSHOP' Then 4
			When [SOMAST].[Order Source] = 'MOBILE' Then 5
			When [SOMAST].[Order Source] = 'EDI' Then 6
			When Left([SOMAST].[Order Source], 2) = 'SO' Then 2
			When Left([SOMAST].[Order Source], 2) = 'SQ' Then 3
			When [SOMAST].[Order Source] Is Null Then 1
			Else 99
			End													As [Dim_TransactionSource_Key]

		, SOLINE.[Deliv Date]									As [DeliveryDate]
		, SOMAST.[Order Date]									As [OrderDate]

		, SOLINE.P												As [Priority]
		, SOMAST.Spn											As [UserID]
		, SOMAST.H												As [Hold]
		, SOMAST.P												As [Project]

		, SOLINE.[Order Qty]									As [OrderedQty]
		, SOLINE.[Cancel Qty]									As [CancelledQty]
		, SOLINE.[Commit Qty]									As [CommittedQty]
		, SOLINE.[Bord Qty]										As [BackorderedQty]
		, SOLINE.[Prev SupQty]									As [SupplyQty]
		, SOLINE.[Inv Qty]										As [InvoicedQty]
		, SOLINE.[Po Qty]										As [OnOrderQty]

		, SOLINE.LinePrice										As [LinePrice]
		, SOLINE.[OV Gst Incl]									As [ValueInclGST]
		, SOLINE.[Gst Value]
		, SOLINE.[Disc %]										As [DiscountRate]
		, SOLINE.[Disc Value]									As [DiscountValue]
		
		, (SOLINE.[Order Qty] - SOLINE.[Cancel Qty]- SOLINE.[Inv Qty])
			* SOLINE.LinePrice 
			* (1 - SOLINE.[Disc %] / 100)
																As [ValueExclGST] -- Remaining Value

From	[HSTG].[HSTG_CA_SOLINE]			As [SOLINE] (nolock)

		Join [HSTG].[HSTG_CA_SOMAST]	As [SOMAST] (nolock)
			On [SOLINE].[So#] = [SOMAST].[So#]
			And [SOMAST].[OMD_IS_RECORD_DELETED] = 'N'
			And [SOMAST].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [DW].[Dim_Location_v] As Dim_Location (nolock)
			On [SOMAST].Loc = Dim_Location.[LocationCode]
			And SOMAST.[Order Date] Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Customer_v] As Dim_Customer (nolock)
			On [SOMAST].[Cust#] = Dim_Customer.[CustomerNumber]
			And SOMAST.[Order Date] Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product_v] As Dim_Product (nolock)
			On [SOLINE].[Item Code] = Dim_Product.[ItemCode]
			And SOMAST.[Order Date] Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

Where	[SOLINE].[OMD_IS_RECORD_DELETED] = 'N'
		And [SOLINE].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

Union -- Oracle Sales Orders

Select	
		OE_ORDER_HEADERS_ALL.ORDER_NUMBER						As OrderNumber
		, OE_ORDER_LINES_ALL.LINE_NUMBER						As LineNumber

		, IsNull(Dim_Location.Dim_Location_Key, '0')			As Dim_Location_Key
		, IsNull(Dim_Customer.Dim_Customer_Key, '0')			As Dim_Customer_Key
		, IsNull(Dim_Product.Dim_Product_Key, '0')				As Dim_Product_Key
		, Convert(int, Convert(char, WSH_NEW_DELIVERIES.CONFIRM_DATE, 112))
																As Dim_DeliveryDate_Key
		, Convert(int, Convert(char, OE_ORDER_HEADERS_ALL.ordered_date, 112))
																As Dim_OrderDate_Key

		, Case When OE_ORDER_HEADERS_ALL.GLOBAL_ATTRIBUTE20 = 'W' then 4 --'Webshop' 
				When OE_ORDER_HEADERS_ALL.GLOBAL_ATTRIBUTE20 is null 
					then Dim_TransactionSource.Dim_TransactionSource_Key
				End												As [Dim_TransactionSource_Key]

		, WSH_NEW_DELIVERIES.CONFIRM_DATE						As DeliveryDate
		, OE_ORDER_HEADERS_ALL.ordered_date						As OrderDate

		, OE_ORDER_HEADERS_ALL.SHIPMENT_PRIORITY_CODE			As [Priority]
		, Null													As [UserID]
		, Null													As [Hold]
		, Null													As [Project]

		, OE_ORDER_LINES_ALL.ordered_quantity					As OrderedQty
		, OE_ORDER_LINES_ALL.cancelled_quantity					As CancelledQty
		, OE_ORDER_LINES_ALL.shipped_quantity					As CommittedQty
		, OE_ORDER_LINES_ALL.ordered_quantity 
			- OE_ORDER_LINES_ALL.shipped_quantity				As BackorderedQty
		, Null													As SupplyQty
		, RA_CUSTOMER_TRX_LINES_ALL.quantity_invoiced			As InvoicedQty
		, OnOrder.OnOrderQty									As OnOrderQty

		, OE_ORDER_LINES_ALL.UNIT_SELLING_PRICE					As LinePrice
		, OE_ORDER_LINES_ALL.UNIT_SELLING_PRICE 
				* OE_ORDER_LINES_ALL.ordered_quantity 
			+ isNull(OE_ORDER_LINES_ALL.tax_value, 0)			As ValueInclGST
		, OE_ORDER_LINES_ALL.tax_value							As GstValue
		, 0														As [DiscountRate]
		, 0														As [DiscountValue]
		, OE_ORDER_LINES_ALL.UNIT_SELLING_PRICE 
				* OE_ORDER_LINES_ALL.ordered_quantity 
			- isNull(OE_ORDER_LINES_ALL.tax_value, 0)			As ValueExclGST

From	[HSTG].[HSTG_EBS_OE_ORDER_HEADERS_ALL] OE_ORDER_HEADERS_ALL (nolock)
		Join  [HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] OE_ORDER_LINES_ALL (nolock)
			On OE_ORDER_HEADERS_ALL.HEADER_ID = OE_ORDER_LINES_ALL.HEADER_ID
			And OE_ORDER_HEADERS_ALL.ORG_ID = OE_ORDER_LINES_ALL.ORG_ID
		Join [HSTG].[HSTG_EBS_RA_CUSTOMER_TRX_LINES_ALL] RA_CUSTOMER_TRX_LINES_ALL (nolock)
			On Cast(OE_ORDER_LINES_ALL.line_id As varchar) = Cast(RA_CUSTOMER_TRX_LINES_ALL.interface_line_attribute6 As varchar)
		Left Join [HSTG].[HSTG_EBS_OE_ORDER_SOURCES] OE_ORDER_SOURCES (nolock)
			On OE_ORDER_HEADERS_ALL.order_source_id = OE_ORDER_SOURCES.order_source_id
		Join [HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)
			On OE_ORDER_LINES_ALL.INVENTORY_ITEM_ID = MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID
			And MTL_SYSTEM_ITEMS.ORGANIZATION_ID = 89
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

		Left Join [HSTG].[HSTG_EBS_WSH_DELIVERY_DETAILS] WSH_DELIVERY_DETAILS (nolock)
			On OE_ORDER_LINES_ALL.LINE_ID = WSH_DELIVERY_DETAILS.SOURCE_LINE_ID
			And WSH_DELIVERY_DETAILS.SOURCE_CODE = 'OE'
		Join [HSTG].[HSTG_EBS_WSH_DELIVERY_ASSIGNMENTS] WSH_DELIVERY_ASSIGNMENTS (nolock)
			On WSH_DELIVERY_DETAILS.DELIVERY_DETAIL_ID = WSH_DELIVERY_ASSIGNMENTS.DELIVERY_DETAIL_ID
		Join [HSTG].[HSTG_EBS_WSH_NEW_DELIVERIES] WSH_NEW_DELIVERIES (nolock)
			On WSH_DELIVERY_ASSIGNMENTS.DELIVERY_ID = WSH_NEW_DELIVERIES.DELIVERY_ID

		Left Join OnOrder
			On OE_ORDER_LINES_ALL.SHIP_FROM_ORG_ID = OnOrder.SHIP_TO_ORGANIZATION_ID
			And OE_ORDER_LINES_ALL.INVENTORY_ITEM_ID = OnOrder.ITEM_ID

		Left Join [DW].[Dim_Location_v] As Dim_Location (nolock)
			On FND_FLEX_VALUES.flex_value = Dim_Location.[LocationCode]
			And OE_ORDER_HEADERS_ALL.ordered_date Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

		Left Join [DW].[Dim_Customer_v] As Dim_Customer (nolock)
			On HZ_CUST_ACCOUNTS_ALL.account_number = Dim_Customer.[CustomerNumber]
			And OE_ORDER_HEADERS_ALL.ordered_date Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

		Left Join [DW].[Dim_Product_v] As Dim_Product (nolock)
			On RA_CUSTOMER_TRX_LINES_ALL.INVENTORY_ITEM_ID = Dim_Product.OracleID
			And OE_ORDER_HEADERS_ALL.ordered_date Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

		Left Join [DW].[Dim_TransactionSource_v] As Dim_TransactionSource (nolock)
			On OE_ORDER_SOURCES.[name] = Dim_TransactionSource.TransactionSource

