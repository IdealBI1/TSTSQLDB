


CREATE View [DW].[Dim_Customer_v]

As

-- CA CTEs
-- CA CTEs added on 16/08/2022
-- CA CTEs added to capture historical changes in Territory and Sales Person
With CATerritory As (
Select	crmt
		, [Msp]
		, [Crm Territory Description]
		, Case When Lag(OMD_INSERT_DATETIME) Over(Partition By crmt Order By OMD_INSERT_DATETIME) Is Null 
				Then Cast('2000-01-01' As Date)
				Else OMD_INSERT_DATETIME
				End As EffectiveFrom
		, IsNull(Dateadd(Second, -1, Lead(OMD_INSERT_DATETIME) Over(Partition By crmt Order By OMD_INSERT_DATETIME)), Cast('9999-12-31' As Date)) As EffectiveTo
		, OMD_INSERT_DATETIME
From	[HSTG].[HSTG_CA_SYTABLES_DLCA] Territory (nolock)
Where	[OMD_IS_RECORD_DELETED] = 'N'
)
, CASalesPerson As (
Select	[Spn]
		, [Salesperson Name]
		, Case When Lag(OMD_INSERT_DATETIME) Over(Partition By [Spn] Order By OMD_INSERT_DATETIME) Is Null 
				Then Cast('2000-01-01' As Date)
				Else OMD_INSERT_DATETIME
				End As EffectiveFrom
		, IsNull(Dateadd(Second, -1, Lead(OMD_INSERT_DATETIME) Over(Partition By [Spn] Order By OMD_INSERT_DATETIME)), Cast('9999-12-31' As Date)) As EffectiveTo
		, OMD_INSERT_DATETIME
From	[HSTG].[HSTG_CA_DLSMAN]	SalesPerson (nolock)
Where	SalesPerson.[Function Role Title] <> 'Branch Location'
		And SalesPerson.[OMD_IS_RECORD_DELETED] = 'N'
)
-- Oracle CTEs
, Contacts As (
	SELECT	HZ_PARTIES.party_id
			, Case HZ_CONTACT_POINTS.phone_line_type 
					When 'MOBILE' Then 'Mobile'
					When 'GEN' Then 'Phone'
					Else 'ContactEmail'
					End As ContactType
			, isNull(HZ_CONTACT_POINTS.phone_country_code, '') 
				+ isNull(HZ_CONTACT_POINTS.phone_area_code, '') 
				+ isNull(HZ_CONTACT_POINTS.phone_number, '')	As Phone
			, isNull(HZ_CONTACT_POINTS.email_address, '') As ContactEmail
			, ROW_NUMBER() Over(Partition By HZ_PARTIES.party_id, HZ_CONTACT_POINTS.phone_line_type Order By HZ_CONTACT_POINTS.LAST_UPDATE_DATE Desc) RN
	FROM	[HSTG].[HSTG_EBS_HZ_CONTACT_POINTS] HZ_CONTACT_POINTS (nolock)
			Join [HSTG].[HSTG_EBS_HZ_PARTIES] HZ_PARTIES (nolock)
				On HZ_CONTACT_POINTS.owner_table_id = HZ_PARTIES.party_id
			Left Join [HSTG].[HSTG_EBS_HZ_RELATIONSHIPS] rel (nolock)
				On HZ_PARTIES.party_id = rel.subject_id
				And rel.relationship_code = 'REGISTERED_COMPANY'
				And rel.status = 'A'
			Left Join [HSTG].[HSTG_EBS_HZ_PARTIES] entity (nolock)
				On rel.[object_id] = entity.party_id
	WHERE	HZ_CONTACT_POINTS.owner_table_name = 'HZ_PARTIES'
			AND HZ_CONTACT_POINTS.status = 'A'
			And IsNull(HZ_CONTACT_POINTS.phone_line_type, '') <> 'FAX'
)
, LastSaleDate As (
	SELECT sold_to_org_id, MAX(ORDERED_DATE) LastSale
	FROM [HSTG].[HSTG_EBS_OE_ORDER_HEADERS_ALL]   (nolock)
	Group By sold_to_org_id
)
, Branch As (
	Select	FND_FLEX_VALUES.flex_value
			, FND_FLEX_VALUES_TL.[description] As branch
	From	[HSTG].[HSTG_EBS_FND_FLEX_VALUES] FND_FLEX_VALUES (nolock)
			Join [HSTG].[HSTG_EBS_FND_FLEX_VALUES_TL] FND_FLEX_VALUES_TL (nolock)
				On FND_FLEX_VALUES.flex_value_id = FND_FLEX_VALUES_TL.flex_value_id
			Join [HSTG].[HSTG_EBS_FND_FLEX_VALUE_SETS] FND_FLEX_VALUE_SETS (nolock)
				On FND_FLEX_VALUES.flex_value_set_id = FND_FLEX_VALUE_SETS.flex_value_set_id
				And FND_FLEX_VALUE_SETS.flex_value_set_name = 'RD_BRANCH'
)
, SalesPerson As (
	Select	attribute2
			, full_name As SalesPersonName
			, ROW_NUMBER() Over(Partition By attribute2 Order By LAST_UPDATE_DATE Desc) RN
	From	[HSTG].[HSTG_EBS_PER_ALL_PEOPLE_F] (nolock)
	Where	GetDate() between IsNull(effective_start_date, GetDate()-1) and IsNull(effective_end_date, GetDate()+1)
)
, CustomerType As (
	Select	lookup_code
			, meaning As CustomerTypeDescription
			, ROW_NUMBER() Over(Partition By lookup_code Order By LAST_UPDATE_DATE Desc) RN
	From	[HSTG].[HSTG_EBS_FND_LOOKUP_VALUES]  (nolock)
	Where	lookup_type = 'CUSTOMER_CATEGORY'
)
, InvoiceEmail As (
	Select	PARTY_ID
			, cust_account_id
			, DEBIT_ADVICE_EMAIL As InvoiceEmail
			, ROW_NUMBER() Over(Partition By PARTY_ID, cust_account_id Order By LAST_UPDATE_DATE Desc) RN
	From	[HSTG].[HSTG_EBS_IBY_EXTERNAL_PAYERS_ALL] (nolock)
)

