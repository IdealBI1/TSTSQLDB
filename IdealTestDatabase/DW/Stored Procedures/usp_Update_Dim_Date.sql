
CREATE PROCEDURE [DW].[usp_Update_Dim_Date]

/****************************************************************************
* Name:		usp_Update_Dim_Date
* Author:	Sameh Hassan
* Desc:		Inserts/updates the TransactionSource dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		May 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	07/05/2022	Sameh Hassan    Created SP
****************************************************************************/

As
If Not Exists (Select Cal_Date_key From DW.Dim_Date Where Cal_Date_key = -1)
	Insert Into DW.Dim_Date
	Select	-1				As Dim_Date_key
			, '1999-12-31'	As CalDate
			, '1999-12-31'	As ReportDate
			, 0				As CalDayNo
			, 'Unk'			As CalDayNameShort
			, 'Unk'			As CalDayNameLong
			, 0				As CalDayOfWeekNo
			, 0				As CalDayOfYearNo
			, 0				As CalWeekOfYearNo
			, 0				As CalYearWeekNo
			, 0				As CalMonthNo
			, 'Unk'			As CalMonthNameShort
			, 'Unk'			As CalMonthNameLong
			, 0				As CalYearMonthNo
			, 'Unk'			As CalMonthYearName
			, 0				As CalQuarterNo
			, 'Un'			As CalQuarterName
			, 0				As CalYearNo
			, '1999-12-01'	As CalFirstDayOfMonth
			, '1999-12-31'	As CalLastDayOfMonth
			, 0				As FinMonthNo
			, 0				As FinQuarterNo
			, 'Un'			As FinQuarterName
			, 0				As FinYearMonthNo
			, 0				As FinYearWeekNo
			, 0				As FinYear
			, '1999-12-01'	As FinFirstDayOfMonth
			, '1999-12-31'	As FinLastDayOfMonth
			, 'N'			As IsBusinessDay
			, 0				As BusinessDayNo
			, 0				As TotalBusinessDaysInMonth
			, 'N'			As IsHoliday
			, Null			As HoliDayName

Declare @D Date
		, @FD Date
		, @LD Date
		, @WorkDays tinyint
		, @WorkDayNo tinyint

Select	@D = isNull(MAX(CalDate), '2000-01-01')
From	DW.Dim_Date

Set	@LD = Convert(Date, Convert(varchar, Year(GetDate()) + 1) + '-12-31') 

