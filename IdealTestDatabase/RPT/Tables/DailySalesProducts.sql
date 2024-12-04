﻿CREATE TABLE [RPT].[DailySalesProducts] (
    [Dim_Product_Key]            VARCHAR (32)    NULL,
    [Incat]                      NVARCHAR (20)   NULL,
    [ItemCode]                   NVARCHAR (60)   NULL,
    [Indent]                     VARCHAR (1)     NOT NULL,
    [Item Description]           NVARCHAR (240)  NULL,
    [ProductGroup]               NVARCHAR (40)   NULL,
    [CategoryCode]               NVARCHAR (4)    NULL,
    [CategoryDescription]        NVARCHAR (120)  NULL,
    [SubCategoryCode]            NVARCHAR (16)   NULL,
    [SubCategoryDescription]     NVARCHAR (120)  NULL,
    [MagnitudeCode]              NVARCHAR (12)   NULL,
    [MagnitudeClassification]    NVARCHAR (100)  NULL,
    [CategoryRebatePCT]          DECIMAL (36, 4) NULL,
    [Uom]                        NVARCHAR (20)   NULL,
    [ValueAtCost]                DECIMAL (36, 4) NULL,
    [StockQuantity]              DECIMAL (36, 4) NULL,
    [NationalBuyPrice]           DECIMAL (36, 4) NULL,
    [CommitQuantity]             DECIMAL (36, 4) NULL,
    [OrderQuantity]              DECIMAL (36, 4) NULL,
    [RetailPrice]                DECIMAL (36, 4) NULL,
    [SupplierCode]               INT             NULL,
    [SupplierItemCode]           NVARCHAR (80)   NULL,
    [LastSale]                   DATETIME2 (7)   NULL,
    [Comment]                    NVARCHAR (240)  NULL,
    [CurrentStake]               DATETIME2 (7)   NULL,
    [QuantityOnhandCurrentStake] DECIMAL (36, 4) NULL,
    [StartDate]                  DATETIME2 (7)   NULL,
    [LastPurchase]               DATETIME2 (7)   NULL,
    [OracleID]                   INT             NULL,
    [BarcodeGTIN]                NVARCHAR (40)   NULL,
    [DCFilled]                   NVARCHAR (20)   NULL,
    [Dim_SourceSystem]           VARCHAR (16)    NOT NULL,
    [Dim_EffectiveFrom]          DATETIME2 (7)   NULL,
    [Dim_EffectiveTo]            DATETIME2 (7)   NULL,
    [New]                        NCHAR (10)      NULL
);
