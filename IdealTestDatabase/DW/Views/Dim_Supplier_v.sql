


CREATE View [DW].[Dim_Supplier_v]

As

Select	SupplierNumber
		, SupplierSortKey
		, SupplierName
        , KissAndKindInd
		, AddressLine1
		, AddressLine2
		, AddressLine3
		, Phone
		, Mobile
		, StartDate
		, Dim_SourceSystem
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Latest_Dim_InsertDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, SupplierName), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine1), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine2), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine3), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Phone), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Mobile), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, StartDate), N'')
					) 
		          )
			, 2)			As Dim_Type1HashDiff
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, SupplierName), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, KissAndKindInd), N'')
					) 
		          )
			, 2)			As Dim_Type2HashDiff

From	(
-- Clear Accounting Suppliers
Select	Cast([CLMAST].[Sup#] As Int)							As [SupplierNumber]
		, [CLMAST].[Key]										As [SupplierSortKey] 
		, [Supplier Name]										As [SupplierName]
        , KK.KissAndKindInd
		, [Address Line 1]										As [AddressLine1]
		, [Address Line 2]										As [AddressLine2]
		, [Address Line 3]										As [AddressLine3]
		, [CLMAST].[Phone]
		, [Mobile]
		, [CLMAST].[Start Date]									As [StartDate]

		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When Lag([CLMAST].OMD_INSERT_DATETIME)
					Over(Partition By [CLMAST].[Sup#]
					Order By [CLMAST].OMD_INSERT_DATETIME) 
					Is Null Then Cast ('2000-01-01' As datetime2)
				Else [CLMAST].OMD_INSERT_DATETIME
				End												As Dim_EffectiveFrom
		, IsNull(Dateadd(Second, -1, 
				Lead([CLMAST].OMD_INSERT_DATETIME)
				Over(Partition By [CLMAST].[Sup#]
					Order By [CLMAST].OMD_INSERT_DATETIME)
						), Cast ('9999-12-31' As datetime2))	As Dim_EffectiveTo
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values ([CLMAST].OMD_INSERT_DATETIME)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_CLMAST]				[CLMAST] (nolock)
        Left Join REF.SupplierKissAndKind KK
            On CLMAST.Sup# = KK.Supplier#

Where	[CLMAST].sup# is Not Null
        And [CLMAST].[Supplier Name] is Not Null
		And [CLMAST].[OMD_IS_RECORD_DELETED] = 'N'

) As DimSupplier
