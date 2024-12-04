CREATE TABLE [DW].[Dim_Bin] (
    [Dim_Bin_Key]        INT             IDENTITY (1, 1) NOT NULL,
    [Dim_Location_Key]   INT             NOT NULL,
    [LocationCode]       VARCHAR (10)    NULL,
    [BinCode]            NVARCHAR (100)  NULL,
    [BinSequence]        DECIMAL (36, 4) NULL,
    [Dim_SourceSystem]   VARCHAR (16)    NOT NULL,
    [Dim_Type1HashDiff]  CHAR (32)       NULL,
    [Dim_Type2HashDiff]  CHAR (32)       NULL,
    [Dim_EffectiveFrom]  DATETIME2 (7)   NOT NULL,
    [Dim_EffectiveTo]    DATETIME2 (7)   NOT NULL,
    [Dim_InsertDateTime] DATETIME2 (7)   CONSTRAINT [DF_Dim_Bin_Dim_InsertDateTime] DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL,
    [Dim_UpdateDateTime] DATETIME2 (7)   CONSTRAINT [DF_Dim_Bin_Dim_UpdateDateTime] DEFAULT (CONVERT([datetime2],(sysdatetimeoffset() AT TIME ZONE 'AUS Eastern Standard Time'))) NULL
);