Select	CustomerNumber
		, CustomerSortKey
		, CustomerName
		, AddressLine1
		, AddressLine2
		, AddressLine3
		, Contact
		, Phone
		, Mobile
		, PostCode
		, ContactEmail
		, InvoiceEmail
		, CurrentBalance
		, LastSale
		, CreditLimit
		, StartDate
		, Dim_CustomerBranch_Key
		, CustomerTypeDescription
		, CustomerSector
		, CustomerSalesType
		, SalespersonName
		, CrmTerritory
		, CRMTNumber
		, Dim_SourceSystem
		, Dim_EffectiveFrom
		, Dim_EffectiveTo
		, Latest_Dim_InsertDateTime
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, CustomerName), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine1), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine2), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, AddressLine3), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Contact), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Phone), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, Mobile), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, PostCode), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, ContactEmail), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, InvoiceEmail), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CurrentBalance), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, LastSale), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CreditLimit), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, StartDate), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CustomerTypeDescription), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CustomerSector), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CustomerSalesType), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CrmTerritory), N'')
					) 
		          )
			, 2)			As Dim_Type1HashDiff
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT( ISNULL(CONVERT(NVARCHAR, Dim_CustomerBranch_Key), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, SalespersonName), N'')
		              , '|', ISNULL(CONVERT(NVARCHAR, CRMTNumber), N'')
					) 
		          )
			, 2)			As Dim_Type2HashDiff

