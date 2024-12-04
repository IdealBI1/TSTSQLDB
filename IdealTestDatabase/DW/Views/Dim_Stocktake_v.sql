
CREATE View [DW].[Dim_Stocktake_v]

As

-- Clear Accounting Stocktakes

Select  IsNull(Dim_Location.Dim_Location_Key, -1)       As Dim_Location_Key
        , LastStockDate.LocationCode
        , LastStockDate.StocktakeInProgress
        , LastStockDate.StocktakeDate
        , Cast(DateAdd(Day , -1
                , Max(INLOC.OMD_INSERT_DATETIME))
                As Date)                                As StocktakeEndDate
		, 'Clear Accounting'							As Dim_SourceSystem
FROM    (SELECT  INLOC.Loc                              As LocationCode
                , IsNull(INLOC.S, '')                   As StocktakeInProgress
                , Cast([Curr Stake] As Date)            As StocktakeDate
        FROM    HSTG.HSTG_CA_INLOC INLOC (nolock)
        WHERE   INLOC.OMD_IS_RECORD_DELETED = 'N'
                And INLOC.OMD_CURRENT_RECORD_INDICATOR = 'Y'
                And INLOC.Loc > 120) LastStockDate
        Left Join HSTG.HSTG_CA_INLOC INLOC (nolock)
                On LastStockDate.LocationCode = INLOC.Loc
                And LastStockDate.StocktakeDate <= INLOC.OMD_INSERT_DATETIME
                And IsNull(INLOC.S, '') = 'Y'
        Join DW.Dim_Location (nolock)
                On LastStockDate.LocationCode = Dim_Location.LocationCode
                And (LastStockDate.StocktakeDate Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo
                        Or (LastStockDate.StocktakeDate Is Null And Dim_Location.Dim_EffectiveTo = '9999-12-31')
                )
Group By Dim_Location.Dim_Location_Key
        , LastStockDate.LocationCode
        , LastStockDate.StocktakeInProgress
        , LastStockDate.StocktakeDate
Union -- Oracle Stocktakes

Select  IsNull(Dim_Location.Dim_Location_Key, -1)       As Dim_Location_Key
        , LastStockDate.LocationCode
        , LastStockDate.StocktakeInProgress
        , LastStockDate.StocktakeDate
        , LastStockDate.StocktakeDate                   As StocktakeEndDate
		, 'Oracle'  									As Dim_SourceSystem
FROM    (SELECT  MTL_PARAMETERS.ORGANIZATION_CODE       As LocationCode
                , ''                                    As StocktakeInProgress
                , Cast(Max(PHYSICAL_INVENTORY_DATE)
                        As Date)                        As StocktakeDate
        FROM    HSTG.HSTG_EBS_MTL_PHYSICAL_INVENTORIES (nolock)
                Join [HSTG].[HSTG_EBS_MTL_PARAMETERS] MTL_PARAMETERS
                        On HSTG_EBS_MTL_PHYSICAL_INVENTORIES.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
                        And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
        WHERE   META_CURRENT_RECORD_INDICATOR = 'Y'
                And META_DELETE_INDICATOR = 'N'
        Group By MTL_PARAMETERS.ORGANIZATION_CODE
        ) LastStockDate
        Left Join DW.Dim_Location (nolock)
                On LastStockDate.LocationCode = Dim_Location.LocationCode
                And (LastStockDate.StocktakeDate Between Dim_Location.Dim_EffectiveFrom And Dim_Location.Dim_EffectiveTo
                        Or (LastStockDate.StocktakeDate Is Null And Dim_Location.Dim_EffectiveTo = '9999-12-31')
                )

