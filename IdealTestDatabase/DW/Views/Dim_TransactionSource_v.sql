


CREATE View [DW].[Dim_TransactionSource_v]

As

With CA_Trans_Source As (
	Select	Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem
	From (Values (2, 'Sales Order', 'Clear Accounting')
				,(3, 'Sales Quote', 'Clear Accounting')
				,(4, 'WEBSHOP', 'Clear Accounting')
				,(5, 'MOBILE', 'Clear Accounting')
				,(6, 'EDI', 'Clear Accounting')
				) Sources(Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem)
)
, Oracle_Trans_Source As (
	Select	Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem
	From (Values (7, 'External Standard Order', 'Oracle')
				,(8, 'Internal Order', 'Oracle')
				,(9, 'Internal Transfer Return Stock', 'Oracle')
				) Sources(Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem)
)
, Others As (
	Select	Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem
	From (Values (0, 'Unknown', 'Unknown')
				,(1, 'Unspecified', 'Unspecified')
				,(99, 'Others', 'Others')
				) Sources(Dim_TransactionSource_Key, TransactionSource, Dim_SourceSystem)
)
Select	Dim_TransactionSource_Key
		, TransactionSource As TransactionSourceGroup
		, TransactionSource
		, Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)		As Dim_EffectiveTo
From	Others
Union
Select	Dim_TransactionSource_Key
		, TransactionSource As TransactionSourceGroup
		, TransactionSource
		, Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)		As Dim_EffectiveTo
From	CA_Trans_Source
Union
Select	Dim_TransactionSource_Key
		, TransactionSource As TransactionSourceGroup
		, TransactionSource
		, Dim_SourceSystem
		, Cast ('2000-01-01' As datetime2)		As Dim_EffectiveFrom
		, Cast ('9999-12-31' As datetime2)		As Dim_EffectiveTo
From	Oracle_Trans_Source

