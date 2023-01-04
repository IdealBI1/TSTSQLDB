

CREATE Procedure [LND].[usp_SetNextExtractWaterMark] (@SourceTable Nvarchar(100) = Null)

As

Declare @TableName Nvarchar(100)
        , @LastDateSQL nvarchar(1000)
        , @LastDate datetime2

Declare ActiveTables Cursor
For
SELECT Replace(TABLE_NAME, 'HSTG_EBS_', '') As TableName
              , 'Select @LastDate = Max([' + Case When @SourceTable = 'RD_BI_INV_VALUES_RPT' Then 'creation_date' Else 'LAST_UPDATE_DATE' End + ']) From [' + TABLE_SCHEMA + '].[' + TABLE_NAME + '] (nolock)' As LastDateSQL
FROM   Information_schema.Tables
Where  TABLE_SCHEMA = 'HSTG'
        And TABLE_NAME Like '%[_]EBS[_]%'
        And Replace(TABLE_NAME, 'HSTG_EBS_', '') In (Select	[table_name]
                                                      From		[adf].[oracle_tables_list]
													   Where	is_active = 1 Or @SourceTable IS Not Null
                                                     )
        And TABLE_NAME Like 'HSTG_EBS_' + IsNull(@SourceTable, '%')

Open ActiveTables

Fetch Next From ActiveTables
Into @TableName , @LastDateSQL

While @@FETCH_STATUS = 0
Begin

       exec sp_executesql @LastDateSQL, N'@LastDate datetime2 out', @LastDate out
	   Select @LastDate = Max(LastDate) From (Values (@LastDate), (DateAdd(Day, -10, getdate()))) As Latest(LastDate) -- Use today less 10 days if the last update is too old

       Update      [adf].[oracle_tables_list]
       Set  [extract_SQL] = Concat(Cast(Left([extract_SQL], CHARINDEX('>=', [extract_SQL], 1) + 2) As varchar(max)) , '''' , Format(@LastDate, 'dd-MMM-yyyy') , '''')
       Where  table_name = @TableName

    --   Select	[table_name]
				--, [extract_SQL]
				--, Concat(Cast(Left([extract_SQL], CHARINDEX('>=', [extract_SQL], 1) + 2) As varchar(max)) , '''' , Format(@LastDate, 'dd-MMM-yyyy') , '''') As New_extract_SQL
    --   From   [adf].[oracle_tables_list]
    --   Where  table_name = @TableName

       Fetch Next From ActiveTables
       Into @TableName , @LastDateSQL

End

Close ActiveTables
Deallocate ActiveTables

SELECT [owner]
      ,[table_name]
      ,[extract_SQL]
  FROM [adf].[oracle_tables_list]
  Where	is_active = 1
        And [table_name] Like IsNull(@SourceTable, '%')