From	(
-- Clear Accounting Customers
Select	Cast([DLMAST].[Cust#] As Int)							As [CustomerNumber]
		, [DLMAST].[Key]										As [CustomerSortKey] 
		, [Customer Name]										As [CustomerName]
		, [Address Line 1]										As [AddressLine1]
		, [Address Line 2]										As [AddressLine2]
		, [Address Line 3]										As [AddressLine3]
		, [Contact]
		, [DLMAST].[Phone]
		, [Mobile]
		, [Pstcde]												As [PostCode]
		, [Email Contact]										As [ContactEmail]
		, [Email Invoice]										As [InvoiceEmail]
		, [BalCurrent]											As [CurrentBalance]
		, [Last Sale]											As [LastSale]
		, [Cred Limit]											As [CreditLimit]
		, [DLMAST].[Start Date]									As [StartDate]
		, IsNull(Dim_Location.Dim_Location_Key, '0')			As Dim_CustomerBranch_Key
		, [DLAREA].[Customer Type Description]					As [CustomerTypeDescription]
		, CustomerSector.Sector									As [CustomerSector]
		, CustomerSector.[Sales Type]							As [CustomerSalesType]

		, IsNull(SalesPerson.[Salesperson Name], 'Unspecified')	As [SalespersonName]
		, IsNull(Territory.[Crm Territory Description], 'Unspecified')
																As [CrmTerritory]
		, Cast([DLMAST].crmt As int)							As [CRMTNumber]

		, 'Clear Accounting'									As Dim_SourceSystem
		, Case When Lag([DLMAST].OMD_INSERT_DATETIME)
					Over(Partition By [DLMAST].[Cust#]
					Order By [DLMAST].OMD_INSERT_DATETIME) 
					Is Null Then Cast ('2000-01-01' As datetime2)
				Else [DLMAST].OMD_INSERT_DATETIME
				End												As Dim_EffectiveFrom
		, IsNull(Dateadd(Second, -1, 
				Lead([DLMAST].OMD_INSERT_DATETIME)
				Over(Partition By [DLMAST].[Cust#]
					Order By [DLMAST].OMD_INSERT_DATETIME)
						), Cast ('9999-12-31' As datetime2))	As Dim_EffectiveTo
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values ([DLMAST].OMD_INSERT_DATETIME)
						, ([DLAREA].OMD_INSERT_DATETIME)
						, (Branch.OMD_INSERT_DATETIME)
						, (Territory.OMD_INSERT_DATETIME)
						, (SalesPerson.OMD_INSERT_DATETIME)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Dim_InsertDateTime

From	[HSTG].[HSTG_CA_DLMAST]				[DLMAST] (nolock)
		Left Join [HSTG].[HSTG_CA_DLAREA]	[DLAREA] (nolock)
			On [DLMAST].CusTyp = DLAREA.CusTyp
			And [DLAREA].[OMD_IS_RECORD_DELETED] = 'N'
			And [DLAREA].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join [HSTG].[HSTG_CA_DLSMAN]	Branch (nolock)
			On [DLMAST].Crl = Branch.[Spn]
			And Branch.[Function Role Title] = 'Branch Location'
			And Branch.[OMD_IS_RECORD_DELETED] = 'N'
			And Branch.[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		LEft Join DW.Dim_Location Dim_Location
			On [Branch].[Salesperson Name] = Dim_Location.LocationName
			And Dim_Location.Dim_EffectiveTo = '9999-12-31'

--		Left Join [HSTG].[HSTG_CA_SYTABLES_DLCA] Territory (nolock)
		Left Join CATerritory Territory (nolock)
			On [DLMAST].crmt = Territory.crmt
			And [DLMAST].OMD_INSERT_DATETIME Between Territory.EffectiveFrom And Territory.EffectiveTo
			--And Territory.[OMD_IS_RECORD_DELETED] = 'N'
			--And Territory.[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

--		Left Join [HSTG].[HSTG_CA_DLSMAN]	SalesPerson (nolock)
		Left Join CASalesPerson	SalesPerson (nolock)
			On Territory.[Msp] = SalesPerson.[Spn]
			And [DLMAST].OMD_INSERT_DATETIME Between SalesPerson.EffectiveFrom And SalesPerson.EffectiveTo
			--And SalesPerson.[Function Role Title] <> 'Branch Location'
			--And SalesPerson.[OMD_IS_RECORD_DELETED] = 'N'
			--And SalesPerson.[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

		Left Join Ref.CustomerSector (nolock)
			On [DLMAST].CusTyp = CustomerSector.CusTyp

Where	[DLMAST].Cust# is Not Null
		And [DLMAST].[OMD_IS_RECORD_DELETED] = 'N'

Union	-- Oracle Customers

SELECT  account_number							As CustomerNumber
        , address_lines_phonetic				As CustomerSortKey
        , party_name							As CustomerName
        , HZ_LOCATIONS.Address1					As AddressLine1
        , HZ_LOCATIONS.Address2					As AddressLine2
        , HZ_LOCATIONS.city						As AddressLine3
        , HZ_PARTY_SITES.mailstop				As Contact
		, Phone.Phone
		, Mobile.Phone							As Mobile
        , HZ_LOCATIONS.Postal_code				As PostCode
		, ContactEmail.ContactEmail
		, InvoiceEmail.InvoiceEmail
        , null									As CurrentBalance
		, LastSaleDate.LastSale
        , HZ_PARTIES.attribute6					As CreditLimit
        , HZ_PARTY_SITES.attribute8				As StartDate
		, IsNull(Dim_Location.Dim_Location_Key
			, IsNull(Dim_Location_Internal.Dim_Location_Key, '0'))
												As Dim_CustomerBranch_Key
		, CustomerType.CustomerTypeDescription
		, null 									As CustomerSector
		, null									As CustomerSalesType
		, SalesPerson.SalesPersonName
		, RA_TERRITORIES.[description]			As CrmTerritory	
		, RA_TERRITORIES.segment2				As CRMTNumber

		, 'Oracle'								As Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)		As Dim_EffectiveTo
		, (Select Max(OMD_INSERT_DATETIME) 
			From (Values (HZ_PARTIES.OMD_INSERT_DATETIME)
						, (HZ_CUST_ACCOUNTS_ALL.OMD_INSERT_DATETIME)
						, (HZ_CUST_ACCT_SITES_ALL.OMD_INSERT_DATETIME)
						, (HZ_PARTY_SITES.OMD_INSERT_DATETIME)
						, (HZ_LOCATIONS.OMD_INSERT_DATETIME)
						, (RA_TERRITORIES.OMD_INSERT_DATETIME)
						) As AllInsertDates(OMD_INSERT_DATETIME)
			) As Latest_Dim_InsertDateTime

FROM	[HSTG].[HSTG_EBS_HZ_PARTIES] HZ_PARTIES (nolock)
		Join [HSTG].[HSTG_EBS_HZ_CUST_ACCOUNTS_ALL] HZ_CUST_ACCOUNTS_ALL    (nolock)
			On HZ_PARTIES.PARTY_ID = HZ_CUST_ACCOUNTS_ALL.PARTY_ID
			And HZ_CUST_ACCOUNTS_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join [HSTG].[HSTG_CA_DLMAST] DLMAST (nolock)
			On Cast(account_number As int)  = Cast(DLMAST.[Cust#] As Int)

      Left Join [HSTG].[HSTG_EBS_HZ_CUST_ACCT_SITES_ALL] HZ_CUST_ACCT_SITES_ALL (nolock)
		On HZ_CUST_ACCOUNTS_ALL.cust_account_id = HZ_CUST_ACCT_SITES_ALL.cust_account_id
		And HZ_CUST_ACCT_SITES_ALL.ship_to_flag = 'P'
		And HZ_CUST_ACCT_SITES_ALL.org_id = 85
		And HZ_CUST_ACCT_SITES_ALL.OMD_CURRENT_RECORD_INDICATOR = 'Y'

      Left Join [HSTG].[HSTG_EBS_HZ_PARTY_SITES] HZ_PARTY_SITES (nolock)
		On HZ_CUST_ACCT_SITES_ALL.party_site_id = HZ_PARTY_SITES.party_site_id
		And HZ_PARTY_SITES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

      Left Join [HSTG].[HSTG_EBS_HZ_LOCATIONS] HZ_LOCATIONS (nolock)
		On HZ_PARTY_SITES.location_id = HZ_LOCATIONS.location_id
		And HZ_LOCATIONS.OMD_CURRENT_RECORD_INDICATOR = 'Y'

	  Left Join LastSaleDate
		On HZ_CUST_ACCOUNTS_ALL.cust_account_id = LastSaleDate.sold_to_org_id

		Left Join Contacts As Phone
			On HZ_CUST_ACCOUNTS_ALL.PARTY_ID = Phone.PARTY_ID
			And Phone.ContactType = 'Phone'
			And Phone.RN = 1

		Left Join Contacts As Mobile
			On HZ_CUST_ACCOUNTS_ALL.PARTY_ID = Mobile.PARTY_ID
			And Mobile.ContactType = 'Mobile'
			And Mobile.RN = 1

		Left Join Contacts As ContactEmail
			On HZ_CUST_ACCOUNTS_ALL.PARTY_ID = ContactEmail.PARTY_ID
			And ContactEmail.ContactType = 'ContactEmail'
			And ContactEmail.RN = 1

		Left Join InvoiceEmail
			On HZ_CUST_ACCOUNTS_ALL.PARTY_ID = InvoiceEmail.PARTY_ID
	         And HZ_CUST_ACCOUNTS_ALL.cust_account_id = InvoiceEmail.cust_account_id
			 And InvoiceEmail.RN = 1
			 
		Left Join [HSTG].[HSTG_EBS_RA_TERRITORIES] RA_TERRITORIES (nolock)
			On HZ_CUST_ACCT_SITES_ALL.territory_id = RA_TERRITORIES.territory_id
			And RA_TERRITORIES.OMD_CURRENT_RECORD_INDICATOR = 'Y'

		Left Join SalesPerson
			On RA_TERRITORIES.attribute1 = SalesPerson.attribute2
			And SalesPerson.RN = 1

		Left Join Branch
			On RA_TERRITORIES.segment1 = Branch.flex_value

		Left Join DW.Dim_Location Dim_Location
			On [Branch].Branch = Dim_Location.LocationName
			And Dim_Location.Dim_EffectiveTo = '9999-12-31'

		Left Join DW.Dim_Location Dim_Location_Internal
			On HZ_LOCATIONS.address_lines_phonetic = Dim_Location_Internal.LocationCode
			And Dim_Location_Internal.Dim_EffectiveTo = '9999-12-31'

		Left Join CustomerType
			On HZ_PARTIES.category_code = CustomerType.lookup_code
			And CustomerType.RN = 1

Where	HZ_PARTIES.OMD_CURRENT_RECORD_INDICATOR = 'Y'
		And DLMAST.Cust# is Null -- Exclude Clear Accounting Customers 

) As DimCustomer
