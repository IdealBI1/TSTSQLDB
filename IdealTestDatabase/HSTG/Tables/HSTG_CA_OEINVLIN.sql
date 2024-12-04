CREATE TABLE [HSTG].[HSTG_CA_OEINVLIN] (
    [Invoice#]                     DECIMAL (36, 4) NULL,
    [Inl#]                         DECIMAL (36, 4) NULL,
    [Item Code]                    NVARCHAR (60)   NULL,
    [Memo#]                        DECIMAL (36, 4) NULL,
    [Sale Qty]                     DECIMAL (36, 4) NULL,
    [Disc %]                       DECIMAL (36, 4) NULL,
    [Disc Value]                   DECIMAL (36, 4) NULL,
    [LinePrice]                    DECIMAL (36, 4) NULL,
    [SV Gst Incl]                  DECIMAL (36, 4) NULL,
    [Loc]                          NVARCHAR (6)    NULL,
    [Lto]                          NVARCHAR (6)    NULL,
    [Cogs Value]                   DECIMAL (36, 4) NULL,
    [Gst Value]                    DECIMAL (36, 4) NULL,
    [Gst %]                        DECIMAL (36, 4) NULL,
    [P]                            NVARCHAR (2)    NULL,
    [Reas]                         NVARCHAR (8)    NULL,
    [Backord Qty]                  DECIMAL (36, 4) NULL,
    [Order Qty]                    DECIMAL (36, 4) NULL,
    [CusTyp]                       NVARCHAR (12)   NULL,
    [Spn]                          NVARCHAR (6)    NULL,
    [OeIncat]                      NVARCHAR (20)   NULL,
    [Trans Date]                   DATETIME2 (7)   NULL,
    [Pd]                           DECIMAL (36, 4) NULL,
    [Cust#]                        DECIMAL (36, 4) NULL,
    [Start Date]                   DATETIME2 (7)   NULL,
    [STime]                        TIME (7)        NULL,
    [Start By]                     NVARCHAR (30)   NULL,
    [Amend Date]                   DATETIME2 (7)   NULL,
    [ATime]                        TIME (7)        NULL,
    [Amend By]                     NVARCHAR (30)   NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000)  NULL,
    [OMD_IS_RECORD_DELETED]        VARCHAR (1)     NULL,
    [OMD_CURRENT_RECORD_INDICATOR] VARCHAR (1)     NULL
);


GO
CREATE NONCLUSTERED INDEX [IDX_HSTG_CA_OEINVLIN_CURRENT_RECORD_IS_DELETED]
    ON [HSTG].[HSTG_CA_OEINVLIN]([OMD_IS_RECORD_DELETED] ASC, [OMD_CURRENT_RECORD_INDICATOR] ASC)
    INCLUDE([Invoice#], [Inl#], [Item Code], [Sale Qty], [SV Gst Incl], [Loc], [Cogs Value], [Gst Value], [Trans Date], [Cust#], [OMD_INSERT_DATETIME]);

