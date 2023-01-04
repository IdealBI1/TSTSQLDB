CREATE TABLE [DW].[Dim_ProductCategory] (
    [Dim_ProductCategory_Key] INT             IDENTITY (1, 1) NOT NULL,
    [Incat]                   NVARCHAR (100)  NULL,
    [CategoryCode]            NVARCHAR (2)    NULL,
    [CategoryDescription]     NVARCHAR (100)  NULL,
    [SubCategoryCode]         NVARCHAR (6)    NULL,
    [SubCategoryDescription]  NVARCHAR (100)  NULL,
    [MagnitudeCode]           NVARCHAR (10)   NULL,
    [MagnitudeClassification] NVARCHAR (100)  NULL,
    [CategoryRebatePCT]       DECIMAL (10, 4) NULL,
    [Dim_SourceSystem]        VARCHAR (20)    NOT NULL,
    [Dim_Type1HashDiff]       CHAR (32)       NULL,
    [Dim_Type2HashDiff]       CHAR (32)       NULL,
    [Dim_EffectiveFrom]       DATETIME2 (7)   NOT NULL,
    [Dim_EffectiveTo]         DATETIME2 (7)   NOT NULL,
    [Dim_InsertDateTime]      DATETIME2 (7)   DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    [Dim_UpdateDateTime]      DATETIME2 (7)   DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    CONSTRAINT [PK_Dim_ProductCategory] PRIMARY KEY CLUSTERED ([Dim_ProductCategory_Key] ASC)
);

