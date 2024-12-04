CREATE TABLE [DW].[Dim_TransactionSource] (
    [Dim_TransactionSource_Key] INT           NOT NULL,
    [TransactionSourceGroup]    VARCHAR (30)  NOT NULL,
    [TransactionSource]         VARCHAR (30)  NOT NULL,
    [Dim_SourceSystem]          VARCHAR (16)  NOT NULL,
    [Dim_EffectiveFrom]         DATETIME2 (7) NULL,
    [Dim_EffectiveTo]           DATETIME2 (7) NULL,
    CONSTRAINT [PK_Dim_TransactionSource] PRIMARY KEY CLUSTERED ([Dim_TransactionSource_Key] ASC)
);

