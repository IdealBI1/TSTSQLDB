CREATE TABLE [DW].[Dim_Transfer] (
    [Dim_Transfer_Key]   INT            IDENTITY (1, 1) NOT NULL,
    [Request#]           DECIMAL (36)   NOT NULL,
    [RequestDate]        DATE           NULL,
    [AcceptDate]         DATE           NULL,
    [FillDate]           DATE           NULL,
    [PublishDate]        DATE           NULL,
    [ExpectDate]         DATE           NULL,
    [RequestedBy]        NVARCHAR (3)   NULL,
    [RejectedBy]         NVARCHAR (3)   NULL,
    [PurchaseOrder#]     DECIMAL (36)   NULL,
    [SalesOrder#]        DECIMAL (36)   NULL,
    [PubRef#]            DECIMAL (36)   NULL,
    [TransferStatus]     VARCHAR (10)   NOT NULL,
    [RejectReason]       NVARCHAR (256) NOT NULL,
    [Dim_Type1HashDiff]  CHAR (32)      NULL,
    [Dim_SourceSystem]   VARCHAR (16)   NOT NULL,
    [Dim_EffectiveFrom]  DATETIME2 (7)  NOT NULL,
    [Dim_EffectiveTo]    DATETIME2 (7)  NOT NULL,
    [Dim_InsertDateTime] DATETIME       CONSTRAINT [DF_Dim_Transfer_Dim_InsertDateTime] DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NOT NULL,
    [Dim_UpdateDateTime] DATETIME       CONSTRAINT [DF_Dim_Transfer_Dim_UpdateDateTime] DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NOT NULL
);

