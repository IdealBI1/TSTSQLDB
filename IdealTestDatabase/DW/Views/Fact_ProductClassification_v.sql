
CREATE View [DW].[Fact_ProductClassification_v] 

As

With LastSnapshotDate As (
    Select IsNull(DateAdd(Day, 1, Cast(cast(Max(SnapshotDateKey) As varchar(8)) As Date)), '2022-06-01') As LastSnapshotDate
    From    DW.Fact_ProductClassification (nolock) 
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
-- SELECT  *
-- From    CAReportingDates 
-- Order By 1

-- Oracle CTE Tables
, OracleReportingDates As (
    SELECT  Distinct Cast(AS_OF_DATE As Date) As ReportingDate
    From    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT (nolock) 
            Join LastSnapshotDate
                On HSTG_EBS_RD_BI_INV_VALUES_RPT.AS_OF_DATE > LastSnapshotDate.LastSnapshotDate
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
, OracleInvLastDate As (
    SELECT  max(AS_OF_DATE) As InvLastDate
    From    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT (nolock)
) 

--CA Inventory       
SELECT  Convert(int, Convert(varchar(8), CAReportingDates.ReportingDate, 112))  As SnapshotDateKey
        , IsNull(Dim_Location.Dim_Location_Key, -1)                             As Dim_Location_Key
        , Dim_Location.locationCode 
        , INLOCAT.loc   
        , IsNull(Dim_Product.Dim_Product_Key, -1)                               As Dim_Product_Key
        , Dim_Product.ItemCode  
        , IsNull(BinKey.Dim_Bin_Key, -1)                                       As Dim_Bin_Key
        , IsNull(Dim_Classification.Dim_Classification_Key, -1)                 As Dim_Classification_Key
        -- , INLOCAT.lsup   
        -- , IsNull(BrandKissAndKind.Brand, '')                                    As Brand
        -- , IsNull(BrandKissAndKind.KissAndKindInd, '')                           As BrandKissAndKindInd
        , IsNull(INLOCAT.P, '')                                                 As PerformanceCassification -- ABC
        , IsNull(INLOCAT.S, '')                                                 As SurplusFlag
        , IsNull(INLOCAT.O, '')                                                 As ObsolescenceFlag

        , INLOCAT.MinLev                                                        As ProductMin
        , INLOCAT.MaxLev                                                        As ProductMax

        , Case IsNull(INLOCAT.P, '') 
            When 'M' Then EOMONTH(INLOCAT.PerfSetDat, 12)
            When 'N' Then EOMONTH(INLOCAT.PerfSetDat, 6)
            Else Null
            END                                                                 As FlagExpiryDate
        , Case When (Case IsNull(INLOCAT.P, '') 
                    When 'M' Then EOMONTH(INLOCAT.PerfSetDat, 12)
                    When 'N' Then EOMONTH(INLOCAT.PerfSetDat, 6)
                    Else Null
                    END) = EOMONTH(getdate())
                Then 'Expires EOM'
                Else ''
                END                                                             As ManualFlagExpiry

        , INLOCAT.PerfSetDat                                                    As SetDate
        , [INLOCAT].[1st Purch]                                                 As StartDate
        , [INLOCAT].[Last Sale]                                                 As LastSale
        , [INLOCAT].[Last Purch]                                                As LastPurchase
        , INLOCSUP.[Loc Buy Prc]                                                As LocalBuyPrice

        , 'Clear Accounting'								                    As Fact_SourceSystem 
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
                                                                                As Fact_UpdateDateTime
From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        Join StockDates
            Join CAReportingDates 
                On CAReportingDates.CATransDate Between StockDates.FromDate And StockDates.ToDate
            On INLOCAT.[Item Code] = StockDates.ItemCode
            And INLOCAT.Loc = StockDates.Loc
            And INLOCAT.OMD_INSERT_DATETIME Between StockDates.FromDate and StockDates.ToDate

        -- Left Join [HSTG].[HSTG_CA_INLBIN]	[INLBIN] (nolock)
        --     On INLOCAT.[Item Code] = INLBIN.[Item Code]
        --     And INLOCAT.Loc = INLBIN.Loc
        --     And INLBIN.OMD_IS_RECORD_DELETED = 'N'
        --     And INLBIN.OMD_CURRENT_RECORD_INDICATOR = 'Y'
        Left Join DW.Dim_Product (nolock)
            On INLOCAT.[Item Code] = Dim_Product.ItemCode
            And Dim_Product.Dim_EffectiveTo = '9999-12-31'
        Left Join DW.Dim_Location (nolock)
            On Format(INLOCAT.[Loc], '#') = Dim_Location.LocationCode
            And Dim_Location.Dim_EffectiveTo = '9999-12-31'
        -- Left Join DW.Dim_Bin (nolock)
        --     On Format(INLOCAT.[Loc], '#') = Dim_Bin.LocationCode
        --     And INLBIN.Bin = Dim_Bin.BinCode
        --     And INLBIN.Seq = Dim_Bin.BinSequence
        --     And Dim_Bin.Dim_EffectiveTo  = '9999-12-31'
        Left Join DW.Dim_Classification --(nolock)
            On IsNull(INLOCAT.P, '') = Dim_Classification.ClassificationCode
            And Dim_Classification.Dim_EffectiveTo  = '9999-12-31'

        Left Join [HSTG].[HSTG_CA_INLOCSUP]	[INLOCSUP] (nolock)
            On INLOCAT.loc = INLOCSUP.Loc
            And INLOCAT.[Item Code] = INLOCSUP.[Item Code]
            And INLOCSUP.[OMD_IS_RECORD_DELETED] = 'N'
            And INLOCSUP.OMD_CURRENT_RECORD_INDICATOR = 'Y'

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

Where	[INLOCAT].OMD_IS_RECORD_DELETED = 'N'
        And [INLOCAT].OMD_CURRENT_RECORD_INDICATOR = 'Y'
        And [INLOCAT].Loc Not IN ('110', '120', '233.0000')


UNION   ALL
SELECT  Convert(int, Convert(varchar(8), ReportingDate, 112))   As SnapshotDateKey
        , IsNull(Dim_Location.Dim_Location_Key, -1)             As Dim_Location_Key
        , Dim_Location.locationCode
        , RD_BI_INV_VALUES_RPT.DC
        , IsNull(Dim_Product.Dim_Product_Key, -1)               As Dim_Product_Key
        , Dim_Product.ItemCode
        , IsNull(Dim_Bin.Dim_Bin_Key, -1)                       As Dim_Bin_Key
        , IsNull(Dim_Classification.Dim_Classification_Key, -1) As Dim_Classification_Key
        -- , Null                                                  As lsup
        -- , ''                                                    As Brand
        -- , ''                                                    As BrandKissAndKindInd
        , IsNull(MTL_ABC_CLASSES.ABC_CLASS_NAME, '')            As PerformanceCassification
        , ''                                                    As SurplusFlag
        , ''                                                    As ObsolescenceFlag
        , MTL_SYSTEM_ITEMS.MINIMUM_ORDER_QUANTITY               As ProductMin  
        , MTL_SYSTEM_ITEMS.MAXIMUM_ORDER_QUANTITY               As ProductMax 

        , Cast(Null As Date)                                    As FlagExpiryDate
        , ''                                                    As ManualFlagExpiry
        , Cast(Null As Date)                                    As SetDate
        , OracleReceiptDates.First_PO_Receipt_Date              As StartDate
        , OracleLastSale.LastSaleDate                           As LastSale
        , OracleReceiptDates.Last_PO_Receipt_Date               As LastPurchase
        , Null                                                  As LocalBuyPrice

        , 'Oracle'								                As Fact_SourceSystem 
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2) 
                                                                As Fact_UpdateDateTime

FROM    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT RD_BI_INV_VALUES_RPT (nolock)
        Join OracleReportingDates
            On OracleReportingDates.ReportingDate = Cast(RD_BI_INV_VALUES_RPT.AS_OF_DATE As Date)
        -- Join OracleInvLastDate
        --     On RD_BI_INV_VALUES_RPT.AS_OF_DATE = OracleInvLastDate.InvLastDate
        Left Join HSTG.HSTG_EBS_MTL_ITEM_LOCATIONS MTL_ITEM_LOCATIONS (nolock)
            On RD_BI_INV_VALUES_RPT.LOCATOR_CODE = MTL_ITEM_LOCATIONS.INVENTORY_LOCATION_ID
            And MTL_ITEM_LOCATIONS.META_DELETE_INDICATOR = 'N'        
            And MTL_ITEM_LOCATIONS.META_CURRENT_RECORD_INDICATOR = 'Y'

        Left Join HSTG.HSTG_EBS_MTL_ABC_ASSIGNMENTS MTL_ABC_ASSIGNMENTS (nolock)

            Join HSTG.HSTG_EBS_MTL_ABC_CLASSES MTL_ABC_CLASSES (nolock)
                Left Join [HSTG].[HSTG_EBS_MTL_PARAMETERS] MTL_PARAMETERS
                    On MTL_ABC_CLASSES.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
                    And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
                    And MTL_PARAMETERS.OMD_IS_RECORD_DELETED = 'Y'
                    
                On MTL_ABC_ASSIGNMENTS.ABC_CLASS_ID = MTL_ABC_CLASSES.ABC_CLASS_ID
                And MTL_ABC_CLASSES.META_CURRENT_RECORD_INDICATOR = 'Y'
                And MTL_ABC_CLASSES.META_DELETE_INDICATOR = 'N'

            Left Join [HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)
                On MTL_ABC_ASSIGNMENTS.INVENTORY_ITEM_ID = MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID
                And MTL_ABC_CLASSES.ORGANIZATION_ID = MTL_SYSTEM_ITEMS.organization_id
                And MTL_SYSTEM_ITEMS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
                And MTL_SYSTEM_ITEMS.OMD_IS_RECORD_DELETED = 'N'

            On RD_BI_INV_VALUES_RPT.ITEM_CODE = MTL_SYSTEM_ITEMS.SEGMENT1
            And RD_BI_INV_VALUES_RPT.LOCATOR_CODE = MTL_PARAMETERS.ORGANIZATION_CODE
            And MTL_ABC_ASSIGNMENTS.META_CURRENT_RECORD_INDICATOR = 'Y'
            And MTL_ABC_ASSIGNMENTS.META_DELETE_INDICATOR = 'N'

        Left Join OracleReceiptDates
            On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = OracleReceiptDates.ORGANIZATION_ID
            And MTL_ITEM_LOCATIONS.INVENTORY_ITEM_ID = OracleReceiptDates.ITEM_ID

        Left Join OracleLastSale
            On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = OracleLastSale.ORGANIZATION_ID
            And MTL_ITEM_LOCATIONS.INVENTORY_ITEM_ID = OracleLastSale.ITEM_ID

        Left Join DW.Dim_Product
            On RD_BI_INV_VALUES_RPT.ITEM_CODE = Dim_Product.ItemCode
            And Dim_Product.Dim_EffectiveTo = '9999-12-31'
        Left Join DW.Dim_Location
            On RD_BI_INV_VALUES_RPT.DC = Dim_Location.LocationCode
            And Dim_Location.Dim_EffectiveTo = '9999-12-31'

        Left Join DW.Dim_Bin (nolock)
            On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Bin.LocationCode
            And MTL_ITEM_LOCATIONS.SEGMENT1 = Dim_Bin.BinCode
            And 0 = Dim_Bin.BinSequence
            And Dim_Bin.Dim_EffectiveTo  = '9999-12-31'

        Left Join DW.Dim_Classification --(nolock)
            On IsNull(MTL_ABC_CLASSES.ABC_CLASS_NAME, '') = Dim_Classification.ClassificationCode
            And Dim_Classification.Dim_EffectiveTo  = '9999-12-31'

WHERE   RD_BI_INV_VALUES_RPT.META_DELETE_INDICATOR = 'N'
--        And  RD_BI_INV_VALUES_RPT.META_CURRENT_RECORD_INDICATOR = 'Y'

