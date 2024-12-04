CREATE TABLE [HSTG].[HSTG_CA_SOMWEB] (
    [So#]                          NVARCHAR (20)   NULL,
    [Cust#]                        DECIMAL (36, 4) NULL,
    [Order Date]                   DATETIME2 (7)   NULL,
    [WebType]                      NVARCHAR (40)   NULL,
    [OrderRef]                     NVARCHAR (20)   NULL,
    [Order Placed By]              NVARCHAR (60)   NULL,
    [Webshop First Name]           NVARCHAR (60)   NULL,
    [Webshop Last Name]            NVARCHAR (60)   NULL,
    [CCAuth]                       NVARCHAR (12)   NULL,
    [CC Amount]                    DECIMAL (36, 4) NULL,
    [CC Token]                     NVARCHAR (32)   NULL,
    [CC UserID]                    NVARCHAR (60)   NULL,
    [CC Expiry]                    DATETIME2 (7)   NULL,
    [Lst4]                         NVARCHAR (8)    NULL,
    [CC Holder Name]               NVARCHAR (120)  NULL,
    [CCTyp]                        NVARCHAR (12)   NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

