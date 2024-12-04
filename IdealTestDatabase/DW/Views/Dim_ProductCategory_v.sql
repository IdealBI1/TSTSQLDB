


CREATE View [DW].[Dim_ProductCategory_v]

As

-- Clear Acopunting CTEs
With RebateHistory As (
	SELECT	[Incat]
			, Year(Cast('01-' + Replace([Month], '_', '-') As Datetime))	As CategoryYear
			, Cast('01-' + Replace([Month], '_', '-') As Datetime)			As FromDate
			, Dateadd(Second, -1, Dateadd(Day, 1, Convert(Datetime, EOMONTH(Cast('01-' + Replace([Month], '_', '-') As Date)))))	As ToDate
			, CatReb
	From (
	SELECT [Incat], [Jan_20], [Feb_20], [Mar_20], [Apr_20], [May_20], [Jun_20], [Jul_20], [Aug_20], [Sep_20], [Oct_20], [Nov_20], [Dec_20], [Jan_21], [Feb_21], [Mar_21], [Apr_21], [May_21], [Jun_21], [Jul_21], [Aug_21], [Sep_21], [Oct_21], [Nov_21], [Dec_21], [Jan_22], [Feb_22], [Mar_22]
		FROM [REF].[CategoryRebateHistory]) P
		Unpivot
		(CatReb For [Month] in ([Jan_20], [Feb_20], [Mar_20], [Apr_20], [May_20], [Jun_20], [Jul_20], [Aug_20], [Sep_20], [Oct_20], [Nov_20], [Dec_20], [Jan_21], [Feb_21], [Mar_21], [Apr_21], [May_21], [Jun_21], [Jul_21], [Aug_21], [Sep_21], [Oct_21], [Nov_21], [Dec_21], [Jan_22], [Feb_22], [Mar_22])) AS unpvt

	Union -- Add Latest values for April and May 2022

	SELECT	[Incat]
			, Year(Cast('01-' + Replace([Month], '_', '-') As Datetime))	As CategoryYear
			, Cast('01-' + Replace([Month], '_', '-') As Datetime)			As FromDate
			, Dateadd(Second, -1, Dateadd(Day, 1, Convert(Datetime, EOMONTH(Cast('01-' + Replace([Month], '_', '-') As Date)))))	As ToDate
			, CatReb
	From (
	SELECT [Incat], [Apr_22], [May_22]
		FROM [REF].[CategoryRebateHistory_2022]) P
		Unpivot
		(CatReb For [Month] in ([Apr_22], [May_22])) AS unpvt

	Union -- Add Historical values for 2017, 2018, and 2019

	SELECT	[Incat]
			, Year(Cast('01-' + Replace([Month], '_', '-') As Datetime))	As CategoryYear
			, Cast('01-' + Replace([Month], '_', '-') As Datetime)			As FromDate
			, Dateadd(Second, -1, Dateadd(Day, 1, Convert(Datetime, EOMONTH(Cast('01-' + Replace([Month], '_', '-') As Date)))))	As ToDate
			, CatReb
	From (
	SELECT [Incat], [Jan_17], [Feb_17], [Mar_17], [Apr_17], [May_17], [Jun_17], [Jul_17], [Aug_17], [Sep_17], [Oct_17], [Nov_17], [Dec_17], [Jan_18], [Feb_18], [Mar_18], [Apr_18], [May_18], [Jun_18], [Jul_18], [Aug_18], [Sep_18], [Oct_18], [Nov_18], [Dec_18], [Jan_19], [Feb_19], [Mar_19], [Apr_19], [May_19], [Jun_19], [Jul_19], [Aug_19], [Sep_19], [Oct_19], [Nov_19], [Dec_19]
		FROM [REF].[CategoryRebateHistory_2017]) P
		Unpivot
		(CatReb For [Month] in ([Jan_17], [Feb_17], [Mar_17], [Apr_17], [May_17], [Jun_17], [Jul_17], [Aug_17], [Sep_17], [Oct_17], [Nov_17], [Dec_17], [Jan_18], [Feb_18], [Mar_18], [Apr_18], [May_18], [Jun_18], [Jul_18], [Aug_18], [Sep_18], [Oct_18], [Nov_18], [Dec_18], [Jan_19], [Feb_19], [Mar_19], [Apr_19], [May_19], [Jun_19], [Jul_19], [Aug_19], [Sep_19], [Oct_19], [Nov_19], [Dec_19])) AS unpvt

	Union -- Add Incats that are not in the hidtory reference table

	Select	Distinct Incat
			, 2022 As CategoryYear
			, '2000-01-01 00:00:00.000' As FromDate
			, '2022-05-31 23:59:59.000' As ToDate
			, 0 As CatReb
	From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
	Where	Incat not in (Select Incat From [REF].[CategoryRebateHistory]
							Union Select Incat From [REF].[CategoryRebateHistory_2017]
							Union Select Incat From [REF].[CategoryRebateHistory_2022])

	) 
