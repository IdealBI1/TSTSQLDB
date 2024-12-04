
CREATE View [DW].[Fact_InventoryHistory_v] 

As

With  
LastSnapshotDate As (
    Select IsNull(DateAdd(Day, 1, Cast(cast(Max(SnapshotDateKey) As varchar(8)) As Date)), '2022-06-01') As LastSnapshotDate
    From    DW.Fact_InventoryHistory (nolock) 
)
-- CA CTE Tables
, StockDates As (
        Select	[Item Code] As ItemCode
                , Loc
                , Cast(Cast(OMD_INSERT_DATETIME As Date) As datetime2) As FromDate
                , IsNull(Dateadd(Second, -1, Lead(Cast(Cast(OMD_INSERT_DATETIME As Date) As Datetime2)) Over(Partition By [Item Code], Loc Order By OMD_INSERT_DATETIME))
					    , Cast ('9999-12-31' As datetime2)) As ToDate
        From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        )
, CAReportingDates As (
    SELECT  Distinct Dateadd(Day, -1, Cast(FromDate As Date)) As ReportingDate, Cast(FromDate As Date) As CATransDate
    From    StockDates
            Join LastSnapshotDate
                On StockDates.FromDate > LastSnapshotDate.LastSnapshotDate
)
, InTransit As (
        SELECT  Loc
                , ItemCode
                , ReportingDate
                , Sum(Qty)  Qty
                , Sum(CogsValue) CogsValue
                -- , FromDate
                -- , ToDate
        FROM    (
                Select	Loc
                        , [Item Code] As ItemCode
                        , S As TranStatus
                        , [Trans Qty] As Qty
                        , [Cogs Value] As CogsValue
                        , Cast(Cast(OMD_INSERT_DATETIME As Date) As datetime2) As FromDate
                        , IsNull(Dateadd(Second, -1, Lead(Cast(Cast(OMD_INSERT_DATETIME As Date) As Datetime2)) Over(Partition By Recnum, [Trans Date], [Item Code], Lin# Order By OMD_INSERT_DATETIME))
                                , Cast ('9999-12-31' As datetime2)) As ToDate
                From    [HSTG].[HSTG_CA_INTRAN] [INTRAN] (nolock)
                WHERE   OMD_IS_RECORD_DELETED = 'N'
                        And [Type] = 'INTFI'
                ) InTrans
                Join CAReportingDates 
                    On CAReportingDates.CATransDate Between InTrans.FromDate And InTrans.ToDate
                    And ISNULL(InTrans.TranStatus, 'A') <> 'A'
        Group By Loc
                , ItemCode
                , ReportingDate
        )
-- Oracle  CTE Tables        
, OracleReportingDates As (
    SELECT  Distinct Cast(AS_OF_DATE As Date) As ReportingDate
    From    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT (nolock) 
            Join LastSnapshotDate
                On HSTG_EBS_RD_BI_INV_VALUES_RPT.AS_OF_DATE > Dateadd(Day, -1, LastSnapshotDate.LastSnapshotDate)
) 
, OracleReceiptDates As (
Select  RCV_TRANSACTIONS.ORGANIZATION_ID
        , PO_LINES_ALL.ITEM_ID
        , min(RCV_TRANSACTIONS.transaction_date) First_PO_Receipt_Date
        , max(RCV_TRANSACTIONS.transaction_date) Last_PO_Receipt_Date

From    HSTG.HSTG_EBS_PO_LINES_ALL PO_LINES_ALL (nolock)
        Join HSTG.HSTG_EBS_RCV_TRANSACTIONS RCV_TRANSACTIONS (nolock)
            On PO_LINES_ALL.PO_LINE_ID = RCV_TRANSACTIONS.PO_LINE_ID
            And RCV_TRANSACTIONS.TRANSACTION_TYPE = 'RECEIVE'
            And RCV_TRANSACTIONS.META_DELETE_INDICATOR = 'N'

WHERE   IsNull(PO_LINES_ALL.CANCEL_FLAG, 'N') = 'N'
        And PO_LINES_ALL.OMD_IS_RECORD_DELETED = 'N'
Group By RCV_TRANSACTIONS.ORGANIZATION_ID
        , PO_LINES_ALL.ITEM_ID    
)
, OracleLastSale As (
Select  SHIP_FROM_ORG_ID As ORGANIZATION_ID
        , INVENTORY_ITEM_ID As ITEM_ID
        , Max(CREATION_DATE) As LastSaleDate
FROM    [HSTG].[HSTG_EBS_OE_ORDER_LINES_ALL] (nolock)
WHERE   OMD_IS_RECORD_DELETED = 'N'
		And OMD_CURRENT_RECORD_INDICATOR = 'Y'
		And ORG_ID = 85
        And line_category_code <> 'RETURN'
        And SHIP_FROM_ORG_ID Is Not Null
Group By SHIP_FROM_ORG_ID
        , INVENTORY_ITEM_ID
)
--CA Inventory       
SELECT  Convert(int, Convert(varchar(8), CAReportingDates.ReportingDate, 112)) As  SnapshotDateKey
        -- , INLOCAT.Loc As LocationCode
        -- , INLOCAT.[Item Code] As ItemCode
        , IsNull(Dim_Location.Dim_Location_Key, -1)                         As Dim_Location_Key
        , IsNull(Dim_Product.Dim_Product_Key, -1)                           As Dim_Product_Key
        , IsNull(BinKey.Dim_Bin_Key, -1)                                    As Dim_Bin_Key

        , [INLOCAT].[1st Purch]                                             As StartDate
        , [INLOCAT].[Last Sale]                                             As LastSale
        , [INLOCAT].[Last Purch]                                            As LastPurchase
        , [INLOCSUP].[Loc Buy Prc]                                          As LastBuyPrice
        , [INLOCAT].[Stock Qty]                                             As InventoryTotalQty 
        , Round(INLOCAT.[Value @ Cost], 2)                                  As InventoryTotalValue
        , Round(Case When [INLOCAT].[Stock Qty] = 0 
                    Then 0
                    Else (INLOCAT.[Value @ Cost] / [INLOCAT].[Stock Qty])
                    End, 2)                                                 As InventoryAVGPrice

        , [INLOCAT].[Commit Qty]                                            As CommitedInventoryQty
        , Round(Case When [INLOCAT].[Stock Qty] = 0 
                    Then 0
                    Else (INLOCAT.[Value @ Cost] / [INLOCAT].[Stock Qty])
                    End
                * [INLOCAT].[Commit Qty], 2)                                As CommitedInventoryValue

        , IsNull(InTransit.Qty, 0)                                          As InTransitQty
        , IsNull(InTransit.CogsValue, 0)                                    As InTransitValue

        , 0                                                                 As OnConsignmentQty
        , 0                                                                 As OnConsignmentValue

        , [INLOCAT].[Stock Qty] - [INLOCAT].[Commit Qty]                    As InventoryQty
        , Round(INLOCAT.[Value @ Cost] - 
            (Case When [INLOCAT].[Stock Qty] = 0 Then 0
            Else (INLOCAT.[Value @ Cost] / [INLOCAT].[Stock Qty])
            End
            * [INLOCAT].[Commit Qty]), 2)                                   As InventoryValue
       , [INLOCAT].[TrOpen Qty]                                             As OnRequestQty
       , [INLOCAT].[Border Qty]                                             As BackorderQty
       , [INLOCAT].[Po Qty]                                                 As POQty

        , 'Clear Accounting'								                As Fact_SourceSystem 
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
                                                                            As Fact_UpdateDateTime
From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        Join StockDates
            Join CAReportingDates 
                On CAReportingDates.CATransDate Between StockDates.FromDate And StockDates.ToDate
            On INLOCAT.[Item Code] = StockDates.ItemCode
            And INLOCAT.Loc = StockDates.Loc
            And INLOCAT.OMD_INSERT_DATETIME Between StockDates.FromDate and StockDates.ToDate
        Left Join [HSTG].[HSTG_CA_INLOCSUP]	[INLOCSUP] (nolock)
            On INLOCAT.loc = INLOCSUP.Loc
            And INLOCAT.[Item Code] = INLOCSUP.[Item Code]
            And INLOCSUP.[OMD_IS_RECORD_DELETED] = 'N'
            And INLOCSUP.OMD_INSERT_DATETIME Between StockDates.FromDate and StockDates.ToDate
        Left Join InTransit
            On INLOCAT.[Item Code] = InTransit.ItemCode
            And INLOCAT.Loc = InTransit.Loc
            And CAReportingDates.ReportingDate = InTransit.ReportingDate
        Left Join DW.Dim_Product (nolock)
            On INLOCAT.[Item Code] = Dim_Product.ItemCode
            And CAReportingDates.ReportingDate Between Dim_Product.Dim_EffectiveFrom and Dim_Product.Dim_EffectiveTo
        Left Join DW.Dim_Location (nolock)
            On Format(INLOCAT.[Loc], '#') = Dim_Location.LocationCode
            And CAReportingDates.ReportingDate Between Dim_Location.Dim_EffectiveFrom and Dim_Location.Dim_EffectiveTo
        Left Join (
                SELECT  INLBIN.Loc, INLBIN.[Item Code], Dim_Bin_Key
                        , COUNT(*) Over(PARTITION By INLBIN.Loc, INLBIN.[Item Code]) C
                        , ROW_NUMBER() Over(PARTITION By INLBIN.Loc, INLBIN.[Item Code] Order By BinCode, BinSequence) O
                From    [HSTG].[HSTG_CA_INLBIN]	[INLBIN] (nolock)
                        Join DW.Dim_Bin (nolock)
                            On Format(INLBIN.[Loc], '#') = Dim_Bin.LocationCode
                            And INLBIN.Bin = Dim_Bin.BinCode
                            And INLBIN.Seq = Dim_Bin.BinSequence
                WHERE   INLBIN.OMD_CURRENT_RECORD_INDICATOR = 'Y'
                        And INLBIN.OMD_IS_RECORD_DELETED = 'N'
                        And Dim_EffectiveTo = '9999-12-31'
                ) BinKey
            On INLOCAT.[Item Code] = BinKey.[Item Code]
                And INLOCAT.Loc = BinKey.Loc
                And BinKey.O = 1

Where	[INLOCAT].[OMD_IS_RECORD_DELETED] = 'N'
        And ([Value @ Cost] <> 0.0
            Or [Stock Qty] <> 0.0
            Or [Commit Qty] <> 0
            Or [Po Qty] <> 0.0
            )
       And [INLOCAT].Loc Not IN ('110', '120')
UNION   ALL
SELECT   Convert(int, Convert(varchar(8), ReportingDate, 112))  As  SnapshotDateKey
        -- , RD_BI_INV_VALUES_RPT.DC                               As LocationCode
        -- , RD_BI_INV_VALUES_RPT.ITEM_CODE                        As ItemCode
        , IsNull(Dim_Location.Dim_Location_Key, -1)             As Dim_Location_Key
        , IsNull(Dim_Product.Dim_Product_Key, -1)               As Dim_Product_Key
        , IsNull(Dim_Bin.Dim_Bin_Key, -1)                       As Dim_Bin_Key

        , OracleReceiptDates.First_PO_Receipt_Date              As StartDate
        , OracleLastSale.LastSaleDate                           As LastSale
        , OracleReceiptDates.Last_PO_Receipt_Date               As LastPurchase
        , 0                                                     As LastBuyPrice

        , RD_BI_INV_VALUES_RPT.STOCK_QTY 
            + RD_BI_INV_VALUES_RPT.INTRANSIT_QTY 
            + RD_BI_INV_VALUES_RPT.RECEIVING_QTY                As InventoryTotalQty 
        , RD_BI_INV_VALUES_RPT.STOCK_VALUE 
            + RD_BI_INV_VALUES_RPT.INTRANSIT_VALUE 
            + RD_BI_INV_VALUES_RPT.RECEIVING_VALUE              As InventoryTotalValue

        , RD_BI_INV_VALUES_RPT.ITEM_COST                        As InventoryAVGPrice
        , 0                                                     As CommitedInventoryQty
        , 0                                                     As CommitedInventoryValue
        , RD_BI_INV_VALUES_RPT.INTRANSIT_QTY                    As InTransitQty
        , RD_BI_INV_VALUES_RPT.INTRANSIT_VALUE                  As InTransitValue
        , 0                                                     As OnConsignmentQty
        , 0                                                     As OnConsignmentValue        
        , RD_BI_INV_VALUES_RPT.STOCK_QTY                        As InventoryQty
        , RD_BI_INV_VALUES_RPT.STOCK_VALUE                      As InventoryValue
        , 0                                                     As OnRequestQty
        , RD_BI_INV_VALUES_RPT.BO_QTY                           As BackorderQty
        , RD_BI_INV_VALUES_RPT.UNRECEIVED_PO_QTY                As POQty
        , 'Oracle'								                As Fact_SourceSystem 
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2) 
                                                                As Fact_UpdateDateTime

FROM    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT RD_BI_INV_VALUES_RPT (nolock)
        Join OracleReportingDates
            On OracleReportingDates.ReportingDate = Cast(RD_BI_INV_VALUES_RPT.AS_OF_DATE As Date)

        Left Join HSTG.HSTG_EBS_MTL_ITEM_LOCATIONS MTL_ITEM_LOCATIONS (nolock)
            On RD_BI_INV_VALUES_RPT.LOCATOR_CODE = MTL_ITEM_LOCATIONS.INVENTORY_LOCATION_ID
            And MTL_ITEM_LOCATIONS.META_DELETE_INDICATOR = 'N'        
            And MTL_ITEM_LOCATIONS.META_CURRENT_RECORD_INDICATOR = 'Y'
        Left Join HSTG.HSTG_EBS_MTL_PARAMETERS MTL_PARAMETERS (nolock)
            On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
            And MTL_PARAMETERS.OMD_IS_RECORD_DELETED = 'N'
            And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

        Left Join OracleReceiptDates
            On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = OracleReceiptDates.ORGANIZATION_ID
            And MTL_ITEM_LOCATIONS.INVENTORY_ITEM_ID = OracleReceiptDates.ITEM_ID

        Left Join OracleLastSale
            On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = OracleLastSale.ORGANIZATION_ID
            And MTL_ITEM_LOCATIONS.INVENTORY_ITEM_ID = OracleLastSale.ITEM_ID

        Left Join DW.Dim_Product
            On RD_BI_INV_VALUES_RPT.ITEM_CODE = Dim_Product.ItemCode
            And OracleReportingDates.ReportingDate Between Dim_Product.Dim_EffectiveFrom and Dim_Product.Dim_EffectiveTo
        Left Join DW.Dim_Location
            On RD_BI_INV_VALUES_RPT.DC = Dim_Location.LocationCode
            And OracleReportingDates.ReportingDate Between Dim_Location.Dim_EffectiveFrom and Dim_Location.Dim_EffectiveTo

        Left Join DW.Dim_Bin (nolock)
            On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Bin.LocationCode
            And MTL_ITEM_LOCATIONS.SEGMENT1 = Dim_Bin.BinCode
            And 0 = Dim_Bin.BinSequence
            And OracleReportingDates.ReportingDate Between Dim_Bin.Dim_EffectiveFrom and Dim_Bin.Dim_EffectiveTo

WHERE   RD_BI_INV_VALUES_RPT.META_DELETE_INDICATOR = 'N'


