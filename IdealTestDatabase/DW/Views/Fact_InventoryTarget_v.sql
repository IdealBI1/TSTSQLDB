
CREATE View [DW].[Fact_InventoryTarget_v] 

As

With  
TargetDates As (
    Select  Cal_Date_key - 9999 As FromTargetDateKey
            , Cal_Date_key As TargetDateKey
            , Dim_Date.Caldate As TargetDate
    From    DW.Dim_Date (nolock)
    WHERE   Caldate = EOMONTH(Caldate)
            And Cal_Date_key > (Select IsNull(Max(TargetDateKey), 20220731) As TargetDateKey From DW.Fact_InventoryTarget (nolock))
            And Caldate <= EOMONTH(CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS Date))
)
SELECT  TargetDateKey
        , TargetDateLocation.Dim_Location_Key
        , Sum(SalesValueExGST) As Rolling12MSalesValue
        , Fact_Sales.Fact_SourceSystem
        ,  CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2) As Fact_UpdateDateTime
FROM    DW.Fact_Sales (nolock)
        Join TargetDates
            On Fact_Sales.Dim_Date_Key Between TargetDates.FromTargetDateKey And TargetDates.TargetDateKey
        Join DW.Dim_Location (nolock)
            On Fact_Sales.Dim_Location_Key = Dim_Location.Dim_Location_Key
        Join DW.Dim_Location TargetDateLocation (nolock)
            On Dim_Location.LocationCode = TargetDateLocation.LocationCode
            And TargetDates.TargetDate Between TargetDateLocation.Dim_EffectiveFrom And TargetDateLocation.Dim_EffectiveTo
Group By TargetDateKey
        , TargetDateLocation.Dim_Location_Key
        , TargetDateLocation.LocationCode
        , Fact_Sales.Fact_SourceSystem
