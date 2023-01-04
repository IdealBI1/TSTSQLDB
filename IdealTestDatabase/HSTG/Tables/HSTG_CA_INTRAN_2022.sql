﻿CREATE TABLE [HSTG].[HSTG_CA_INTRAN_2022] (
    [Recnum]                       BIGINT          NULL,
    [Type]                         NVARCHAR (100)  NULL,
    [Item Code]                    NVARCHAR (100)  NULL,
    [Loc]                          DECIMAL (36, 4) NULL,
    [Lto]                          NVARCHAR (3)    NULL,
    [Prtnr#]                       DECIMAL (36, 4) NULL,
    [Trans Date]                   DATE            NULL,
    [Lin#]                         DECIMAL (36, 4) NULL,
    [Trans Qty]                    DECIMAL (36, 4) NULL,
    [SV Gst Incl]                  DECIMAL (36, 4) NULL,
    [Gst Value]                    DECIMAL (36, 4) NULL,
    [Cogs Value]                   DECIMAL (36, 4) NULL,
    [C2O Date]                     DATE            NULL,
    [Batch#]                       DECIMAL (36, 4) NULL,
    [DPF]                          DECIMAL (36, 4) NULL,
    [Last Cost]                    DECIMAL (36, 4) NULL,
    [VReb %]                       DECIMAL (36, 4) NULL,
    [Invoice#]                     NVARCHAR (100)  NULL,
    [Count Qty]                    DECIMAL (36, 4) NULL,
    [Frozen Qoh]                   DECIMAL (36, 4) NULL,
    [Delivery Docket]              NVARCHAR (100)  NULL,
    [Po#]                          DECIMAL (36, 4) NULL,
    [Spn]                          NVARCHAR (3)    NULL,
    [S]                            NVARCHAR (1)    NULL,
    [GlAcct#]                      NVARCHAR (100)  NULL,
    [C2O Cogs Val]                 DECIMAL (36, 4) NULL,
    [Ven Reb Qty]                  DECIMAL (36, 4) NULL,
    [VR]                           DECIMAL (36, 4) NULL,
    [Vend Price]                   DECIMAL (36, 4) NULL,
    [Vendor Ref]                   NVARCHAR (100)  NULL,
    [Comment]                      NVARCHAR (100)  NULL,
    [Start Date]                   DATE            NULL,
    [STime]                        TIME (7)        NULL,
    [Sby]                          NVARCHAR (3)    NULL,
    [Amend Date]                   DATE            NULL,
    [ATime]                        TIME (7)        NULL,
    [Aby]                          NVARCHAR (3)    NULL,
    [G]                            DECIMAL (36, 4) NULL,
    [Gst %]                        DECIMAL (36, 4) NULL,
    [Inm Vac]                      DECIMAL (36, 4) NULL,
    [Inm Qoh]                      DECIMAL (36, 4) NULL,
    [Inl Vac]                      DECIMAL (36, 4) NULL,
    [Inl Qoh]                      DECIMAL (36, 4) NULL,
    [Qty Eop]                      DECIMAL (36, 4) NULL,
    [Cogs Eop]                     DECIMAL (36, 4) NULL,
    [TypPE]                        NVARCHAR (100)  NULL,
    [Rfc#]                         DECIMAL (36, 4) NULL,
    [UPFM]                         NVARCHAR (1)    NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);