While @D < @LD
Begin 

	Set @D = DATEADD(Day, 1, @D)
	Set @FD = @D -- Financial year for Ideal is same as the Cal year.
	--Set @FD = DATEADD(MONTH, 9, @D) -- Use this value when the Fin Year starts on April First.

	Insert Into DW.Dim_Date ([Cal_Date_key], [Caldate], [CalDayNo], [CalDayNameshort], [CalDayNamelong], [CalDayOfWeekNo], [CalDayOfYearNo]
						, [CalWeekOfYearNo], [CalYearWeekNo], [CalMonthNo], [CalMonthNameshort], [CalMonthNamelong], [CalYearMonthNo], [CalMonthYearName]
						, [CalQuarterNo], [CalQuarterName], [CalYearNo], [CalfirstDayOfMonth], [CallastDayOfMonth]
						, [FinMonthNo], [FinQuarterNo], [FinQuarterName], [FinYearMonthNo], [FinYearWeekNo], [FinYear], [FinFirstDayOfMonth], [FinLastDayOfMonth]
						, [IsBusinessDay], [IsHoliday], [HolidayName])

	Select	Cal_Date_key = CONVERT(int, convert(char, @D, 112))
			, Caldate = @D
			, CalDayNo = DATEPART(Day, @D)
			, CalDayNameshort = left(datename(WEEKDAY, @D), 3)
			, CalDayNamelong = datename(WEEKDAY, @D)
			, CalDayOfWeekNo = DATEPART(WEEKDAY, @D)
			, CalDayOfYearNo = DATEPART(Y, @D)
			, CalWeekOfYearNo = DATEPART(WEEK, @D)
			, CalYearWeekNo = Year(@D) * 100 + DATEPART(WEEK, @D)
			, CalMonthNo = Month(@D)
			, CalMonthNameshort = left(datename(Month, @D), 3)
			, CalMonthNamelong = datename(Month, @D)
			, CalYearMonthNo = Year(@D) * 100 + Month(@D)
			, CalMonthYearName = left(datename(Month, @D), 3) + '-' + Convert(char(2), Year(@D) - 2000)
			, CalQuarterNo = DATEPART(QUARTER, @D)
			, CalQuarterName = 'Q' + cast(DATEPART(QUARTER, @D) As char(1))
			, CalYearNo = DATEPART(YEAR, @D)
			, CalfirstDayOfMonth = convert(Date, left(CONVERT(char, @D, 112), 6) + '01')
			, CallastDayOfMonth = Dateadd(Day, -1, DATEADD(Month, 1, convert(Date, left(CONVERT(char, @D, 112), 6) + '01')))

			, FinMonthNo = Month(@FD)
			, FinQuarterNo = DATEPART(QUARTER, @FD)
			, FinQuarterName = 'Q' + cast(DATEPART(QUARTER, @FD) As char(1))
			, FinYearMonthNo = Year(@FD) * 100 + Month(@FD)
			, FinYearWeekNo = Year(@FD) * 100 + DATEPART(WEEK, @FD)
			, FinYear = DATEPART(YEAR, @FD)
			--, FinYearName = Cast(DATEPART(YEAR, @FD) - 1 As char(4)) + '/' + Cast(DATEPART(YEAR, @FD) As char(4))
			, FinFirstDayOfMonth = convert(Date, left(CONVERT(char, @D, 112), 6) + '01')
			, FinLastDayOfMonth = Dateadd(Day, -1, DATEADD(Month, 1, convert(Date, left(CONVERT(char, @D, 112), 6) + '01')))

			, IsBusinessDay = Case When (dw.uf_NZPublicHoliday(@D) Is Null 
											Or (dw.uf_NZPublicHoliday(@D) Like '%Anniversary'
												And dw.uf_NZPublicHoliday(@D) Not Like 'Auckland%'))
											And datename(WEEKDAY, @D) Not in ('Sunday', 'Saturday')
											Then 'Y'
											Else 'N'
											End
			, IsHoliday = Case When dw.uf_NZPublicHoliday(@D) Not Like '%Anniversary'
											Or dw.uf_NZPublicHoliday(@D)  Like 'Auckland%'
											Then 'Y'
											Else 'N'
											End

			, HolidayName = dw.uf_NZPublicHoliday(@D)

	Select	@WorkDayNo = Count(*)
	From	DW.Dim_Date
	Where	CalYearMonthNo = Year(@D) * 100 + Month(@D)
			And Caldate <= @D
			And IsBusinessDay = 'Y'

	Update	DW.Dim_Date 
	Set	[BusinessDayNo] = @WorkDayNo
	Where	Caldate = @D

End

Update	Dim_Date
Set	TotalBusinessDaysInMonth = BusinessDays
From	DW.Dim_Date
		Join (
			Select	CalYearMonthNo, Count(*) BusinessDays
			From	DW.Dim_Date
			Where	IsBusinessDay = 'Y'
			Group By CalYearMonthNo
			) Total
				On Dim_Date.CalYearMonthNo = Total.CalYearMonthNo
Where	TotalBusinessDaysInMonth is Null

Update	DW.Dim_Date
Set		ReportDate = Case When IsBusinessDay = 'N'
							Then Case When BusinessDayNo = 0
--									And IsNull((Select Count(*) From DW.Dim_Date DD Where Caldate < Dim_Date.Caldate And IsBusinessDay = 'Y'), 0) = 0
								Then (Select Min(Caldate) From DW.Dim_Date DD Where Caldate > Dim_Date.Caldate And IsBusinessDay = 'Y')
								Else (Select Max(Caldate) From DW.Dim_Date DD Where Caldate < Dim_Date.Caldate And IsBusinessDay = 'Y')
								End
							Else Caldate
							End
Where	ReportDate Is Null

Update	DW.Dim_Date 
Set		[BusinessDayNo] = 1
Where	[BusinessDayNo] = 0


