
Create Procedure [DW].[usp_Update_DW_Objects]

As 

Declare @StartingTime Datetime = GetDate()

Exec [DW].[usp_Update_Dim_Date]

Exec [DW].[usp_Update_Dim_TransactionSource]

Exec [DW].[usp_Update_Dim_Location]

Exec [DW].[usp_Update_Dim_Customer]

Exec [DW].[usp_Update_Dim_ProductCategory]

Exec [DW].[usp_Update_Dim_Product]

Exec [DW].[usp_Update_Dim_SalesTransaction]

Exec [DW].[usp_Update_Fact_Sales]

Exec [DW].[usp_Update_Fact_SalesOrderOpen]

Exec DW.[usp_Update_Fact_SalesOrderHistory]

Select DateDiff(Second, @StartingTime, GetDate()) As Duration

