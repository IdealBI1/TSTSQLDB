
CREATE View [DW].[Inv_ValueDaily] 

As

With  ReportingDates As (
    SELECT  ReportingDateInitial As ReportingDate
    FROM    (
            Select  IsNull(DateAdd(Day, 2, Cast(cast(Max(SnapshotDateKey) As varchar(8)) As Date)), '2022-09-16') As ReportingDateInitial
            From    DW.Fact_InventoryDailySnapshot (nolock)
            ) xx
    WHERE   ReportingDateInitial < Dateadd(Day , 1, Convert(Date, SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time'))
    Union ALL
    SELECT  DATEADD(Day, 1, ReportingDate) ReportingDate
    FROM    ReportingDates
    Where ReportingDate < Convert(Date, SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time')
) 
, StockDates As (
        Select	[Item Code] As ItemCode
                , Loc
                , Cast(Cast(OMD_INSERT_DATETIME As Date) As datetime2) As FromDate
                , IsNull(Dateadd(Second, -1, Lead(Cast(Cast(OMD_INSERT_DATETIME As Date) As Datetime2)) Over(Partition By [Item Code], Loc Order By OMD_INSERT_DATETIME))
					    , Cast ('9999-12-31' As datetime2)) As ToDate
        From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        )
, BinDates As (
        Select	[Item Code] As ItemCode
                , Loc
                , Bin
                , Seq
                , OMD_IS_RECORD_DELETED
                , OMD_INSERT_DATETIME As FromDate
                , IsNull(Dateadd(Second, -1, Lead(OMD_INSERT_DATETIME) Over(Partition By [Item Code], Loc Order By OMD_INSERT_DATETIME))
					    , Cast ('9999-12-31' As datetime2)) As ToDate
        From	[HSTG].[HSTG_CA_INLBIN]	[INLBIN] (nolock)
        WHERE   [Item Code] is Not NULL
                And Loc is Not NULL
                And Bin is Not NULL
        )
       
SELECT   Convert(int, Convert(varchar(8), DateAdd(Day , -1, ReportingDate), 112)) As  SnapshotDateKey
        , 
        INLOCAT.Loc As LocationCode
        , INLOCAT.[Item Code] As ItemCode
        , IsNull(Dim_Location.Dim_Location_Key, -1) Dim_Location_Key
        , IsNull(Dim_Product.Dim_Product_Key, -1) Dim_Product_Key
        , INLOCAT.lsup
        , IsNull(BinDates.Bin, '') Bin
        , IsNull(BinDates.Seq, 0) Seq
        , IsNull(BrandKissAndKind.Brand, '') As Brand
        , IsNull(BrandKissAndKind.KissAndKindInd, '')  As BrandKissAndKindInd
        , [INLOCAT].[Stock Qty] As StockQty 
        , Round(INLOCAT.[Value @ Cost], 2) As StockValue	 
        , [INLOCAT].[Commit Qty] As CommitStockQty
        , Round((Case When [INLOCAT].[Stock Qty] = 0 Then 0
            Else (INLOCAT.[Value @ Cost] / [INLOCAT].[Stock Qty])
            End
            * [INLOCAT].[Commit Qty]), 2) As CommitStockValue
        , [INLOCAT].[Stock Qty] - [INLOCAT].[Commit Qty] As StockAvailableQty
        , Round(INLOCAT.[Value @ Cost] - 
            (Case When [INLOCAT].[Stock Qty] = 0 Then 0
            Else (INLOCAT.[Value @ Cost] / [INLOCAT].[Stock Qty])
            End
            * [INLOCAT].[Commit Qty]), 2) As StockAvailableValue
        , 'Clear Accounting'								As Fact_SourceSystem 
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2) As Fact_UpdateDateTime
From	[HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
        Join StockDates
            Join ReportingDates
                On ReportingDates.ReportingDate Between StockDates.FromDate And StockDates.ToDate
            On INLOCAT.[Item Code] = StockDates.ItemCode
            And INLOCAT.Loc = StockDates.Loc
            And INLOCAT.OMD_INSERT_DATETIME Between StockDates.FromDate and StockDates.ToDate
        Left Join BinDates
            On INLOCAT.[Item Code] = BinDates.ItemCode
            And INLOCAT.Loc = BinDates.Loc
            And ReportingDates.ReportingDate Between BinDates.FromDate And BinDates.ToDate
            And BinDates.OMD_IS_RECORD_DELETED = 'N'
        Left Join DW.Dim_Product
            On INLOCAT.[Item Code] = Dim_Product.ItemCode
            And ReportingDates.ReportingDate Between Dim_Product.Dim_EffectiveFrom and Dim_Product.Dim_EffectiveTo
        Left Join DW.Dim_Location
            On INLOCAT.[Loc] = Dim_Location.LocationCode
            And ReportingDates.ReportingDate Between Dim_Location.Dim_EffectiveFrom and Dim_Location.Dim_EffectiveTo
        Left Join REF.BrandKissAndKind
            On Left(INLOCAT.[Item Code], 3) = BrandKissAndKind.Brand

Where	[INLOCAT].[OMD_IS_RECORD_DELETED] = 'N'
        And ([Value @ Cost] <> 0.0
            Or [Stock Qty] <> 0.0
            Or [Commit Qty] <> 0
            Or [Po Qty] <> 0.0
            )
