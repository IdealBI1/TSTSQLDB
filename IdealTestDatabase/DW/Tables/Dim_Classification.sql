CREATE TABLE [DW].[Dim_Classification] (
    [Dim_Classification_Key] INT            IDENTITY (1, 1) NOT NULL,
    [ClassificationCode]     VARCHAR (1)    NOT NULL,
    [Classification]         NVARCHAR (100) NULL,
    [Dim_EffectiveFrom]      DATETIME2 (7)  NULL,
    [Dim_EffectiveTo]        DATETIME2 (7)  NULL
);