, UniqueRebateHistory As (
	Select	Incat
			, CatReb
			, [CategoryDescription]
			, [SubCategoryDescription]
			, Min(FromDate) As FromDate
			, ToDate
	From (
		Select	RH.Incat
				, RH.CatReb
				, [INCAT].[Category Description]						As [CategoryDescription]
				, [INCAT].[Category Sub Description]					As [SubCategoryDescription]
				, FromDate
				, (Select IsNull(Dateadd(Second, -1, Min(FromDate)), '9999-12-31')
					From RebateHistory T2
					Where	T2.Incat = RH.Incat
							And T2.CatReb <> RH.CatReb
							And T2.FromDate > RH.FromDate
						) As ToDate
		From RebateHistory RH
				Left Join Ref.CategoryHistory
					On RH.Incat = CategoryHistory.Incat
					And RH.CategoryYear = CategoryHistory.[Year]

				Left Join [HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
					On RH.Incat = [INCAT].Incat
					And [INCAT].[OMD_IS_RECORD_DELETED] = 'N'
					And [INCAT].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'
		) x
	Group By Incat
			, CatReb
			, [CategoryDescription]
			, [SubCategoryDescription]
			, ToDate
	)
, LastHistoryEndDate As (
	Select	[Incat], Max(ToDate) As LastToDate
	From	UniqueRebateHistory
	Group By [Incat]
	)
, CatStagingDates As (
	Select	[INCAT]
			, Min(OMD_INSERT_DATETIME) As FirstInsert
			, Max(OMD_INSERT_DATETIME) As LastInsert
	From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
	Where	[INCAT].[OMD_IS_RECORD_DELETED] = 'N'
			And OMD_INSERT_DATETIME > '2022-05-01'
	Group By [INCAT]
	Union -- Incat records showing in 2017 only
	Select	[INCAT]
			, Min(OMD_INSERT_DATETIME) As FirstInsert
			, Max(OMD_INSERT_DATETIME) As LastInsert
	From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
	Where	[INCAT] Not in (
		Select	[INCAT]
				--, Min(OMD_INSERT_DATETIME) As FirstInsert
				--, Max(OMD_INSERT_DATETIME) As LastInsert
		From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
		Where	[INCAT].[OMD_IS_RECORD_DELETED] = 'N'
				And OMD_INSERT_DATETIME > '2022-05-01'
		Group By [INCAT]
	)
		Group By [INCAT]
)

Select	Incat
		, CategoryCode
		, CategoryDescription
		, SubCategoryCode
		, SubCategoryDescription
		, MagnitudeCode
		, MagnitudeClassification
		, CategoryRebatePCT
		, Dim_SourceSystem
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Latest_Dim_InsertDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT(ISNULL(CONVERT(NVARCHAR, CategoryCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, CategoryDescription), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, SubCategoryCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, SubCategoryDescription), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, MagnitudeCode), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, MagnitudeClassification), N'')
					) 
		          )
			, 2)										As Dim_Type1HashDiff
		, CONVERT(CHAR(32),HASHBYTES('MD5', ISNULL(CONVERT(NVARCHAR, CategoryRebatePCT), N'')), 2)		As Dim_Type2HashDiff
From	(
-- Clear Accounting History Category Rebates - To be loaded once only

Select	[INCAT].Incat
		, [INCAT].Mj											As [CategoryCode]
		, UniqueRebateHistory.[CategoryDescription]				As [CategoryDescription]
		, [INCAT].Minor											As [SubCategoryCode]
		, UniqueRebateHistory.[SubCategoryDescription]			As [SubCategoryDescription]
		, [INCAT].[Type]										As [MagnitudeCode] 
		, MagC.MagnitudeClassification

		, UniqueRebateHistory.[CatReb]							As [CategoryRebatePCT]
		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When UniqueRebateHistory.FromDate = '2017-01-01'
				Then '2000-01-01' -- To add an older starting point for Oracle Transactions
				Else UniqueRebateHistory.FromDate
				End												As Dim_EffectiveFrom
		, Case 
				When UniqueRebateHistory.ToDate = LastHistoryEndDate.LastToDate
					And UniqueRebateHistory.ToDate < CatStagingDates.FirstInsert 
					Then DateAdd(Second, -1, CatStagingDates.FirstInsert)
				When UniqueRebateHistory.ToDate < CatStagingDates.FirstInsert Then UniqueRebateHistory.ToDate
				When CatStagingDates.LastInsert = '2017-12-31' Then Cast ('9999-12-31' As datetime2)
				When UniqueRebateHistory.FromDate > CatStagingDates.LastInsert Then Cast ('9999-12-31' As datetime2)
				Else DateAdd(Second, -1, CatStagingDates.FirstInsert)
				End												As Dim_EffectiveTo
		, [INCAT].OMD_INSERT_DATETIME							As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)

		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On [INCAT].Incat = [ProductGroup].Incat

		Left Join Ref.MagnitudeClassification MagC
			On [INCAT].[Type] = MagC.MAGFAM

		Join CatStagingDates
			On [INCAT].Incat = CatStagingDates.Incat
			And [INCAT].OMD_INSERT_DATETIME = CatStagingDates.FirstInsert
		
		Join UniqueRebateHistory
			On [INCAT].Incat = UniqueRebateHistory.Incat
			And UniqueRebateHistory.FromDate < CatStagingDates.FirstInsert

		Join LastHistoryEndDate
			On [INCAT].Incat = LastHistoryEndDate.Incat

