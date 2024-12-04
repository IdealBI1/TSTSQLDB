


CREATE Function [DW].[uf_LastWorkingDay]
(
	 @idate		Date
)
RETURNS Date
as

Begin

	While dw.uf_NZPublicHoliday(@idate) Is Not Null 
			And (dw.uf_NZPublicHoliday(@idate) Not Like '%Anniversary'
				Or dw.uf_NZPublicHoliday(@idate) Like 'Auckland%')
				Or datename(WEEKDAY, @idate) in ('Sunday', 'Saturday')
				Or (datename(WEEKDAY, @idate) in ('Monday') And Day(@idate) <= 2)
	Begin	
		Set @idate = Dateadd(Day, -1, @idate)
	End

	Return	@idate

End
