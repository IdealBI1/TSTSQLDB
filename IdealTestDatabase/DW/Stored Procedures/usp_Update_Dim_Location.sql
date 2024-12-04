
CREATE PROCEDURE [DW].[usp_Update_Dim_Location]

/****************************************************************************
* Name:		usp_Update_Dim_Location
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Location dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
** 02   04/10/2022  Sameh Hassan    Added new columns; OperationsManager, Latitude, & Longitude
****************************************************************************/

As

If Not Exists (Select Dim_Location_key From DW.Dim_Location Where Dim_Location_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Location On
	Insert Into DW.Dim_Location ([Dim_Location_Key], [LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName]
	, [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode], [LastStockTake], [CurrentStockTake], [StockTakeInProgress]
    , [OperationsManager], [Latitude], [Longitude]
    , [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime], [Dim_UpdateDateTime])
	Select	-1									As [Dim_Location_Key]
			, '0'								As [LocationCode]
			, 'Unknown'							As [LocationName]
			, 'Unk'								As [RegionCode]
			, 'Unknown'							As [Region]
			, 'Unknown'							As [AddressLine1]
			, 'Unknown'							As [AddressLine2]
			, 'Unknown'							As [AddressLine3]
			, 'Unknown'							As [Phone]
			, 'Unknown'							As [Fax]
			, 'Unknown'							As [BannerLocationName]
			, 'Unknown'							As [DeliveryName]
			, 'Unknown'							As [DeliveryAddress1]
			, 'Unknown'							As [DeliveryAddress2]
			, 'Unknown'							As [DeliveryAddress3]
			, 'Unknown'							As [DeliveryPhone]
			, 'Unknown'							As [DeliveryFax]
			, 'Unknown'							As [Email]
			, 'Unknown'							As [PostCode]
			, Cast ('2000-01-01' As datetime2)	As [LastStockTake]
			, Cast ('2000-01-01' As datetime2)	As [CurrentStockTake]
            , 'U'                               As [StockTakeInProgress]
			, 'Unknown'							As [OperationsManager]
			, 0		        					As [Latitude]
			, 0     							As [Longitude]
			, 'Unknown'							As Dim_SourceSystem
			, Null								As Dim_Type1HashDiff
			, Null								As Dim_Type2HashDiff
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
			, Cast ('2000-01-01' As datetime2)	As Dim_InsertDateTime
			, Cast ('2000-01-01' As datetime2)	As Dim_UpdateDateTime

	Set Identity_Insert DW.Dim_Location Off

End


Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Select	@Dim_UpdateDateTime = isNull(Max(Dim_UpdateDateTime), '2000-01-01')
From	[DW].Dim_Location (nolock)

-- Create temp table to hold new and updated dimension source records.
DROP TABLE If Exists #Dim_Location
Select	*
Into	#Dim_Location
From	[DW].Dim_Location
Where	1=2

-- Get History Stage records added or updated after the lastest Dim_InsertDateTime in the Dimension.
Insert Into #Dim_Location ([LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName], [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode]
                            , [LastStockTake], [CurrentStockTake], [StockTakeInProgress], [OperationsManager], [Latitude], [Longitude], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], [Dim_InsertDateTime])
Select	[LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName], [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode]
                            , [LastStockTake], [CurrentStockTake], [StockTakeInProgress], [OperationsManager], [Latitude], [Longitude], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo], Latest_Dim_InsertDateTime
  FROM [DW].[Dim_Location_v]
Where	Latest_Dim_InsertDateTime > @Dim_UpdateDateTime

-- Remove records older than the current effective from date
Delete	#Dim_Location
From	#Dim_Location
		Join (Select LocationCode, Dim_EffectiveFrom
					From DW.Dim_Location
					Where Dim_EffectiveTo = '9999-12-31') Dim_Location
			On #Dim_Location.LocationCode = Dim_Location.LocationCode
Where	#Dim_Location.Dim_EffectiveFrom <= Dim_Location.Dim_EffectiveFrom

-- Find the unique set of change dates when multiple changes occur in HSTG since last dim update
-- This is also useful in initial load
Drop Table If Exists #ChangeDates
Select	[LocationCode]
		, [Dim_Type2HashDiff]
		, Min([Dim_EffectiveFrom]) As [Dim_EffectiveFrom]
		, Dim_EffectiveTo
