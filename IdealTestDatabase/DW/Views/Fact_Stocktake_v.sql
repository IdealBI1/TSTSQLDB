
CREATE View [DW].[Fact_Stocktake_v] 

As

With Dim_Stocktake As (
        SELECT  Dim_Stocktake.*
        FROM    [DW].[Dim_Stocktake] (nolock)
                Join (SELECT  LocationCode, MAX(StocktakeDate) AS StocktakeDate
                        FROM    [DW].[Dim_Stocktake] (nolock)
                        Group By LocationCode
                        ) Latest
                        On Dim_Stocktake.LocationCode = Latest.LocationCode
                        And Dim_Stocktake.StocktakeDate = Latest.StocktakeDate
)
, LastInlocDate As (
SELECT  INLOCAT.[Loc]
        , INLOCAT.[Item Code]
        , Dim_Stocktake.Dim_Stocktake_Key
        , Dim_Stocktake.StocktakeInProgress
        , Max(Cast(INLOCAT.OMD_INSERT_DATETIME As Date)) As LastInlocDate
FROM    Dim_Stocktake
        Join HSTG.HSTG_CA_INLOCAT INLOCAT (nolock)
            On Format(INLOCAT.[Loc], '#') = Dim_Stocktake.LocationCode
            And Cast(DateAdd(Day, -1, INLOCAT.OMD_INSERT_DATETIME) As Date) <= IsNull(Dim_Stocktake.StocktakeEndDate, Dim_Stocktake.StocktakeDate)
WHERE   INLOCAT.OMD_IS_RECORD_DELETED = 'N'            
Group By INLOCAT.[Loc]
        , INLOCAT.[Item Code]
        , Dim_Stocktake.Dim_Stocktake_Key
        , Dim_Stocktake.StocktakeInProgress
)
SELECT  Dim_ProductCategory_Key
        , Dim_Product_Key
        , ItemCode
        , Dim_Location_Key
        , Dim_Bin_Key
        , Dim_Stocktake_Key
        , StocktakeInProgress
        , FrozenWAC
        
        , Case When CurrentStocktakeQtyOnHand - FrozenQtyOnHand > 0
                        Then LEAST(MasterLastCostWAC, LastCostWAC, FrozenLastCost, FrozenWAC)
                When CurrentStocktakeQtyOnHand - FrozenQtyOnHand = 0
                        Then 0
                Else (CurrentStocktakeQtyOnHand - FrozenQtyOnHand) * Case When FrozenQtyOnHand = 0 Then 0 Else (FrozenVac / FrozenQtyOnHand) End
                END                             As VarianceValue
        , MasterLastCostWAC
        , LastCostWAC

        , CurrentStocktakeQtyOnHand
        , FrozenQtyOnHand                          
        , QuantityVariance
        , Fact_SourceSystem
        , Fact_UpdateDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT(ISNULL(CONVERT(NVARCHAR, Dim_ProductCategory_Key), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Dim_Product_Key), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Dim_Location_Key), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, StocktakeInProgress), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, FrozenWAC), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Case When CurrentStocktakeQtyOnHand - FrozenQtyOnHand > 0
                                                            Then LEAST(MasterLastCostWAC, LastCostWAC, FrozenLastCost, FrozenWAC)
                                                    When CurrentStocktakeQtyOnHand - FrozenQtyOnHand = 0
                                                            Then 0
                                                    Else (CurrentStocktakeQtyOnHand - FrozenQtyOnHand) * Case When FrozenQtyOnHand = 0 Then 0 Else (FrozenVac / FrozenQtyOnHand) End
                                                    END), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, MasterLastCostWAC), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, CurrentStocktakeQtyOnHand), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, FrozenQtyOnHand), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, QuantityVariance), N'')
					) 
		          )
			, 2)						        As Fact_HashDiff


