
CREATE View [DW].[Dim_Date_v]

As

With Years As (
	Select 2000 As Y
	Union All
	Select Y + 1 As Y
	From	Years
	Where	Y <= Year(GetDate())
)
, Months As (
	Select 1 As M
	Union All
	Select M + 1 As M
	From	Months
	Where	M < 12
)
, Dayss As (
	Select 1 As D
	Union All
	Select D + 1 As D
	From	Dayss
	Where	D < 31
)
, AllDays As (
	Select	try_cast(Convert(varchar, Y * 10000 + M * 100 + D) As Date) As D
	From	Years
			, Months
			, Dayss
	Where	try_cast(Convert(varchar, Y * 10000 + M * 100 + D) As Date) Is Not Null
)
, Calendar As (
	Select	Cal_Date_key = CONVERT(int, convert(char, D, 112))
			, Caldate = D
			, ReportDate = [DW].[uf_LastWorkingDay](D)
			, CalDayNo = DATEPART(Day, D)
			, CalDayNameshort = left(datename(WEEKDAY, D), 3)
			, CalDayNamelong = datename(WEEKDAY, D)
			, CalDayOfWeekNo = DATEPART(WEEKDAY, D)
			, CalDayOfYearNo = DATEPART(Y, D)
			, CalWeekOfYearNo = DATEPART(WEEK, D)
			, CalYearWeekNo = Year(D) * 100 + DATEPART(WEEK, D)
			, CalMonthNo = Month(D)
			, CalMonthNameshort = left(datename(Month, D), 3)
			, CalMonthNamelong = datename(Month, D)
			, CalYearMonthNo = Year(D) * 100 + Month(D)
			, CalMonthYearName = left(datename(Month, D), 3) + '-' + Convert(char(2), Year(D) - 2000)
			, CalQuarterNo = DATEPART(QUARTER, D)
			, CalQuarterName = 'Q' + cast(DATEPART(QUARTER, D) As char(1))
			, CalYearNo = DATEPART(YEAR, D)
			, CalfirstDayOfMonth = convert(Date, left(CONVERT(char, D, 112), 6) + '01')
			, CallastDayOfMonth = Dateadd(Day, -1, DATEADD(Month, 1, convert(Date, left(CONVERT(char, D, 112), 6) + '01')))

			, FinMonthNo = Month(D)
			, FinQuarterNo = DATEPART(QUARTER, D)
			, FinQuarterName = 'Q' + cast(DATEPART(QUARTER, D) As char(1))
			, FinYearMonthNo = Year(D) * 100 + Month(D)
			, FinYearWeekNo = Year(D) * 100 + DATEPART(WEEK, D)
			, FinYear = DATEPART(YEAR, D)
			, FinFirstDayOfMonth = convert(Date, left(CONVERT(char, D, 112), 6) + '01')
			, FinLastDayOfMonth = Dateadd(Day, -1, DATEADD(Month, 1, convert(Date, left(CONVERT(char, D, 112), 6) + '01')))

			, IsBusinessDay = Case When (dw.uf_NZPublicHoliday(D) Is Null 
											Or (dw.uf_NZPublicHoliday(D) Like '%Anniversary'
												And dw.uf_NZPublicHoliday(D) Not Like 'Auckland%'))
											And datename(WEEKDAY, D) Not in ('Sunday', 'Saturday')
											Then 'Y'
											Else 'N'
											End
			, IsHoliday = Case When dw.uf_NZPublicHoliday(D) Not Like '%Anniversary'
											Or dw.uf_NZPublicHoliday(D)  Like 'Auckland%'
											Then 'Y'
											Else 'N'
											End

			, HolidayName = dw.uf_NZPublicHoliday(D)

From	AllDays 
) 

Select	*
		, Sum(Case When IsBusinessDay = 'Y' Then 1 Else 0 End)
			Over(Partition By CalYearMonthNo)					As TotalBusinessDaysInMonth
		, (Select Count(*) 
			From Calendar Sub 
			Where Sub.CalYearMonthNo = Calendar.CalYearMonthNo
				And Sub.Caldate <= Calendar.Caldate
				And Sub.IsBusinessDay = 'Y')			As BusinessDayNo
From	Calendar

Union 

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
		, '2000-01-01'	As CalFirstDayOfMonth
		, '2000-01-01'	As CalLastDayOfMonth
		, 0				As FinMonthNo
		, 0				As FinQuarterNo
		, 'Un'			As FinQuarterName
		, 0				As FinYearMonthNo
		, 0				As FinYearWeekNo
		, 0				As FinYear
		--, 'Unknown'		As FinYearName
		, '2000-01-01'	As FinFirstDayOfMonth
		, '2000-01-01'	As FinLastDayOfMonth
		, Null			As HoliDayName
		, 'N'			As IsBusinessDay
		, 'N'			As IsHoliday
		, 0				As TotalBusinessDaysInMonth
		, 0				As BusinessDayNo
