


Create Function [DW].[uf_MonthsBetween]
(
       @dateFrom     DateTime,
       @dateTo              DateTime
)
RETURNS decimal (9,2)
AS
-- The code for this function was provided by Richard Tanios from Rexel AU to used for the Indent Age Monthly Fact table

Begin

       -- Declare the return variable here
       DECLARE @DiffMonths as int = DATEDIFF(m, @dateFrom, @dateTo)
       DECLARE @ModuloDays as int = DATEDIFF(d, DATEADD(m, @DiffMonths, @dateFrom), @dateTo)


       -- Return the result of the function
       RETURN @DiffMonths * 1.0 + (@ModuloDays/31.0)

End
