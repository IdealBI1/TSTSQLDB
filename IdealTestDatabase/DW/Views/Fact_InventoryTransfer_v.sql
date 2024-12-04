
CREATE View [DW].[Fact_InventoryTransfer_v] 

As

SELECT  Dim_Transfer_Key -- BK
        , Dim_Location_Key
        , Dim_LocationFrom_Key
        , Dim_Customer_Key
        , Dim_Product_Key
        , Dim_ProductCategory_Key
        , Dim_RequestDate_Key
        , RequestDate
        , AcceptDate     
        , FillDate
        , PublishDate
        , ExpectDate         
        , ItemCode
        , RequestByLocation
        , RequestFromLocation
        , RequestQty
        , DispatchQty
        , RejectQty
        , OutstandingQty
        , RejectReason
        , SalesOrder#
        , SalesOrderLine#
        , PurchaseOrder#
        , PurchaseOrderLine#
        , PubRef#
        , PubRefLine#
        , CONVERT(CHAR(32),
        HASHBYTES('MD5',
            CONCAT(ISNULL(CONVERT(NVARCHAR, Dim_Location_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, Dim_LocationFrom_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, Dim_Customer_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, Dim_Product_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, Dim_ProductCategory_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, Dim_RequestDate_Key), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RequestDate), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, AcceptDate), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, FillDate), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, PublishDate), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, ExpectDate), N'') 
                    , '|', ISNULL(CONVERT(NVARCHAR, ItemCode), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RequestByLocation), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RequestFromLocation), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RequestQty), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, DispatchQty), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RejectQty), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, OutstandingQty), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, RejectReason), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, SalesOrder#), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, SalesOrderLine#), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, PurchaseOrder#), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, PurchaseOrderLine#), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, PubRef#), N'')
                    , '|', ISNULL(CONVERT(NVARCHAR, PubRefLine#), N'')
                    ) 
                )
            , 2)										    Dim_Type1HashDiff   
        , Dim_SourceSystem

From (
    SELECT  Dim_Transfer.Dim_Transfer_Key -- BK
            , Dim_Location.Dim_Location_Key                             Dim_Location_Key
            , Dim_LocationFrom.Dim_Location_Key                         Dim_LocationFrom_Key
            , IsNull(Dim_Customer.Dim_Customer_Key, -1)		            Dim_Customer_Key
            , IsNull(Dim_Product.Dim_Product_Key, -1)			        Dim_Product_Key
            , IsNull(Dim_Product.Dim_ProductCategory_Key, -1)           Dim_ProductCategory_Key
            , IsNull(Convert(int, Convert(char, RequestDat, 112)), -1)  Dim_RequestDate_Key
            , [INTR].RequestDat                                         RequestDate
            , [INTR].AcceptDate     
            , [INTR].[Fill Date]                                        FillDate
            , [INTR].PublishDat                                         PublishDate
            , [INTR].ExpectDate         
            , [INTR].[Item Code]                                        ItemCode
            , Lto                                                       RequestByLocation
            , Lfm                                                       RequestFromLocation
            , [Request Qty]                                             RequestQty
            , [Dispatch Qty]                                            DispatchQty
            , [Reject Qty]                                              RejectQty
            , [Request Qty]-[Dispatch Qty]-[Reject Qty]                 OutstandingQty
            , IsNull([Reason], '')                                      RejectReason
            , [INTR].[So#]                                              SalesOrder#
            , [INTR].[Sol#]                                             SalesOrderLine#
            , [INTR].[po#]                                              PurchaseOrder#
            , [INTR].[pol#]                                             PurchaseOrderLine#
            , [INTR].[TO#]                                              PubRef#
            , [INTR].[Tol#]                                             PubRefLine#
    		, 'Clear Accounting'								        Dim_SourceSystem

    FROM    HSTG.HSTG_CA_INTR As [INTR] (nolock)

            -- Left Join [HSTG].[HSTG_CA_INLOCAT]	[INLOCAT] (nolock)
            --     On [INTR].lto = [INLOCAT].loc
            --     And [INTR].[Item Code] = [INLOCAT].[Item Code]
            --     And [INLOCAT].[OMD_IS_RECORD_DELETED] = 'N'
            --     And [INLOCAT].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

            Join [DW].[Dim_Transfer] As Dim_Transfer
            On [INTR].Request# = Dim_Transfer.Request#

            Left Join [HSTG].[HSTG_CA_SOMAST] As [SOMAST] (nolock)
                On [INTR].So# = SOMAST.So#
                And [SOMAST].[OMD_IS_RECORD_DELETED] = 'N'
                And [SOMAST].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

            Left Join [DW].[Dim_Customer] As Dim_Customer (nolock)
                On [SOMAST].[Cust#] = Dim_Customer.[CustomerNumber]
                And INTR.[RequestDat] Between Dim_Customer.Dim_EffectiveFrom And Dim_Customer.Dim_EffectiveTo

            Left Join [DW].[Dim_Location] As Dim_Location (nolock)
                On Format([INTR].Lto, '#') = Dim_Location.[LocationCode]
                And INTR.[RequestDat] Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

            Left Join [DW].[Dim_Location] As Dim_LocationFrom (nolock)
                On Format([INTR].Lfm, '#') = Dim_LocationFrom.[LocationCode]
                And INTR.[RequestDat] Between Dim_LocationFrom.Dim_EffectiveFrom And Dim_LocationFrom.Dim_EffectiveTo

            Left Join [DW].[Dim_Product] As Dim_Product (nolock)
                On [INTR].[Item Code] = Dim_Product.[ItemCode]
                And INTR.[RequestDat] Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

            Left Join [DW].[Dim_ProductCategory] As Dim_ProductCategory (nolock)
                On Dim_Product.Dim_ProductCategory_Key = Dim_ProductCategory.Dim_ProductCategory_Key
                And Dim_ProductCategory.[Dim_EffectiveTo] = '9999-12-31'

    WHERE   [PublishDat] is not null
            And [INTR].Request# is not null
            And [INTR].[OMD_IS_RECORD_DELETED] = 'N'
            And [INTR].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'
) Trnasfers

