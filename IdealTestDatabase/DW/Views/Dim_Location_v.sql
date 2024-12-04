

CREATE View [DW].[Dim_Location_v]

As

With LastOracleStockTake As (
SELECT ORGANIZATION_ID                                          
        , Cast(PHYSICAL_INVENTORY_DATE As Date)             As StocktakeDate
        , ROW_NUMBER() 
            Over(Partition By ORGANIZATION_ID 
                Order By PHYSICAL_INVENTORY_DATE Desc)      As StocktakeOrder
FROM    (SELECT  Distinct ORGANIZATION_ID, PHYSICAL_INVENTORY_DATE
        FROM    HSTG.HSTG_EBS_MTL_PHYSICAL_INVENTORIES (nolock)
        WHERE   META_CURRENT_RECORD_INDICATOR = 'Y'
                And META_DELETE_INDICATOR = 'N') StocktakeDates
)
Select	LocationCode
		, LocationName
		, RegionCode
		, Region
		, AddressLine1
		, AddressLine2
		, AddressLine3
		, Phone
		, Fax
		, BannerLocationName
		, DeliveryName
		, DeliveryAddress1
		, DeliveryAddress2
		, DeliveryAddress3
		, DeliveryPhone
		, DeliveryFax
		, Email
		, PostCode
		, LastStockTake
		, CurrentStockTake
        , StockTakeInProgress
        , OperationsManager
        , Latitude
        , Longitude
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Dim_SourceSystem
		, Latest_Dim_InsertDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT(ISNULL(CONVERT(NVARCHAR, LocationName), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, RegionCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Region), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, AddressLine1), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, AddressLine2), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, AddressLine3), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Phone), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Fax), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, BannerLocationName), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryName), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryAddress1), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryAddress2), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryAddress3), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryPhone), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, DeliveryFax), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Email), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, PostCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, LastStockTake), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, CurrentStockTake), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, StockTakeInProgress), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, OperationsManager), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Latitude), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Longitude), N'')
					) 
		          )
			, 2)										As Dim_Type1HashDiff
		, CONVERT(CHAR(32), HASHBYTES('MD5', ''), 2)    As Dim_Type2HashDiff

From	(
-- CA Locations
Select	[Loc]													As [LocationCode]
		, [Location Name]										As [LocationName]
		, Rg													As [RegionCode]
		, Case When [A] = 1 then 'Upper North Island'
				When [A] = 2 then 'Central North Island'
				When [A] = 3 then 'Lower North Island'
				When [A] = 4 then 'Upper South Island'
				When [A] = 5 then 'Lower South Island'
				Else 'Unspecified'
				End												As [Region]
		, [Address Line 1]										As [AddressLine1]
		, [Address Line 2]										As [AddressLine2]
		, [Address Line 3]										As [AddressLine3]
		, [Phone]
		, [Fax]
		, [Banner Location Name]								As [BannerLocationName]
		, [Delivery Name]										As [DeliveryName]
		, [Delivery Address 1]									As [DeliveryAddress1]
		, [Delivery Address 2]									As [DeliveryAddress2]
		, [Delivery Address 3]									As [DeliveryAddress3]
		, [Del Phone]											As [DeliveryPhone]
		, [Deliv Fax]											As [DeliveryFax]
		, [Email]
		, [Pstcde]												As [PostCode]
		, [Last Stake]											As [LastStockTake]
		, [Curr Stake]											As [CurrentStockTake]
        , IsNull(S, 'N')                                        As [StockTakeInProgress]
        , BrancheList.OM                                        As [OperationsManager]
        , BrancheList.Lat                                       As [Latitude]
        , BrancheList.Long                                      As [Longitude]

		, Case When Lag([INLOC].OMD_INSERT_DATETIME)
					Over(Partition By [INLOC].[Loc]
					Order By [INLOC].OMD_INSERT_DATETIME) 
					Is Null Then Cast ('2000-01-01' As datetime2)
				Else [INLOC].OMD_INSERT_DATETIME
				End												As Dim_EffectiveFrom
		, IsNull(Dateadd(Second, -1, 
				Lead([INLOC].OMD_INSERT_DATETIME)
				Over(Partition By [INLOC].[Loc]
					Order By [INLOC].OMD_INSERT_DATETIME)
						), Cast ('9999-12-31' As datetime2))	As Dim_EffectiveTo
		, 'Clear Accounting'									As Dim_SourceSystem
		, OMD_INSERT_DATETIME									As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_INLOC]	[INLOC] (nolock)
        Left Join REF.BrancheList (nolock)
            On INLOC.Loc = BrancheList.[BR]

