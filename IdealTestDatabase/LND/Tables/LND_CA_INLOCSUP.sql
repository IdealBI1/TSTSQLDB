CREATE TABLE [LND].[LND_CA_INLOCSUP] (
    [Item Code]           NVARCHAR (4000) NULL,
    [Loc]                 NVARCHAR (4000) NULL,
    [LSup]                NVARCHAR (4000) NULL,
    [Loc Supp Item Code]  NVARCHAR (4000) NULL,
    [Loc Buy Prc]         NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME] DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]       VARCHAR (8000)  NOT NULL
);

