CREATE TABLE [MDM].[BranchHistory] (
    [Name]                     NVARCHAR (100) NULL,
    [Code]                     NVARCHAR (100) NOT NULL,
    [BranchCode]               NVARCHAR (100) NULL,
    [IsAdminOffice]            NVARCHAR (100) NULL,
    [IsERP]                    NVARCHAR (100) NULL,
    [IsEBS]                    NVARCHAR (100) NULL,
    [Unit]                     NVARCHAR (100) NULL,
    [Street1]                  NVARCHAR (100) NULL,
    [Street2]                  NVARCHAR (100) NULL,
    [Suburb]                   NVARCHAR (100) NULL,
    [City]                     NVARCHAR (100) NULL,
    [Postcode]                 NVARCHAR (100) NULL,
    [Fax]                      NVARCHAR (100) NULL,
    [Email]                    NVARCHAR (100) NULL,
    [BranchManager]            NVARCHAR (100) NULL,
    [Phone]                    NVARCHAR (100) NULL,
    [Latitude]                 NVARCHAR (100) NULL,
    [Longitude]                NVARCHAR (100) NULL,
    [ConsolidatedParentBranch] NVARCHAR (100) NULL,
    [ABCParentBranch]          NVARCHAR (100) NULL,
    [IsTrading]                NVARCHAR (100) NULL,
    [EverydayEssentialBranch]  NVARCHAR (100) NULL,
    [MinMaxWeeks]              NVARCHAR (100) NULL,
    [IsATP]                    NVARCHAR (100) NULL,
    [IsABC]                    NVARCHAR (100) NULL,
    [ValidFrom]                DATETIME2 (7)  NOT NULL,
    [ValidTo]                  DATETIME2 (7)  NOT NULL,
    [AMEmail]                  NVARCHAR (100) NULL,
    [SubRegion]                NVARCHAR (100) NULL,
    [ERPGoLiveDate]            DATE           NULL,
    [EBSGoLiveDate]            DATE           NULL
);


GO
CREATE CLUSTERED INDEX [ix_BranchHistory]
    ON [MDM].[BranchHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

