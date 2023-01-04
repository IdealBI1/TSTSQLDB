﻿CREATE TABLE [HSTG].[HSTG_CA_SQMQUOTE] (
    [Sq#]                          NVARCHAR (20)   NULL,
    [Cust#]                        DECIMAL (36, 4) NULL,
    [Quote Date]                   DATETIME2 (7)   NULL,
    [Customer Reference]           NVARCHAR (100)  NULL,
    [Deliv Date]                   DATETIME2 (7)   NULL,
    [H]                            NVARCHAR (6)    NULL,
    [Spn]                          NVARCHAR (6)    NULL,
    [DelCod]                       NVARCHAR (12)   NULL,
    [Delivery Name]                NVARCHAR (120)  NULL,
    [Delivery Address Line 1]      NVARCHAR (120)  NULL,
    [Delivery Address Line 2]      NVARCHAR (120)  NULL,
    [Delivery Address Line 3]      NVARCHAR (80)   NULL,
    [Contact]                      NVARCHAR (60)   NULL,
    [Phone]                        NVARCHAR (28)   NULL,
    [Fax]                          NVARCHAR (28)   NULL,
    [QV Gst Incl]                  DECIMAL (36, 4) NULL,
    [Valid Date]                   DATETIME2 (7)   NULL,
    [Cogs Value]                   DECIMAL (36, 4) NULL,
    [T]                            NVARCHAR (2)    NULL,
    [S]                            NVARCHAR (2)    NULL,
    [Pr]                           DECIMAL (36, 4) NULL,
    [I]                            NVARCHAR (2)    NULL,
    [F]                            NVARCHAR (2)    NULL,
    [ProjPB]                       NVARCHAR (60)   NULL,
    [Webshop / Copy2So#-Sq#]       NVARCHAR (60)   NULL,
    [Quote Salutation]             NVARCHAR (60)   NULL,
    [PC]                           DECIMAL (36, 4) NULL,
    [TxCert]                       NVARCHAR (40)   NULL,
    [Loc]                          NVARCHAR (6)    NULL,
    [Gst Value]                    DECIMAL (36, 4) NULL,
    [Email]                        NVARCHAR (120)  NULL,
    [Contact Mobile]               NVARCHAR (28)   NULL,
    [Start Date]                   DATETIME2 (7)   NULL,
    [STime]                        TIME (7)        NULL,
    [Start By]                     NVARCHAR (30)   NULL,
    [P]                            NVARCHAR (2)    NULL,
    [CopyFmSq#]                    NVARCHAR (20)   NULL,
    [Pstcde]                       NVARCHAR (12)   NULL,
    [Delivery Mode]                NVARCHAR (60)   NULL,
    [Order Placed By]              NVARCHAR (60)   NULL,
    [Rfq#]                         NVARCHAR (50)   NULL,
    [QteNeedDat]                   DATETIME2 (7)   NULL,
    [Quote Description]            NVARCHAR (500)  NULL,
    [W]                            NVARCHAR (2)    NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);
