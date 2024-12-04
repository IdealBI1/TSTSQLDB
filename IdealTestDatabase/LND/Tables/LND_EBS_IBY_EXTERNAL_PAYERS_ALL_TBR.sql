CREATE TABLE [LND].[LND_EBS_IBY_EXTERNAL_PAYERS_ALL_TBR] (
    [EXT_PAYER_ID]                 DECIMAL (15)   NULL,
    [PAYMENT_FUNCTION]             NVARCHAR (30)  NULL,
    [PARTY_ID]                     DECIMAL (15)   NULL,
    [ORG_TYPE]                     NVARCHAR (30)  NULL,
    [ORG_ID]                       DECIMAL (15)   NULL,
    [CUST_ACCOUNT_ID]              DECIMAL (15)   NULL,
    [ACCT_SITE_USE_ID]             DECIMAL (15)   NULL,
    [BANK_CHARGE_BEARER_CODE]      NVARCHAR (30)  NULL,
    [DIRDEB_INSTRUCTION_CODE]      NVARCHAR (30)  NULL,
    [CREATED_BY]                   DECIMAL (15)   NULL,
    [CREATION_DATE]                DATETIME2 (0)  NULL,
    [LAST_UPDATED_BY]              DECIMAL (15)   NULL,
    [LAST_UPDATE_DATE]             DATETIME2 (0)  NULL,
    [LAST_UPDATE_LOGIN]            DECIMAL (15)   NULL,
    [OBJECT_VERSION_NUMBER]        FLOAT (53)     NULL,
    [DEBIT_ADVICE_DELIVERY_METHOD] NVARCHAR (30)  NULL,
    [DEBIT_ADVICE_EMAIL]           NVARCHAR (255) NULL,
    [DEBIT_ADVICE_FAX]             NVARCHAR (100) NULL,
    [LOCALINSTR]                   NVARCHAR (30)  NULL,
    [SERVICE_LEVEL]                NVARCHAR (30)  NULL,
    [PURPOSE_CODE]                 NVARCHAR (30)  NULL
);

