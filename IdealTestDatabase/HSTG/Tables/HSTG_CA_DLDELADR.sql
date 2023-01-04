﻿CREATE TABLE [HSTG].[HSTG_CA_DLDELADR] (
    [Cust#]                        DECIMAL (36, 4) NULL,
    [AdrCde]                       NVARCHAR (12)   NULL,
    [Delivery Name]                NVARCHAR (120)  NULL,
    [Delivery Address 1]           NVARCHAR (120)  NULL,
    [Delivery Address 2]           NVARCHAR (120)  NULL,
    [Delivery Address 3]           NVARCHAR (80)   NULL,
    [Contact]                      NVARCHAR (60)   NULL,
    [Phone]                        NVARCHAR (28)   NULL,
    [Fax]                          NVARCHAR (28)   NULL,
    [Are]                          NVARCHAR (6)    NULL,
    [Dsp]                          NVARCHAR (6)    NULL,
    [Delivery Address 4]           NVARCHAR (80)   NULL,
    [Delivery Address 5]           NVARCHAR (80)   NULL,
    [Delivery Address 6]           NVARCHAR (80)   NULL,
    [Delivery Address 7]           NVARCHAR (80)   NULL,
    [Delivery Address 8]           NVARCHAR (80)   NULL,
    [Delivery Address 9]           NVARCHAR (80)   NULL,
    [Delivery Address 10]          NVARCHAR (80)   NULL,
    [Delivery Address 11]          NVARCHAR (80)   NULL,
    [Mobile]                       NVARCHAR (28)   NULL,
    [Email]                        NVARCHAR (100)  NULL,
    [Email Quote]                  NVARCHAR (100)  NULL,
    [Ste]                          NVARCHAR (6)    NULL,
    [Pstcde]                       NVARCHAR (12)   NULL,
    [Cry]                          NVARCHAR (6)    NULL,
    [District]                     NVARCHAR (42)   NULL,
    [Start Date]                   DATETIME2 (7)   NULL,
    [STime]                        TIME (7)        NULL,
    [Start By]                     NVARCHAR (30)   NULL,
    [Amend Date]                   DATETIME2 (7)   NULL,
    [ATime]                        TIME (7)        NULL,
    [Amend By]                     NVARCHAR (100)  NULL,
    [Last So#]                     NVARCHAR (30)   NULL,
    [LstSo Date]                   DATETIME2 (7)   NULL,
    [Last Sq#]                     NVARCHAR (20)   NULL,
    [LstSq Date]                   DATETIME2 (7)   NULL,
    [Webshop ID]                   NVARCHAR (24)   NULL,
    [B]                            NVARCHAR (2)    NULL,
    [Ora ID]                       NVARCHAR (8)    NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);
