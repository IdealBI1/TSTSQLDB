﻿CREATE TABLE [STG].[STG_CA_SOLINE] (
    [So#]                  NVARCHAR (20)   NULL,
    [Sol#]                 DECIMAL (36, 4) NULL,
    [Item Code]            NVARCHAR (60)   NULL,
    [Pr]                   DECIMAL (36, 4) NULL,
    [Deliv Date]           DATETIME2 (7)   NULL,
    [S]                    NVARCHAR (2)    NULL,
    [Comment]              NVARCHAR (2000) NULL,
    [Order Qty]            DECIMAL (36, 4) NULL,
    [Commit Qty]           DECIMAL (36, 4) NULL,
    [Bord Qty]             DECIMAL (36, 4) NULL,
    [Cancel Qty]           DECIMAL (36, 4) NULL,
    [Inv Qty]              DECIMAL (36, 4) NULL,
    [Po Qty]               DECIMAL (36, 4) NULL,
    [LinePrice]            DECIMAL (36, 4) NULL,
    [Disc %]               DECIMAL (36, 4) NULL,
    [OV Gst Incl]          DECIMAL (36, 4) NULL,
    [Po#]                  NVARCHAR (10)   NULL,
    [A]                    NVARCHAR (60)   NULL,
    [Quote Item Type]      NVARCHAR (60)   NULL,
    [Quote Item Ref]       NVARCHAR (60)   NULL,
    [Trade Prc]            DECIMAL (36, 4) NULL,
    [Mx NetPrc]            DECIMAL (36, 4) NULL,
    [Loc]                  NVARCHAR (6)    NULL,
    [X]                    NVARCHAR (2)    NULL,
    [Gst%]                 DECIMAL (36, 4) NULL,
    [Gst Value]            DECIMAL (36, 4) NULL,
    [Disc Value]           DECIMAL (36, 4) NULL,
    [LSup]                 DECIMAL (36, 4) NULL,
    [Supplier Item Code]   NVARCHAR (80)   NULL,
    [Cust#]                DECIMAL (36, 4) NULL,
    [Supply Qty]           DECIMAL (36, 4) NULL,
    [Prev ComQty]          DECIMAL (36, 4) NULL,
    [Prev SupQty]          DECIMAL (36, 4) NULL,
    [Tr Qty]               DECIMAL (36, 4) NULL,
    [Pol#]                 DECIMAL (36, 4) NULL,
    [Customer Reference]   NVARCHAR (100)  NULL,
    [Mx Price]             DECIMAL (36, 4) NULL,
    [MxDis%]               DECIMAL (36, 4) NULL,
    [Msp]                  NVARCHAR (6)    NULL,
    [Start Date]           DATETIME2 (7)   NULL,
    [STime]                TIME (7)        NULL,
    [Start By]             NVARCHAR (30)   NULL,
    [Unit Cost]            DECIMAL (36, 4) NULL,
    [T]                    NVARCHAR (2)    NULL,
    [Mx Item/Incat]        NVARCHAR (60)   NULL,
    [MxCust]               DECIMAL (36, 4) NULL,
    [Mx OV GstExc]         DECIMAL (36, 4) NULL,
    [Mx Val Fm]            DATETIME2 (7)   NULL,
    [Mx Val To]            DATETIME2 (7)   NULL,
    [MxPrbk]               NVARCHAR (12)   NULL,
    [MPC]                  NVARCHAR (6)    NULL,
    [Request#]             DECIMAL (36, 4) NULL,
    [P]                    NVARCHAR (2)    NULL,
    [Offerid]              NVARCHAR (30)   NULL,
    [OMD_INSERT_DATETIME]  DATETIME2 (7)   NULL,
    [OMD_FILE_NAME]        VARCHAR (8000)  NULL,
    [OMD_HASH_FULL_RECORD] VARCHAR (1000)  NULL
);

