CREATE TABLE [DW].[Dim_SalesTransaction] (
    [Dim_SalesTransaction_Key] INT            IDENTITY (1, 1) NOT NULL,
    [TransactionType]          VARCHAR (3)    NOT NULL,
    [TransactionNumber]        FLOAT (53)     NULL,
    [TransactionDate]          DATETIME2 (7)  NULL,
    [Dim_Date_Key]             INT            NULL,
    [ValueIncGST]              FLOAT (53)     NULL,
    [OrderNumber]              NVARCHAR (100) NULL,
    [HasDebitNote]             VARCHAR (1)    NOT NULL,
    [HasCreditNote]            VARCHAR (1)    NOT NULL,
    [Dim_SourceSystem]         VARCHAR (20)   NOT NULL,
    [Dim_Type1HashDiff]        CHAR (32)      NULL,
    [Dim_Type2HashDiff]        CHAR (32)      NULL,
    [Dim_EffectiveFrom]        DATETIME2 (7)  NOT NULL,
    [Dim_EffectiveTo]          DATETIME2 (7)  NOT NULL,
    [Dim_InsertDateTime]       DATETIME2 (7)  DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    [Dim_UpdateDateTime]       DATETIME2 (7)  DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    CONSTRAINT [PK_Dim_SalesTransaction] PRIMARY KEY CLUSTERED ([Dim_SalesTransaction_Key] ASC)
);

