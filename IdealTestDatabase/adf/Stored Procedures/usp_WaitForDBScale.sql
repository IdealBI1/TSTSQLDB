
CREATE Procedure adf.usp_WaitForDBScale (
        @Edition nvarchar(20)
        , @ServiceObjective nvarchar(20)
        , @WaitDuration int 
)

As 

DECLARE @WaitEndTime As DATETIME = Dateadd(Second, @WaitDuration, getdate())

While (DATABASEPROPERTYEX(db_name(),'edition') <> @Edition
            Or DATABASEPROPERTYEX(db_name(),'serviceobjective') <> @ServiceObjective)
        And getdate() < @WaitEndTime
BEGIN
    WAITFOR Delay '00:00:05'
End

