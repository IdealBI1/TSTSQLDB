CREATE TABLE [DW].[Dim_Supplier] (
    [Dim_Supplier_Key]   INT            IDENTITY (1, 1) NOT NULL,
    [SupplierNumber]     INT            NOT NULL,
    [SupplierSortKey]    NVARCHAR (100) NULL,
    [SupplierName]       NVARCHAR (200) NOT NULL,
    [KissAndKindInd]     NVARCHAR (4)   NULL,
    [AddressLine1]       NVARCHAR (100) NULL,
    [AddressLine2]       NVARCHAR (100) NULL,
    [AddressLine3]       NVARCHAR (100) NULL,
    [Phone]              NVARCHAR (50)  NULL,
    [Mobile]             NVARCHAR (50)  NULL,
    [StartDate]          DATETIME2 (7)  NULL,
    [Dim_SourceSystem]   VARCHAR (20)   NOT NULL,
    [Dim_Type1HashDiff]  CHAR (32)      NULL,
    [Dim_Type2HashDiff]  CHAR (32)      NULL,
    [Dim_EffectiveFrom]  DATETIME2 (7)  NOT NULL,
    [Dim_EffectiveTo]    DATETIME2 (7)  NOT NULL,
    [Dim_InsertDateTime] DATETIME2 (7)  DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    [Dim_UpdateDateTime] DATETIME2 (7)  DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    CONSTRAINT [PK_Dim_Supplier] PRIMARY KEY CLUSTERED ([Dim_Supplier_Key] ASC)
);