Union -- Clear Accounting Current Daily Product Category updates

Select	[INCAT].Incat
		, [INCAT].Mj											As [CategoryCode]
		, [INCAT].[Category Description]						As [CategoryDescription]
		, [INCAT].Minor											As [SubCategoryCode]
		, [INCAT].[Category Sub Description]					As [SubCategoryDescription]
		, [INCAT].[Type]										As [MagnitudeCode] 
		, MagC.MagnitudeClassification
		, [INCAT].[CatReb]										As [CategoryRebatePCT]
		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When [INCAT].OMD_INSERT_DATETIME = '2017-12-31'
				Then '2000-01-01' -- To add an older starting point for Oracle Transactions
				Else [INCAT].OMD_INSERT_DATETIME
				End												As Dim_EffectiveFrom
		, IsNull(Dateadd(Second, -1, 
				Lead([INCAT].OMD_INSERT_DATETIME)
				Over(Partition By [INCAT].Incat
					Order By [INCAT].OMD_INSERT_DATETIME)
						), Cast ('9999-12-31' As datetime2))	As Dim_EffectiveTo
		, [INCAT].OMD_INSERT_DATETIME							As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_INCAT]	[INCAT] (nolock)
		Left Join [REF].[ProductGroup] [ProductGroup] (nolock)
			On [INCAT].Incat = [ProductGroup].Incat
		Left Join Ref.MagnitudeClassification MagC (nolock)
			On [INCAT].[Type] = MagC.MAGFAM
Where	[INCAT].[INCAT] is Not Null
		And [INCAT].[OMD_IS_RECORD_DELETED] = 'N'
		And [INCAT].OMD_INSERT_DATETIME >= '2022-05-01'

Union -- Oracle Current Daily Product Category Updates

Select	Incat
		, CategoryCode
		, CategoryDescription
		, SubCategoryCode
		, SubCategoryDescription
		, MagnitudeCode
		, MagnitudeClassification
		, CategoryRebatePCT
		, Dim_SourceSystem
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Latest_Dim_InsertDateTime
FRom (
Select	MTL_CATEGORIES.SEGMENT1						As Incat
		, Left(MTL_CATEGORIES.SEGMENT1, 2)			As [CategoryCode]
		, Null										As [CategoryDescription]
		, Substring(MTL_CATEGORIES.SEGMENT1, 3, 5)	As [SubCategoryCode]
		, Null										As [SubCategoryDescription]
		, Null										As [MagnitudeCode] 
		, Null										As MagnitudeClassification
		, IsNull(MTL_CATEGORIES.ATTRIBUTE2, 0)		As CategoryRebatePCT
		, 'Oracle'									As Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)			As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)			As Dim_EffectiveTo
		, MTL_CATEGORIES.OMD_INSERT_DATETIME		As Latest_Dim_InsertDateTime
		, ROW_NUMBER() 
			Over(Partition By MTL_CATEGORIES.SEGMENT1 
					Order By MTL_CATEGORIES.OMD_INSERT_DATETIME Desc) As RN 

From	[HSTG].[HSTG_EBS_MTL_CATEGORIES] MTL_CATEGORIES (nolock)
		Left Join (Select InCat 
					From [HSTG].[HSTG_CA_INCAT]	 (nolock)
					Where	OMD_IS_RECORD_DELETED = 'N'
							And OMD_CURRENT_RECORD_INDICATOR = 'Y'
					Union 
					Select [Incat]
					FROM [REF].[CategoryRebateHistory]
					Union
					Select	Incat
					From	Ref.CategoryHistory
					) [INCAT]
			On MTL_CATEGORIES.SEGMENT1 = [INCAT].Incat
Where	MTL_CATEGORIES.OMD_CURRENT_RECORD_INDICATOR = 'Y'
		And [INCAT].Incat Is Null --- To cxclude Claear Accounting Categories 
) Incats
Where RN = 1

) As DimProductCategory

