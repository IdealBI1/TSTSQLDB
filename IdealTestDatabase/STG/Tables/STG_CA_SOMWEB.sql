CREATE TABLE [STG].[STG_CA_SOMWEB] (
    [So#]                  NVARCHAR (20)   NULL,
    [Cust#]                DECIMAL (36, 4) NULL,
    [Order Date]           DATETIME2 (7)   NULL,
    [WebType]              NVARCHAR (40)   NULL,
    [OrderRef]             NVARCHAR (20)   NULL,
    [Order Placed By]      NVARCHAR (60)   NULL,
    [Webshop First Name]   NVARCHAR (60)   NULL,
    [Webshop Last Name]    NVARCHAR (60)   NULL,
    [CCAuth]               NVARCHAR (12)   NULL,
    [CC Amount]            DECIMAL (36, 4) NULL,
    [CC Token]             NVARCHAR (32)   NULL,
    [CC UserID]            NVARCHAR (60)   NULL,
    [CC Expiry]            DATETIME2 (7)   NULL,
    [Lst4]                 NVARCHAR (8)    NULL,
    [CC Holder Name]       NVARCHAR (120)  NULL,
    [CCTyp]                NVARCHAR (12)   NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

