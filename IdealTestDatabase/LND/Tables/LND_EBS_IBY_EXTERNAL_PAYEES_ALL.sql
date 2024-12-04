﻿CREATE TABLE [LND].[LND_EBS_IBY_EXTERNAL_PAYEES_ALL] (
    [EXT_PAYEE_ID]                 NVARCHAR (4000) NULL,
    [PAYEE_PARTY_ID]               NVARCHAR (4000) NULL,
    [PAYMENT_FUNCTION]             NVARCHAR (4000) NULL,
    [EXCLUSIVE_PAYMENT_FLAG]       NVARCHAR (4000) NULL,
    [CREATED_BY]                   NVARCHAR (4000) NULL,
    [CREATION_DATE]                NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]              NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]             NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]            NVARCHAR (4000) NULL,
    [OBJECT_VERSION_NUMBER]        NVARCHAR (4000) NULL,
    [PARTY_SITE_ID]                NVARCHAR (4000) NULL,
    [SUPPLIER_SITE_ID]             NVARCHAR (4000) NULL,
    [ORG_ID]                       NVARCHAR (4000) NULL,
    [ORG_TYPE]                     NVARCHAR (4000) NULL,
    [DEFAULT_PAYMENT_METHOD_CODE]  NVARCHAR (4000) NULL,
    [ECE_TP_LOCATION_CODE]         NVARCHAR (4000) NULL,
    [BANK_CHARGE_BEARER]           NVARCHAR (4000) NULL,
    [BANK_INSTRUCTION1_CODE]       NVARCHAR (4000) NULL,
    [BANK_INSTRUCTION2_CODE]       NVARCHAR (4000) NULL,
    [BANK_INSTRUCTION_DETAILS]     NVARCHAR (4000) NULL,
    [PAYMENT_REASON_CODE]          NVARCHAR (4000) NULL,
    [PAYMENT_REASON_COMMENTS]      NVARCHAR (4000) NULL,
    [INACTIVE_DATE]                NVARCHAR (4000) NULL,
    [PAYMENT_TEXT_MESSAGE1]        NVARCHAR (4000) NULL,
    [PAYMENT_TEXT_MESSAGE2]        NVARCHAR (4000) NULL,
    [PAYMENT_TEXT_MESSAGE3]        NVARCHAR (4000) NULL,
    [DELIVERY_CHANNEL_CODE]        NVARCHAR (4000) NULL,
    [PAYMENT_FORMAT_CODE]          NVARCHAR (4000) NULL,
    [SETTLEMENT_PRIORITY]          NVARCHAR (4000) NULL,
    [REMIT_ADVICE_DELIVERY_METHOD] NVARCHAR (4000) NULL,
    [REMIT_ADVICE_EMAIL]           NVARCHAR (4000) NULL,
    [REMIT_ADVICE_FAX]             NVARCHAR (4000) NULL,
    [SERVICE_LEVEL_CODE]           NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]                VARCHAR (8000)  NOT NULL
);
