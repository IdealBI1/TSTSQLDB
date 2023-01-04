
CREATE PROCEDURE [DW].[usp_Update_Dim_Transfer]

/****************************************************************************
* Name:		usp_Update_Dim_Transfer
* Author:	Sameh Hassan
* Desc:		Inserts/updates the Transfer dimension
* Usage:	To be called from ADF
* Company:	One51
* Date:		Nov 2022
*****************************************************************************
** Change History
*****************************************************************************
** PR	Date	    Author			Description	
** --	----------	------------	------------------------------------
** 01	25/11/2022	Sameh Hassan    Created SP
****************************************************************************/

As

Declare @Dim_UpdateDateTime datetime2 = CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'New Zealand Standard Time' AS datetime2)

Begin Try
Begin Transaction

If Not Exists (Select Dim_Transfer_key From DW.Dim_Transfer Where Dim_Transfer_key = -1)
Begin -- Insert Unknown Record

	Set Identity_Insert DW.Dim_Transfer On
	Insert Into DW.Dim_Transfer ([Dim_Transfer_Key], [Request#], [RequestDate], [AcceptDate], [FillDate], [PublishDate], [ExpectDate], [RequestedBy], [RejectedBy], [PurchaseOrder#], [SalesOrder#], [PubRef#], [TransferStatus], [RejectReason], [Dim_Type1HashDiff], [Dim_SourceSystem], [Dim_EffectiveFrom], [Dim_EffectiveTo])
	Select	-1									As [Dim_Transfer_Key]
			, 0     							As [Request#]
			, Null								As [RequestDate]
			, Null								As [AcceptDate]
			, Null								As [FillDate]
			, Null								As [PublishDate]
			, Null								As [ExpectDate]
			, 'Unk'							    As RequestedBy
			, 'Unk'							    As RejectedBy
			, Null  							As PurchaseOrder#
			, Null  							As SalesOrder#
            , Null                              As PubRef#
			, 'Unknown'     					As TransferStatus
            , 'Unknown'                         As RejectReason
            , ''                                As Dim_Type1HashDiff
			, 'Unknown'							As Dim_SourceSystem
			, Cast ('2000-01-01' As datetime2)	As Dim_EffectiveFrom
			, Cast ('9999-12-31' As datetime2)	As Dim_EffectiveTo
	Set Identity_Insert DW.Dim_Transfer Off

End

Merge Into [DW].[Dim_Transfer] T
Using [DW].[Dim_Transfer_v] S
On T.Request# = S.Request#

When Matched And T.Dim_Type1HashDiff <> S.Dim_Type1HashDiff
Then Update
Set RequestDate = S.RequestDate
    , AcceptDate = S.AcceptDate
    , FillDate = S.FillDate
    , PublishDate = S.PublishDate
    , ExpectDate = S.ExpectDate
    , RequestedBy = S.RequestedBy
    , RejectedBy = S.RejectedBy
    , PurchaseOrder# = S.PurchaseOrder#
    , SalesOrder# = S.SalesOrder#
    , PubRef# = S.PubRef#
    , TransferStatus = S.TransferStatus
    , RejectReason = S.RejectReason
    , Dim_Type1HashDiff = S.Dim_Type1HashDiff
    , Dim_SourceSystem = S.Dim_SourceSystem
    , Dim_UpdateDateTime = @Dim_UpdateDateTime

When Not Matched
Then Insert ([Request#], [RequestDate], [AcceptDate], [FillDate], [PublishDate], [ExpectDate], [RequestedBy], [RejectedBy], [PurchaseOrder#], [SalesOrder#], [PubRef#], [TransferStatus], [RejectReason], [Dim_Type1HashDiff], [Dim_SourceSystem], [Dim_EffectiveFrom], [Dim_EffectiveTo])
Values (S.[Request#], S.[RequestDate], S.[AcceptDate], S.[FillDate], S.[PublishDate], S.[ExpectDate], S.[RequestedBy], S.[RejectedBy], S.[PurchaseOrder#], S.[SalesOrder#], S.[PubRef#], S.[TransferStatus], S.[RejectReason], S.[Dim_Type1HashDiff], S.[Dim_SourceSystem], '2000-01-01', '9999-12-31')
;

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

