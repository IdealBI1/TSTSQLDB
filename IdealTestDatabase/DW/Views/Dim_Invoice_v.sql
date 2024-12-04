
CREATE View [DW].[Dim_Invoice_v]

As

With DebitInvoice As (
		Select Distinct Invoice#
		From	[HSTG].[HSTG_CA_OEINVLIN] (nolock)
		Where	[OMD_IS_RECORD_DELETED] = 'N'
				And [SV Gst Incl] > 0
	)
, CreditNote As (
		Select Distinct Invoice#
		From	[HSTG].[HSTG_CA_OECRDLNK] (nolock)
		Where	[OMD_IS_RECORD_DELETED] = 'N'
			And [OMD_CURRENT_RECORD_INDICATOR] = 'Y'
	)
-- Clear Accounting Invoices
Select	CONVERT(VarCHAR(32),
          HASHBYTES('MD5', ISNULL(CONVERT(NVARCHAR, [OEINVHDR].Invoice#), N'')
		          )
			, 2)										As [Dim_Invoice_Key]
		, Cast([OEINVHDR].Invoice# As bigint)			As TransactionNumber
		, [OEINVHDR].[Trans Date]						As TransactionDate
		, Convert(int, Convert(char, [OEINVHDR].[Trans Date], 112))
														As Dim_Date_Key
		, OEINVHDR.[Line Total]							As ValueIncGST
		, SO#											As [OrderNumber]
		, Case When DebitInvoice.Invoice# Is Null
				Then 'N'
				Else 'Y'
				End										As [HasDebitNote]
		, Case When CreditNote.Invoice# Is Null
				Then 'N'
				Else 'Y'
				End										As [HasCreditNote]
		, Case When [SV Gst Incl] < 0
				Then 'CN'
				Else 'Inv'
				End										As TransactionType
		, 'Clear Accounting'							As Dim_SourceSystem
				
From	[HSTG].[HSTG_CA_OEINVHDR]		As [OEINVHDR] (nolock)
			Left Join CreditNote		
				On [OEINVHDR].Invoice# = CreditNote.Invoice#

			Left Join DebitInvoice
				On [OEINVHDR].Invoice# = DebitInvoice.Invoice#

Where	[OEINVHDR].[OMD_IS_RECORD_DELETED] = 'N'
		And [OEINVHDR].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

Union -- Oracle Invoices

Select	Distinct 
		CONVERT(VarCHAR(32),
          HASHBYTES('MD5', ISNULL(CONVERT(NVARCHAR, OE_ORDER_HEADERS_ALL.ORDER_NUMBER), N'')
		          )
			, 2)										As [Dim_Invoice_Key]
		, OE_ORDER_HEADERS_ALL.ORDER_NUMBER				As TransactionNumber
		, OE_ORDER_HEADERS_ALL.ORDERED_DATE				As TransactionDate
		, Convert(int, Convert(char, OE_ORDER_HEADERS_ALL.ORDERED_DATE, 112))
														As Dim_Date_Key
		, Sum((IsNull(OE_ORDER_LINES_ALL.shipped_quantity, 0) 
					* OE_ORDER_LINES_ALL.unit_selling_price 
				+ IsNull(OE_ORDER_LINES_ALL.tax_value, 0))
				* IIF(OE_ORDER_LINES_ALL.line_category_code = 'RETURN', -1, 1) 
				)										As ValueIncGST
		, OE_ORDER_HEADERS_ALL.CUST_PO_NUMBER			As [OrderNumber]
		, 'N'											As [HasDebitNote]
		, 'N'											As [HasCreditNote]
		, 'SO'											As TransactionType
		, 'Oracle'										As Dim_SourceSystem

From	[HSTG].[HSTG_EBS_OE_ORDER_HEADERS_ALL] OE_ORDER_HEADERS_ALL
		Join [HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] OE_ORDER_LINES_ALL
			On OE_ORDER_HEADERS_ALL.HEADER_ID = OE_ORDER_LINES_ALL.HEADER_ID
		Join [HSTG].[HSTG_EBS_OE_TRANSACTION_TYPES_TL] OE_TRANSACTION_TYPES
			On OE_ORDER_HEADERS_ALL.ORDER_TYPE_ID = OE_TRANSACTION_TYPES.TRANSACTION_TYPE_ID
			And OE_TRANSACTION_TYPES.[NAME] in ('INTRE', '140OR', 'INTERNAL')

Where	OE_ORDER_HEADERS_ALL.ORG_ID = 85
Group By OE_ORDER_HEADERS_ALL.ORDER_NUMBER
		, OE_ORDER_HEADERS_ALL.ORDERED_DATE
		, OE_ORDER_HEADERS_ALL.CUST_PO_NUMBER

Union -- 'Unknown' Record

Select	'0'			As [Dim_Invoice_Key]
		, 0			As InvoiceNumber
		, Null		As InvoiceDate
		, 0			As Dim_Date_Key
		, 0			As InvoiceValueIncGST
		, 'Unknown'	As [SalesOrderNumber]
		, 'U'		As [HasDebitNote]
		, 'U'		As [HasCreditNote]
		, 'Ukn'		As InvoiceTransactionType
		, 'Unknown'	As Dim_SourceSystem

