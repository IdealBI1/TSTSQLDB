CREATE Procedure adf.usp_ScaleDB (
        @Edition nvarchar(20)
        , @ServiceObjective nvarchar(20)
)

As 
Declare @SQL nvarchar(max)

Set @SQL = 'ALTER DATABASE [' + db_name() + '] MODIFY (EDITION = ''' + @Edition + ''', SERVICE_OBJECTIVE = ''' + @ServiceObjective + ''');'

Exec(@SQL)

-- While DATABASEPROPERTYEX(db_name(),'edition') <> @Edition
--     Or DATABASEPROPERTYEX(db_name(),'serviceobjective') <> @ServiceObjective
-- BEGIN
--     WAITFOR Delay '00:00:05'
-- End

/*

Exec adf.usp_ScaleDB @Edition = 'Hyperscale', @ServiceObjective = 'HS_Gen5_4'

*/