Where	[INLOC].[Loc] Is Not Null
		And [Location Name] <> 'DLPURGE'
		And [INLOC].[OMD_IS_RECORD_DELETED] = 'N'
Union 
-- Oracle Locations
Select	MTL_PARAMETERS.ORGANIZATION_CODE			As [LocationCode]
		, HR_LOCATIONS.LOCATION_CODE				As [LocationName]
		, 'N/A'										As [RegionCode]
		, 'Unspecified' 							As [Region]
		, HR_LOCATIONS.address_line_1				As [AddressLine1]
		, HR_LOCATIONS.address_line_2				As [AddressLine2]
		, HR_LOCATIONS.address_line_3				As [AddressLine3]
		, HR_LOCATIONS.TELEPHONE_NUMBER_1           As [Phone]
		, Null                                      As [Fax]
		, Null                  					As [BannerLocationName]
		, Null										As [DeliveryName]
		, HR_LOCATIONS.address_line_1				As [DeliveryAddress1]
		, HR_LOCATIONS.address_line_2				As [DeliveryAddress2]
		, HR_LOCATIONS.address_line_3				As [DeliveryAddress3]
		, HR_LOCATIONS.TELEPHONE_NUMBER_1			As [DeliveryPhone]
		, Null										As [DeliveryFax]
		, HR_LOCATIONS.TELEPHONE_NUMBER_3           As [Email]
		, HR_LOCATIONS.POSTAL_CODE					As [PostCode]
		, LastStockTake.StocktakeDate   		    As [LastStockTake]
		, CurrentStockTake.StocktakeDate   		    As [CurrentStockTake]
        , Case When CurrentStockTake.StocktakeDate = Dateadd(Day , -1, CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS date))
            Then 'Y'
            Else 'N'
            End                                     As [StockTakeInProgress]
        , BrancheList.OM                            As [OperationsManager]
        , BrancheList.Lat                           As [Latitude]
        , BrancheList.Long                          As [Longitude]
		, HR_LOCATIONS.META_EFFECTIVE_DATETIME		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)          As Dim_EffectiveTo
		, 'Oracle'      							As Dim_SourceSystem
		, HR_LOCATIONS.META_EFFECTIVE_DATETIME		As Latest_Dim_InsertDateTime

from    HSTG.HSTG_EBS_HR_ALL_ORGANIZATION_UNITS HR_ALL_ORGANIZATION_UNITS (nolock)
        Join HSTG.HSTG_EBS_HR_LOCATIONS HR_LOCATIONS (nolock)
            On HR_ALL_ORGANIZATION_UNITS.LOCATION_ID = HR_LOCATIONS.LOCATION_ID
            And HR_LOCATIONS.META_CURRENT_RECORD_INDICATOR = 'Y'
            And HR_LOCATIONS.META_DELETE_INDICATOR = 'N'        
        Join HSTG.HSTG_EBS_MTL_PARAMETERS MTL_PARAMETERS (nolock)
            On HR_ALL_ORGANIZATION_UNITS.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
            And MTL_PARAMETERS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
            And MTL_PARAMETERS.OMD_IS_RECORD_DELETED = 'N'
        Left Join HSTG.HSTG_CA_INLOC INLOC (nolock)
            On MTL_PARAMETERS.ORGANIZATION_CODE = INLOC.Loc
            And INLOC.OMD_CURRENT_RECORD_INDICATOR = 'Y'
            And INLOC.OMD_IS_RECORD_DELETED = 'N'
        Left Join LastOracleStockTake As CurrentStockTake
            On MTL_PARAMETERS.ORGANIZATION_ID = CurrentStockTake.ORGANIZATION_ID
            And CurrentStockTake.StocktakeOrder = 1
        Left Join LastOracleStockTake As LastStockTake
            On MTL_PARAMETERS.ORGANIZATION_ID = LastStockTake.ORGANIZATION_ID
            And LastStockTake.StocktakeOrder = 2
        Left Join REF.BrancheList (nolock)
            On MTL_PARAMETERS.ORGANIZATION_CODE = Format(BrancheList.[BR], '#')

WHERE   HR_ALL_ORGANIZATION_UNITS.OMD_CURRENT_RECORD_INDICATOR = 'Y'
        And HR_ALL_ORGANIZATION_UNITS.OMD_IS_RECORD_DELETED = 'N'
        And INLOC.Loc is Null

) As DimLocation

