CREATE Function [DW].[uf_NZPublicHoliday]
(
	 @idate		datetime
)
RETURNS varchar(250)
as
/**********************************************************************************************************
* UDF Name:		
*		dbo.uf_NZPublicHoliday
* Parameters:  
*		 @date			datetime
*
* Purpose: This function returns name of a NZ public holiday or null if it is not one.
*
**********************************************************************************************************/
begin

	declare @result			varchar(250)
	declare @day_of_week	varchar(3)
	declare @c_mon			varchar(3)
	declare @c_tue			varchar(3)
	declare @c_wed			varchar(3)
	declare @c_thu			varchar(3)
	declare @c_fri			varchar(3)

	declare @mmdd			varchar(4)

	declare @q_birthday		datetime
	declare @l_day			datetime
	declare @this_year		int
	declare @e_fri			datetime
	declare @e_mon			datetime
	declare @e_sun			datetime

	declare @l_date			datetime
	declare @l_auck			datetime
	declare @l_cantsth		datetime
	declare @l_cant			datetime
	declare @l_chat			datetime
	declare @l_hawk			datetime
	declare @l_marl			datetime
	declare @l_nels			datetime
	declare @l_otago		datetime
	declare @l_sthld		datetime
	declare @l_naki			datetime
	declare @l_wlg			datetime
	declare @l_west			datetime

	set @c_mon = 'MON'
	set @c_tue = 'TUE'
	set @c_wed = 'WED'
	set @c_thu = 'THU'
	set @c_fri = 'FRI'

/*
 easter variables
*/
	declare @c				int
	declare @n              int
	declare @k              int
	declare @i              int
	declare @j				int
	declare @l				int
	declare @m				int
	declare @d              int

	set @result = null

	set @day_of_week = UPPER(LEFT(DATENAME(weekday, @idate),3))
	set @this_year   = YEAR(@idate)

/*
Queen's Birthday 1st Monday in June
*/
	set @q_birthday = CAST('6 Jun'+ + DATENAME(YEAR,@idate) AS datetime) 
	set @q_birthday = DATEADD(wk, DATEDIFF(wk,0,@q_birthday), 0)

/*
Labour Day 4th Monday in October
*/
	set @l_day = CAST('1 Oct'+ + DATENAME(YEAR,@idate) AS datetime) 
--select @l_day, DATEADD(wk, DATEDIFF(wk, 0, @l_day + @@DATEFIRST), 0)
--select @@datefirst, @l_day, DATEDIFF(day, @l_day, DATEADD(wk, DATEDIFF(wk, 0, @l_day + @@DATEFIRST), 0))
	set @l_day = CASE
					-- if first monday of the month is Oct then add 3 weeks otherwise add 4 weeks
					WHEN DATEADD(wk, DATEDIFF(wk, 0, @l_day), 0) >= @l_day THEN
						DATEADD(wk, DATEDIFF(wk, 0, @l_day) + 3, 0)
					ELSE
						DATEADD(wk, DATEDIFF(wk, 0, @l_day) + 4, 0)
				 END

/*
Auckland anniversary - Monday nearest to the actual day of 29 January
*/
	set @l_date = CAST('29 Jan'+ + DATENAME(YEAR,@idate) AS datetime) 
	set @l_auck =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END
	
/*
Canterbury (South) Anniversary 4th Monday in September
*/
	set @l_cantsth = CAST('1 Sep'+ + DATENAME(YEAR,@idate) AS datetime) 
	set @l_cantsth =	CASE
							-- if first monday of the month is Sep then add 3 weeks otherwise add 4 weeks
							WHEN DATEADD(wk, DATEDIFF(wk, 0, @l_cantsth), 0) >= @l_cantsth THEN
								DATEADD(wk, DATEDIFF(wk, 0, @l_cantsth) + 3, 0)
							ELSE
								DATEADD(wk, DATEDIFF(wk, 0, @l_cantsth) + 4, 0)
						END

