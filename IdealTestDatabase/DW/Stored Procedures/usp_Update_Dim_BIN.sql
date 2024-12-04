
CREATE PROCEDURE [DW].[usp_Update_Dim_BIN]

/****************************************************************************
* Name:		usp_Update_Dim_BIN
* Author:	Sameh Hassan
* Desc:		Inserts/updates the BIN dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	03/11/2022	Sameh Hassan    Created SP0
****************************************************************************/

As


Begin Try
Begin Transaction

If Not Exists (Select Dim_BIN_key From DW.Dim_BIN Where Dim_BIN_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_BIN On
	Insert Into DW.Dim_BIN ([Dim_BIN_Key], Dim_Location_Key, LocationCode, BinCode, BinSequence, Dim_SourceSystem, Dim_EffectiveFrom, Dim_EffectiveTo)
	Select	-1									As [Dim_BIN_Key]
			, -1								As Dim_Location_Key
			, 'Unk'		        				As LocationCode
			, 'Unknown'							As BinCode
			, 0     							As BinSequence
			, 'Unknown'							As Dim_SourceSystem
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
	Set Identity_Insert DW.Dim_BIN Off

End

Declare @Dim_UpdateDateTime Datetime2
		, @BatchID int

Insert Into DW.Dim_Bin (Dim_Location_Key, LocationCode, BinCode, BinSequence, Dim_SourceSystem, Dim_EffectiveFrom, Dim_EffectiveTo)

Select	Distinct
		IsNull(Dim_Location.Dim_Location_Key, '0')	As Dim_Location_Key
        , Bins.LocationCode
        , Bins.BinCode
        , Bins.BinSequence
		, Bins.Dim_SourceSystem
        , Cast ('2000-01-01' As datetime2)	        As Dim_EffectiveFrom
        , Cast ('9999-12-31' As datetime2)	        As Dim_EffectiveTo
From	(Select	Distinct
                Format(Loc, '#')                    As LocationCode
                , Bin                               As BinCode
                , Seq                               As BinSequence
                , 'Clear Accounting'	            As Dim_SourceSystem
        From	[HSTG].[HSTG_CA_INLBIN]	[INLBIN] (nolock)
        WHERE   [INLBIN].[Item Code] is Not NULL
                And [INLBIN].Loc is Not NULL
                And [INLBIN].Bin is Not NULL
                And OMD_IS_RECORD_DELETED = 'N'
        Union
        SELECT  Distinct
                MTL_PARAMETERS.ORGANIZATION_CODE    As LocationCode
                , MTL_ITEM_LOCATIONS.SEGMENT1       As Bin_Code
                , 0                                 As BinSequence
                , 'Oracle'          	            As Dim_SourceSystem
        From    HSTG.HSTG_EBS_RD_BI_INV_VALUES_RPT RD_BI_INV_VALUES_RPT (nolock)
                Join HSTG.HSTG_EBS_MTL_ITEM_LOCATIONS MTL_ITEM_LOCATIONS (nolock)
                    On RD_BI_INV_VALUES_RPT.LOCATOR_CODE = MTL_ITEM_LOCATIONS.INVENTORY_LOCATION_ID
                    And MTL_ITEM_LOCATIONS.META_DELETE_INDICATOR = 'N'        
                Join HSTG.HSTG_EBS_MTL_PARAMETERS MTL_PARAMETERS (nolock)
                    On MTL_ITEM_LOCATIONS.ORGANIZATION_ID = MTL_PARAMETERS.ORGANIZATION_ID
                    And MTL_PARAMETERS.OMD_IS_RECORD_DELETED = 'N'
        WHERE   RD_BI_INV_VALUES_RPT.META_DELETE_INDICATOR = 'N'
        ) Bins
		Left Join DW.Dim_Location Dim_Location
			On Bins.LocationCode = Dim_Location.LocationCode
			And Dim_Location.Dim_EffectiveTo = '9999-12-31'
        Left Join DW.Dim_BIN
            On Bins.LocationCode = Dim_BIN.LocationCode
            And Bins.BinCode = Dim_BIN.BinCode
            And bins.BinSequence = Dim_BIN.BinSequence
WHERE   Dim_BIN.Dim_Bin_Key Is Null


Commit
End Try
 
Begin Catch
 
  IF @@TRANCOUNT > 0
     Rollback
 
	Declare @ERROR_MESSAGE nvarchar(1000) = ERROR_MESSAGE()
			, @ERROR_SEVERITY int = ERROR_SEVERITY()

	Raiserror (@ERROR_MESSAGE, @ERROR_SEVERITY, -1) With Nowait

       Return;
END Catch

