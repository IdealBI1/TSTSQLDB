


CREATE View [DW].[Dim_Transfer_v]

As

SELECT   [INTR].[Request#]                                  Request# -- BK
        , RequestDat                                        RequestDate
        , AcceptDate
        , [Fill Date]                                       FillDate
        , PublishDat                                        PublishDate
        , ExpectDate    
        , Rby                                               RequestedBy
        , Fby                                               RejectedBy
        , PO#                                               PurchaseOrder#
        , SO#                                               SalesOrder#
        , [TO#]                                             PubRef#

        , Case When [Request Qty] = 0 Then 'Cancelled'
            When [Reject Qty] = [Request Qty] 
                And [Request Qty] <> 0 
                Then 'Rejected'
            When [Request Qty]-[Dispatch Qty]-[Reject Qty] > 0 
                Then 'Open'
            Else 'Dispatched' 
            End                                             TransferStatus
        , IsNull([Reason], '')                              RejectReason
		, CONVERT(CHAR(32),
          HASHBYTES('MD5',
              CONCAT(ISNULL(CONVERT(NVARCHAR, RequestDat), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, AcceptDate), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, [Fill Date]), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, PublishDat), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, ExpectDate), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Rby), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Fby), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, PO#), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, SO#), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, TO#), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, [Request Qty]), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, [Reject Qty]), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, [Dispatch Qty]), N'')
					, '|', ISNULL(CONVERT(NVARCHAR, Reason), N'')
					) 
		          )
			, 2)										    Dim_Type1HashDiff        
		, 'Clear Accounting'								Dim_SourceSystem


FROM    HSTG.HSTG_CA_INTR As [INTR] (nolock)

WHERE   [PublishDat] is not null
		And [INTR].[OMD_IS_RECORD_DELETED] = 'N'
		And [INTR].[OMD_CURRENT_RECORD_INDICATOR] = 'Y'