From    (
        SELECT  IsNull(Dim_Product.Dim_ProductCategory_Key, -1)                         As Dim_ProductCategory_Key
                , IsNull(Dim_Product.Dim_Product_Key, -1)                               As Dim_Product_Key
                , Dim_Product.ItemCode
                , IsNull(Dim_Location.Dim_Location_Key, -1)                             As Dim_Location_Key
                , IsNull(BinKey.Dim_Bin_Key, -1)                                       As Dim_Bin_Key
                , LastInlocDate.Dim_Stocktake_Key                                       As Dim_Stocktake_Key

                , LastInlocDate.StocktakeInProgress                                     As StocktakeInProgress
                , INLOCAT.[CurStk QOH]                                                  As CurrentStocktakeQtyOnHand
                , INLOCAT.[Frozen Qoh]                                                  As FrozenQtyOnHand
                , INLOCAT.FrozLstBuy                                                    As FrozenLastCost
                , INLOCAT.[Frozen Vac]                                                  As FrozenVac

                , Case When LastInlocDate.StocktakeInProgress = 'Y'
                        Then INLOCAT.[Frozen Qoh] - INLOCAT.[CurStk QOH] 
                        Else 0
                        End                                                             As QuantityVariance
                , Case When (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * INLOCAT.[Loc Lst Buy] = 0 Then 999999999
                        Else (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * INLOCAT.[Loc Lst Buy]
                        END                                                             As LastCostWAC
                , Case When (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * Case When INLOCAT.[Frozen Qoh] = 0 Then 0 Else (INLOCAT.[Frozen Vac] / INLOCAT.[Frozen Qoh]) End = 0 Then 999999999
                        When INLOCAT.[Frozen Qoh] = 0 Then 9999999
                        Else (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * Case When INLOCAT.[Frozen Qoh] = 0 Then 0 Else (INLOCAT.[Frozen Vac] / INLOCAT.[Frozen Qoh]) End
                        END                                                             As FrozenWAC
                , Case When (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * isnull(INMAST.[Nat Buy Prc], 0) = 0
                        Then 999999999
                        Else (INLOCAT.[CurStk QOH] - INLOCAT.[Frozen Qoh]) * isnull(INMAST.[Nat Buy Prc], 0)
                        END                                                             As MasterLastCostWAC
                , 'Clear Accounting'							As Fact_SourceSystem 
                ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
                                                                                        As Fact_UpdateDateTime

        FROM    HSTG.HSTG_CA_INLOCAT INLOCAT (nolock)
                Left Join HSTG.HSTG_CA_INMAST INMAST (nolock)
                        On INLOCAT.[Item Code] = INMAST.[Item Code]
                        And INMAST.OMD_IS_RECORD_DELETED = 'N'
                        And INMAST.OMD_CURRENT_RECORD_INDICATOR = 'Y'
                Join LastInlocDate 
                        On INLOCAT.[Loc] = LastInlocDate.Loc
                        And INLOCAT.[Item Code] = LastInlocDate.[Item Code]
                        And Cast(INLOCAT.OMD_INSERT_DATETIME As Date) = LastInlocDate.LastInlocDate
                Left Join DW.Dim_Product (nolock)
                        On INLOCAT.[Item Code] = Dim_Product.ItemCode
                        And Dim_Product.Dim_EffectiveTo = '9999-12-31'
                Left Join DW.Dim_Location (nolock)
                        On Format(INLOCAT.[Loc], '#') = Dim_Location.LocationCode
                        And Dim_Location.Dim_EffectiveTo = '9999-12-31'

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

        WHERE   INLOCAT.OMD_IS_RECORD_DELETED = 'N'
                And INLOCAT.[Loc] not in (110, 120)
                And (IsNull(INLOCAT.[Value @ Cost], 0.0) <> 0.0
                Or IsNull(INLOCAT.[Stock Qty], 0.0) <> 0.0
                Or IsNull(INLOCAT.[Commit Qty], 0.0) <> 0
                Or IsNull(INLOCAT.[Po Qty], 0.0) <> 0.0
                Or IsNull(INLOCAT.[CurStk QOH], 0.0) <> 0.0
                Or IsNull(INLOCAT.[Frozen Qoh], 0.0) <> 0.0
--                Or IsNull(INLOCAT.[FrozLstBuy], 0.0) <> 0.0
                Or IsNull(INLOCAT.[Frozen Vac], 0.0) <> 0.0
--                Or IsNull(INLOCAT.[Loc Lst Buy], 0.0) <> 0.0
                )        
-- Oracle
        Union
        SELECT  IsNull(Dim_Product.Dim_ProductCategory_Key, -1)     As Dim_ProductCategory_Key
                , IsNull(Dim_Product.Dim_Product_Key, -1)           As Dim_Product_Key
                , Dim_Product.ItemCode
                , IsNull(Dim_Location.Dim_Location_Key, -1)	    As Dim_Location_Key
                , IsNull(Dim_Bin.Dim_Bin_Key, -1)                   As Dim_Bin_Key
                , Dim_Stocktake.Dim_Stocktake_Key                   As Dim_Stocktake_Key

                , Dim_Stocktake.StocktakeInProgress                 As StocktakeInProgress
                , Sum(MTL_PHYSICAL_INVENTORY_TAGS.TAG_QUANTITY)     As CurrentStocktakeQtyOnHand
                , Sum(MTL_PHYSICAL_ADJUSTMENTS.SYSTEM_QUANTITY)     As FrozenQtyOnHand
                , 0                                                 As FrozenLastCost
                , 0                                                 As FrozenVac
                , 0                                                 As QuantityVariance
                , 0                                                 As LastCostWAC
                , 0                                                 As FrozenWAC    
                , 0                                                 As MasterLastCostWAC       

                , 'Oracle'					    As Fact_SourceSystem 
                ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
                                                                    As Fact_UpdateDateTime

        FROM    HSTG.HSTG_EBS_MTL_PHYSICAL_INVENTORY_TAGS MTL_PHYSICAL_INVENTORY_TAGS (nolock)
                Join HSTG.HSTG_EBS_MTL_PHYSICAL_INVENTORIES MTL_PHYSICAL_INVENTORIES (nolock)
                    On MTL_PHYSICAL_INVENTORY_TAGS.PHYSICAL_INVENTORY_ID = MTL_PHYSICAL_INVENTORIES.PHYSICAL_INVENTORY_ID

                Left Join HSTG.HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS MTL_PHYSICAL_ADJUSTMENTS (nolock)
                    On MTL_PHYSICAL_INVENTORY_TAGS.PHYSICAL_INVENTORY_ID = MTL_PHYSICAL_ADJUSTMENTS.PHYSICAL_INVENTORY_ID
                    And MTL_PHYSICAL_INVENTORY_TAGS.inventory_item_id = MTL_PHYSICAL_ADJUSTMENTS.INVENTORY_ITEM_ID

                Join [HSTG].[HSTG_EBS_MTL_SYSTEM_ITEMS_B] MTL_SYSTEM_ITEMS (nolock)
                        On MTL_PHYSICAL_INVENTORY_TAGS.INVENTORY_ITEM_ID = MTL_SYSTEM_ITEMS.INVENTORY_ITEM_ID
                        And MTL_PHYSICAL_INVENTORY_TAGS.ORGANIZATION_ID = MTL_SYSTEM_ITEMS.organization_id
                        And MTL_SYSTEM_ITEMS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

                Left Join [HSTG].[HSTG_EBS_MTL_PARAMETERS] MTL_PARAMETERS
                        On MTL_PHYSICAL_INVENTORIES.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
                        And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

                Join Dim_Stocktake 
                        On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Stocktake.LocationCode
                        And MTL_PHYSICAL_INVENTORIES.PHYSICAL_INVENTORY_DATE Between Dim_Stocktake.StocktakeDate And IsNull(Dim_Stocktake.StocktakeEndDate, getdate())

                Left Join HSTG.HSTG_EBS_MTL_ITEM_LOCATIONS MTL_ITEM_LOCATIONS (nolock)
                        On MTL_PHYSICAL_INVENTORY_TAGS.LOCATOR_ID = MTL_ITEM_LOCATIONS.INVENTORY_LOCATION_ID
                        And MTL_ITEM_LOCATIONS.META_DELETE_INDICATOR = 'N'
                        And MTL_ITEM_LOCATIONS.META_CURRENT_RECORD_INDICATOR = 'Y'

                Left Join [DW].[Dim_Location] As Dim_Location (nolock)
                        On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Location.[LocationCode]
                        And MTL_PHYSICAL_INVENTORIES.PHYSICAL_INVENTORY_DATE Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo

--                Left Join [DW].[Dim_Product] As Dim_Product (nolock)
                Join [DW].[Dim_Product] As Dim_Product (nolock)
                        On MTL_SYSTEM_ITEMS.SEGMENT1 = Dim_Product.[ItemCode]
                        And MTL_PHYSICAL_INVENTORIES.PHYSICAL_INVENTORY_DATE Between Dim_Product.Dim_EffectiveFrom And Dim_Product.Dim_EffectiveTo

                Left Join DW.Dim_Bin (nolock)
                        On MTL_PARAMETERS.ORGANIZATION_CODE = Dim_Bin.LocationCode
                        And MTL_ITEM_LOCATIONS.SEGMENT1 = Dim_Bin.BinCode
                        And 0 = Dim_Bin.BinSequence
                        And Dim_Bin.Dim_EffectiveTo = '9999-12-31'

        WHERE   MTL_PHYSICAL_INVENTORY_TAGS.META_CURRENT_RECORD_INDICATOR = 'Y'
                And MTL_PHYSICAL_INVENTORY_TAGS.META_DELETE_INDICATOR = 'N'
                And MTL_PHYSICAL_INVENTORY_TAGS.TAG_QUANTITY <> 0                
        Group By IsNull(Dim_Product.Dim_ProductCategory_Key, -1)
                , IsNull(Dim_Product.Dim_Product_Key, -1)
                , Dim_Product.ItemCode
                , IsNull(Dim_Location.Dim_Location_Key, -1)
                , IsNull(Dim_Bin.Dim_Bin_Key, -1)
                , Dim_Stocktake.Dim_Stocktake_Key
                , Dim_Stocktake.StocktakeInProgress
) STake