/*
The definition for the Canterbury Anniversary Day celebration as decided by Christchurch City is the second Friday after the first Tuesday in November each year.

DATEADD(wk, DATEDIFF(wk,0,@l_cant), 0) is first month of date param. Second Friday is total of 18 days after first monday.
*/
	set @l_cant = CAST('5 Nov'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_cant = DATEADD(wk, DATEDIFF(wk,0,@l_cant), 11)

/*
Chatham Islands anniversary - Monday nearest to the actual day of November 30
*/
	set @l_date = CAST('30 Nov'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_chat =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
						< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Hawke's Bay anniversary - Friday before Labour Day
*/
	set @l_hawk = DATEADD(dd, -3, @l_day)

/*
Marlborough anniversary - First Monday after Labour Day
*/
	set @l_marl = DATEADD(dd, 7, @l_day)

/*
Nelson anniversary - Monday nearest to the actual day of February 1
*/
	set @l_date = CAST('1 Feb'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_nels =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Otago anniversary - Monday nearest to the actual day of March 23
*/
	set @l_date = CAST('23 Mar'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_otago =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Southland anniversary - Monday nearest to the actual day of January 17
*/
	set @l_date = CAST('17 Jan'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_sthld =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Taranaki Anniversary - Second Monday in March – to avoid Easter
*/
	set @l_naki = CAST('6 Mar'+ + DATENAME(YEAR,@idate) AS datetime) 
	set @l_naki = DATEADD(wk, DATEDIFF(wk,0,@l_naki), 7)

/*
Wellington anniversary - Monday nearest to the actual day of January 22
*/
	set @l_date = CAST('22 Jan'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_wlg =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Westland anniversary - Monday nearest to the actual day of December 1
*/
	set @l_date = CAST('1 Dec'+ + DATENAME(YEAR,@idate) AS datetime)
	set @l_west =	CASE
						WHEN ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 0))) 
							< ABS(DATEDIFF(dd, @l_date, DATEADD(wk, DATEDIFF(wk,0,@l_date), 7))) THEN
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 0)
						ELSE
							DATEADD(wk, DATEDIFF(wk,0,@l_date), 7)
					END

/*
Easter:
The rule is that Easter is the first Sunday after the first ecclesiastical full moon
that occurs on or after March 21. The lunar cycles used by the ecclesiastical system
are simple to program. The following algorithm will compute the date of Easter
in the Gregorian Calendar system.

Please note the following: This is an integer calculation.
All variables are integers and all remainders from division are dropped.

The algorithm uses the year, y, to give the month, m, and day, d, of Easter.
The symbol * means multiply.

    c = y / 100
    n = y - 19 * ( y / 19 )
    k = ( c - 17 ) / 25
    i = c - c / 4 - ( c - k ) / 3 + 19 * n + 15
    i = i - 30 * ( i / 30 )
    i = i - ( i / 28 ) * ( 1 - ( i / 28 ) * ( 29 / ( i + 1 ) )
        * ( ( 21 - n ) / 11 ) )
    j = y + y / 4 + i + 2 - c + c / 4
    j = j - 7 * ( j / 7 )
    l = i - j
    m = 3 + ( l + 40 ) / 44
    d = l + 28 - 31 * ( m / 4 )


For example, using the year 2010,
y=2010,
c=2010/100=20,
n=2010 - 19 x (2010/19) = 15,
etc. resulting in Easter Sunday on April 4, 2010.
*/
	set @c = CAST(@this_year / 100 as int)
	set @n = @this_year - 19 * CAST(@this_year / 19 as int)
	set @k = CAST(( @c - 17 ) / 25 as int)
    set @i = @c - CAST(@c / 4 as int) - CAST(( @c - @k ) / 3 as int) + 19 * @n + 15
    set @i = @i - 30 * CAST( @i / 30 as int)
    set @i = @i - CAST( @i / 28 as int) * ( 1 - CAST( @i / 28 as int) * CAST( 29 / ( @i + 1 ) as int) * CAST( ( 21 - @n ) / 11 as int) )
    set @j = @this_year + CAST(@this_year / 4 as int) + @i + 2 - @c + CAST(@c / 4 as int)
    set @j = @j - 7 * CAST( @j / 7 as int)
	set @l = @i - @j
    set @m = 3 + CAST(( @l + 40 ) / 44 as int)
    set @d = @l + 28 - 31 * CAST( @m / 4 as int)
    
	set @e_sun = DATEADD(month,((@this_year - 1900) * 12) + @m-1, @d - 1)
    set @e_mon = DATEADD(DAY, 1, @e_sun)
    set @e_fri = DATEADD(DAY, -3, @e_mon)

	set @mmdd  = RIGHT(CONVERT(varchar(10),@idate, 112),4)
/*
 Anzac Day is 25th april and is always observed 25th april.
*/
	set @result = CASE
					  WHEN @mmdd = '0425' THEN
							'ANZAC Day'
					  WHEN @mmdd in ('0426', '0427') And @day_of_week = @c_mon THEN
							'Observed ANZAC Day'

/*
 Waitangi Day february 6 Always observed 6 february.
*/
					  WHEN @mmdd = '0206' THEN
							'Waitangi Day'
					  WHEN @mmdd in ('0207', '0208') And @day_of_week = @c_mon THEN
							'Observed Waitangi Day'
/*
New Year's Day - 1 January
Day after New Year's Day - 2 January

If New Year's Day is either a Monday, Tuesday, Wednesday or Thursday, then it is observed on that day and the following day is also observed as a holiday.
If New Year's Day is a Friday, the Friday becomes a holiday, and also the following Monday.
If New Year's Day is either a Saturday or a Sunday, then a public holiday is held on the following Monday and Tuesday.
*/
--					  WHEN @mmdd = '0101' AND @day_of_week IN (@c_mon, @c_tue, @c_wed, @c_thu, @c_fri) THEN
					  WHEN @mmdd = '0101' THEN
							'New Year''s Day'
--					  WHEN @mmdd = '0102' THEN
--						  CASE
--							  WHEN @day_of_week IN (@c_tue, @c_wed, @c_thu, @c_fri) THEN
--								  'Day After New Year''s Day'
--							  WHEN @day_of_week = @c_mon THEN
--								  'Observed New Year''s Day'
--						  END
					  WHEN @mmdd = '0102' THEN
						  CASE
							  WHEN @day_of_week = @c_mon THEN
								  'Day After New Year''s Day, Observed New Year''s Day'
							  ELSE
								  'Day After New Year''s Day'
						  END
					  WHEN @mmdd = '0103' THEN
						  CASE
							  WHEN @day_of_week = @c_mon THEN
								  'Observed New Years Day'
							  WHEN @day_of_week = @c_tue THEN
								  'Day After Observed New Year''s Day'
					      END
					  WHEN @mmdd = '0104' THEN
						  CASE
							  WHEN @day_of_week IN (@c_mon, @c_tue) THEN
								  'Day After Observed New Year''s Day'
						  END
/*
Christmas Day - 25 December
Day after Christmas Day - 26 December

If Christmas Dayis either a Monday, Tuesday, Wednesday or Thursday, then it is observed on that day and the following day is also observed as a holiday.
If Christmas Day is a Friday, the Friday becomes a holiday, and also the following Monday.
If Christmas Day is either a Saturday or a Sunday, then a public holiday is held on the following Monday and Tuesday.
*/
--					  WHEN @mmdd = '1225' AND @day_of_week IN (@c_mon, @c_tue, @c_wed, @c_thu, @c_fri) THEN
					  WHEN @mmdd = '1225' THEN
						  'Christmas Day'
--					  WHEN @mmdd = '1226' THEN
--						  CASE
--							  WHEN @day_of_week IN (@c_tue, @c_wed, @c_thu, @c_fri) THEN
--								  'Boxing Day'
--							  WHEN @day_of_week = @c_mon THEN
--								  'Christmas Day'
--						  END
					  WHEN @mmdd = '1226' THEN
						  CASE
							  WHEN @day_of_week = @c_mon THEN
								  'Boxing Day, Observed Christmas Day'
							  ELSE
								'Boxing Day'
						  END
					  WHEN @mmdd = '1227' THEN
						  CASE
							  WHEN @day_of_week = @c_mon THEN
								  'Observed Christmas Day'
							  WHEN @day_of_week = @c_tue THEN
								  'Observed Boxing Day'
						  END
					  WHEN @mmdd = '1228' THEN
						  CASE
							  WHEN @day_of_week IN (@c_mon, @c_tue) THEN
								  'Observed Boxing Day'
						  END
/*
Queen's Birthday 1st Monday in June The date that New Zealand observes the Queen's birthday.
Queen Elizabeth II's actual birthday is 21 April 1926.
*/
					  WHEN @idate = @q_birthday THEN
						  'Queen''s Birthday'
/*
Labour Day 4th Monday in October
*/
					  WHEN @idate = @l_day THEN
						  'Labour Day'

/*
Easter:
The rule is that Easter is the first Sunday after the first ecclesiastical full moon
that occurs on or after March 21. The lunar cycles used by the ecclesiastical system
are simple to program.
*/
					  WHEN @idate = @e_fri THEN
						  'Easter Friday'
					  WHEN @idate = @e_sun THEN
						  'Easter Sunday'
					  WHEN @idate = @e_mon THEN
						  'Easter Monday'
				  END

-- province holidays. multiple province holidays may fall on the same day. if so, return comma separated.
--Auckland anniversary
	if @idate = @l_auck
		set @result =	CASE
							WHEN @result is null THEN
								'Auckland Anniversary'
							ELSE
								@result + ', ' + 'Auckland Anniversary'
					    END

--Canterbury (South) Anniversary 
	if @idate = @l_cantsth
		set @result = 	CASE
							WHEN @result is null THEN
								'Canterbury (South) Anniversary'
							ELSE
								@result + ', ' + 'Canterbury (South) Anniversary'
						END

--Canterbury Anniversary 

	if @idate = @l_cant 
		set @result = 	CASE
							WHEN @result is null THEN
								'Canterbury Anniversary'
							ELSE
								@result + ', ' + 'Canterbury Anniversary'
						END

--Chatham Islands Anniversary 

	if @idate = @l_chat 
		set @result =	CASE
							WHEN @result is null THEN
								'Chatham Islands Anniversary'
							ELSE
								@result + ', ' + 'Chatham Islands Anniversary'
						END

--Hawke's Bay Anniversary 
	if @idate = @l_hawk 
		set @result =	CASE
							WHEN @result is null THEN
								'Hawke''s Bay Anniversary'
							ELSE
								@result + ', ' + 'Hawke''s Bay Anniversary'
						END

--Marlborough Anniversary 
	if @idate = @l_marl 
		set @result =	CASE
							WHEN @result is null THEN
								'Marlborough Anniversary'
							ELSE
								@result + ', ' + 'Marlborough Anniversary'
						END

--Nelson Anniversary 
	if @idate = @l_nels 
		set @result =	CASE
							WHEN @result is null THEN
								'Nelson Anniversary'
							ELSE
								@result + ', ' + 'Nelson Anniversary'
						END

--Otago Anniversary 
	if @idate = @l_otago 
		set @result =	CASE
							WHEN @result is null THEN
								'Otago Anniversary'
							ELSE
								@result + ', ' + 'Otago Anniversary'
						END

--Southland Anniversary 
	if @idate = @l_sthld 
		set @result =	CASE
							WHEN @result is null THEN
								'Southland Anniversary'
							ELSE
								@result + ', ' + 'Southland Anniversary'
						END

--Taranaki Anniversary 
	if @idate = @l_naki 
		set @result =	CASE
							WHEN @result is null THEN
								'Taranaki Anniversary'
							ELSE
								@result + ', ' + 'Taranaki Anniversary'
						END

--Wellington Anniversary 
	if @idate = @l_wlg 
		set @result =	CASE
							WHEN @result is null THEN
								'Wellington Anniversary'
							ELSE
								@result + ', ' + 'Wellington Anniversary'
						END

--Westland Anniversary 
	if @idate = @l_west 
		set @result =	CASE
							WHEN @result is null THEN
								'Westland Anniversary'
							ELSE
								@result + ', ' + 'Westland Anniversary'
						END

--Matariki Date
	if @idate in (Select	MatarikiDate 
					From (Values ('2022-06-24'), ('2023-07-14'), ('2024-06-28'), ('2025-06-20'), ('2026-07-10'), ('2027-06-25'), ('2028-07-14'), ('2029-07-06')
									, ('2030-06-21'), ('2031-07-11'), ('2032-07-02'), ('2033-06-24'), ('2034-07-07'), ('2035-06-29'), ('2036-07-18'), ('2037-07-10')
									, ('2038-06-25'), ('2039-07-15'), ('2040-07-06'), ('2041-07-19'), ('2042-07-11'), ('2043-07-03'), ('2044-06-24'), ('2045-07-07')
									, ('2046-06-29'), ('2047-07-19'), ('2048-07-03'), ('2049-06-25'), ('2050-07-15'), ('2051-06-30'), ('2052-06-21')
									)	As Matariki(MatarikiDate))
		Set @result = 'Matariki'

	--Return result
	return @result
end --function
