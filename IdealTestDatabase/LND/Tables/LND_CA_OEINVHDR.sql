﻿CREATE TABLE [LND].[LND_CA_OEINVHDR] (
    [Invoice#]                NVARCHAR (4000) NULL,
    [Cust#]                   NVARCHAR (4000) NULL,
    [Batch#]                  NVARCHAR (4000) NULL,
    [Trans Date]              NVARCHAR (4000) NULL,
    [Customer Reference]      NVARCHAR (4000) NULL,
    [P]                       NVARCHAR (4000) NULL,
    [SV Gst Incl]             NVARCHAR (4000) NULL,
    [Message]                 NVARCHAR (4000) NULL,
    [Gst Value]               NVARCHAR (4000) NULL,
    [Cogs Value]              NVARCHAR (4000) NULL,
    [Line Total]              NVARCHAR (4000) NULL,
    [So#]                     NVARCHAR (4000) NULL,
    [Delivery Name]           NVARCHAR (4000) NULL,
    [Delivery Address Line 1] NVARCHAR (4000) NULL,
    [Delivery Address Line 2] NVARCHAR (4000) NULL,
    [Delivery Address Line 3] NVARCHAR (4000) NULL,
    [Tax Certificate]         NVARCHAR (4000) NULL,
    [Spn]                     NVARCHAR (4000) NULL,
    [Job Ref]                 NVARCHAR (4000) NULL,
    [Credit#]                 NVARCHAR (4000) NULL,
    [Ins]                     NVARCHAR (4000) NULL,
    [C2OBch]                  NVARCHAR (4000) NULL,
    [Disp Via]                NVARCHAR (4000) NULL,
    [Consignment Note#]       NVARCHAR (4000) NULL,
    [Start Date]              NVARCHAR (4000) NULL,
    [STime]                   NVARCHAR (4000) NULL,
    [Start By]                NVARCHAR (4000) NULL,
    [Amend Date]              NVARCHAR (4000) NULL,
    [ATime]                   NVARCHAR (4000) NULL,
    [Amend By]                NVARCHAR (4000) NULL,
    [Loc]                     NVARCHAR (4000) NULL,
    [Line Gst Val]            NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]     DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]           VARCHAR (8000)  NOT NULL
);