Into #ChangeDates
From (
	Select	[LocationCode]
			, [Dim_Type2HashDiff]
			, [Dim_EffectiveFrom]
			, (Select IsNull(Dateadd(Second, -1, Min([Dim_EffectiveFrom])), '9999-12-31')
				From #Dim_Location T2
				Where	T2.LocationCode = #Dim_Location.LocationCode
						And T2.[Dim_Type2HashDiff] <> #Dim_Location.[Dim_Type2HashDiff]
						And T2.[Dim_EffectiveFrom] > #Dim_Location.[Dim_EffectiveFrom]
					) As Dim_EffectiveTo
	From #Dim_Location
	) x
Group By [LocationCode]
		, [Dim_Type2HashDiff]
		, Dim_EffectiveTo

-- Get the final set of secords to be inserted or updated
DROP TABLE If Exists #Dim_Location_Final
SELECT	#Dim_Location.[LocationCode]
		, [LocationName]
		, [RegionCode]
		, [Region]
		, [AddressLine1]
		, [AddressLine2]
		, [AddressLine3]
		, [Phone]
		, [Fax]
		, [BannerLocationName]
		, [DeliveryName]
		, [DeliveryAddress1]
		, [DeliveryAddress2]
		, [DeliveryAddress3]
		, [DeliveryPhone]
		, [DeliveryFax]
		, [Email]
		, [PostCode]
		, [LastStockTake]
		, [CurrentStockTake]
        , [StockTakeInProgress]
        , [OperationsManager]
        , [Latitude]
        , [Longitude]
		, [Dim_SourceSystem]
		, [Dim_Type1HashDiff]
		, #Dim_Location.Dim_Type2HashDiff
		, #ChangeDates.Dim_EffectiveFrom As Final_Dim_EffectiveFrom
		, #ChangeDates.Dim_EffectiveTo As Final_Dim_EffectiveTo
		, (Select Min(Dim_EffectiveFrom) From #Dim_Location D Where D.LocationCode = #Dim_Location.LocationCode) As First_Dim_EffectiveFrom
Into	#Dim_Location_Final
From	#Dim_Location
		Join #ChangeDates
			On #Dim_Location.LocationCode = #ChangeDates.LocationCode
			And #Dim_Location.Dim_Type2HashDiff = #ChangeDates.Dim_Type2HashDiff
			And #Dim_Location.Dim_EffectiveTo = #ChangeDates.Dim_EffectiveTo


Begin Try
Begin Transaction

	-- Check for New Locations OR Locations with Type I Change only
	Merge	[DW].Dim_Location As T -- Merge Target 
    Using	(Select		*
				From	#Dim_Location_Final 
				Where	Final_Dim_EffectiveFrom = First_Dim_EffectiveFrom
				) As S -- Merge Source including the first occurance of the Location record
				On T.LocationCode = S.LocationCode 
				And T.Dim_EffectiveTo = '9999-12-31'
                
	When Matched 
		And S.Dim_Type2HashDiff = T.Dim_Type2HashDiff -- Not Type II Change
		And S.Dim_Type1HashDiff <> T.Dim_Type1HashDiff -- Type I Change Only
	Then Update
		Set	T.LocationName = S.LocationName
			, T.RegionCode = S.RegionCode
			, T.Region = S.Region
			, T.AddressLine1 = S.AddressLine1
			, T.AddressLine2 = S.AddressLine2
			, T.AddressLine3 = S.AddressLine3
			, T.Phone = S.Phone
			, T.Fax = S.Fax
			, T.BannerLocationName = S.BannerLocationName
			, T.DeliveryName = S.DeliveryName
			, T.DeliveryAddress1 = S.DeliveryAddress1
			, T.DeliveryAddress2 = S.DeliveryAddress2
			, T.DeliveryAddress3 = S.DeliveryAddress3
			, T.DeliveryPhone = S.DeliveryPhone
			, T.DeliveryFax = S.DeliveryFax
			, T.Email = S.Email
			, T.PostCode = S.PostCode
			, T.LastStockTake = S.LastStockTake
			, T.CurrentStockTake = S.CurrentStockTake
            , T.[StockTakeInProgress] = S.[StockTakeInProgress]
            , T.OperationsManager = S.OperationsManager
            , T.Latitude = S.Latitude
            , T.Longitude = S.Latitude
			, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

	When Not Matched By Target -- New Location
	Then Insert ([LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName], [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode]
                , [LastStockTake], [CurrentStockTake], [StockTakeInProgress], [OperationsManager], [Latitude], [Longitude], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
		Values (S.[LocationCode], S.[LocationName], S.[RegionCode], S.[Region], S.[AddressLine1], S.[AddressLine2], S.[AddressLine3], S.[Phone], S.[Fax], S.[BannerLocationName], S.[DeliveryName], S.[DeliveryAddress1], S.[DeliveryAddress2], S.[DeliveryAddress3], S.[DeliveryPhone], S.[DeliveryFax], S.[Email], S.[PostCode]
                , S.[LastStockTake], S.[CurrentStockTake], S.[StockTakeInProgress], S.[OperationsManager], S.[Latitude], S.[Longitude], S.[Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], S.[Final_Dim_EffectiveFrom], '9999-12-31')
	;

DROP TABLE If Exists #Dim_Location_Type2
Select	*
		, Min(Final_Dim_EffectiveFrom) Over(Partition By LocationCode) As ExpiryEffectiveTo
		, ROW_NUMBER() Over(Partition By LocationCode Order By Final_Dim_EffectiveFrom) As RN
Into	#Dim_Location_Type2
From	#Dim_Location_Final
Where	Final_Dim_EffectiveFrom <> First_Dim_EffectiveFrom
		Or Dim_Type2HashDiff not in (Select Dim_Type2HashDiff From [DW].[Dim_Location] Where LocationCode = #Dim_Location_Final.LocationCode And  Dim_EffectiveTo = '9999-12-31')

	-- Check for Locations with Type II Change 

		Declare @SummaryOfChanges Table (Change VARCHAR(20), UpdatedLocation int)

		Merge	[DW].Dim_Location As T -- Merge Target 
		Using	(Select	*
				From #Dim_Location_Type2 
				Where	RN = 1
				) As S -- Merge Source
				On T.LocationCode = S.LocationCode 
				And T.Dim_EffectiveTo = '9999-12-31'

		When Matched 
			And S.Dim_Type2HashDiff <> T.Dim_Type2HashDiff -- Type II Change
		Then Update
			Set T.Dim_EffectiveTo = Dateadd(Second, -1, S.ExpiryEffectiveTo)
				, T.Dim_Type1HashDiff = S.Dim_Type1HashDiff
			, T.Dim_UpdateDateTime = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)
		
		Output	$action As ActionOut
				, Inserted.LocationCode As UpdatedLocation
		Into @SummaryOfChanges
	;

	-- Insert New Instances for Locations updated by a Type II change
	Insert Into DW.Dim_Location ([LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName], [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode]
                                , [LastStockTake], [CurrentStockTake], [StockTakeInProgress], [OperationsManager], [Latitude], [Longitude], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select [LocationCode], [LocationName], [RegionCode], [Region], [AddressLine1], [AddressLine2], [AddressLine3], [Phone], [Fax], [BannerLocationName], [DeliveryName], [DeliveryAddress1], [DeliveryAddress2], [DeliveryAddress3], [DeliveryPhone], [DeliveryFax], [Email], [PostCode]
                                , [LastStockTake], [CurrentStockTake], [StockTakeInProgress], [OperationsManager], [Latitude], [Longitude], [Dim_SourceSystem], [Dim_Type1HashDiff], [Dim_Type2HashDiff], [Final_Dim_EffectiveFrom], [Final_Dim_EffectiveTo]
	From	#Dim_Location_Type2
			Join @SummaryOfChanges
				On LocationCode = UpdatedLocation

Commit
End Try
 
Begin Catch
 
  IF @@TRANCOUNT > 0
     Rollback
 
	Declare @ERROR_MESSAGE nvarchar(1000) = ERROR_MESSAGE()
			, @ERROR_SEVERITY int = ERROR_SEVERITY()

	Raiserror (@ERROR_MESSAGE, @ERROR_SEVERITY, -1) With Nowait

       Return;
END Catch

