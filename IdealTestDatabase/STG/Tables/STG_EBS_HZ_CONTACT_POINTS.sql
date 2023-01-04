﻿CREATE TABLE [STG].[STG_EBS_HZ_CONTACT_POINTS] (
    [CONTACT_POINT_ID]             FLOAT (53)     NULL,
    [CONTACT_POINT_TYPE]           VARCHAR (100)  NULL,
    [STATUS]                       VARCHAR (100)  NULL,
    [OWNER_TABLE_NAME]             VARCHAR (100)  NULL,
    [OWNER_TABLE_ID]               FLOAT (53)     NULL,
    [PRIMARY_FLAG]                 VARCHAR (100)  NULL,
    [ORIG_SYSTEM_REFERENCE]        VARCHAR (1000) NULL,
    [LAST_UPDATE_DATE]             DATETIME       NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME       NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [WH_UPDATE_DATE]               DATETIME       NULL,
    [REQUEST_ID]                   FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]       FLOAT (53)     NULL,
    [PROGRAM_ID]                   FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]          DATETIME       NULL,
    [ATTRIBUTE_CATEGORY]           VARCHAR (100)  NULL,
    [ATTRIBUTE1]                   VARCHAR (1000) NULL,
    [ATTRIBUTE2]                   VARCHAR (1000) NULL,
    [ATTRIBUTE3]                   VARCHAR (1000) NULL,
    [ATTRIBUTE4]                   VARCHAR (1000) NULL,
    [ATTRIBUTE5]                   VARCHAR (1000) NULL,
    [ATTRIBUTE6]                   VARCHAR (1000) NULL,
    [ATTRIBUTE7]                   VARCHAR (1000) NULL,
    [ATTRIBUTE8]                   VARCHAR (1000) NULL,
    [ATTRIBUTE9]                   VARCHAR (1000) NULL,
    [ATTRIBUTE10]                  VARCHAR (1000) NULL,
    [ATTRIBUTE11]                  VARCHAR (1000) NULL,
    [ATTRIBUTE12]                  VARCHAR (1000) NULL,
    [ATTRIBUTE13]                  VARCHAR (1000) NULL,
    [ATTRIBUTE14]                  VARCHAR (1000) NULL,
    [ATTRIBUTE15]                  VARCHAR (1000) NULL,
    [ATTRIBUTE16]                  VARCHAR (1000) NULL,
    [ATTRIBUTE17]                  VARCHAR (1000) NULL,
    [ATTRIBUTE18]                  VARCHAR (1000) NULL,
    [ATTRIBUTE19]                  VARCHAR (1000) NULL,
    [ATTRIBUTE20]                  VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE_CATEGORY]    VARCHAR (100)  NULL,
    [GLOBAL_ATTRIBUTE1]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE2]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE3]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE4]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE5]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE6]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE7]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE8]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE9]            VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE10]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE11]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE12]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE13]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE14]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE15]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE16]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE17]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE18]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE19]           VARCHAR (1000) NULL,
    [GLOBAL_ATTRIBUTE20]           VARCHAR (1000) NULL,
    [EDI_TRANSACTION_HANDLING]     VARCHAR (100)  NULL,
    [EDI_ID_NUMBER]                VARCHAR (100)  NULL,
    [EDI_PAYMENT_METHOD]           VARCHAR (100)  NULL,
    [EDI_PAYMENT_FORMAT]           VARCHAR (100)  NULL,
    [EDI_REMITTANCE_METHOD]        VARCHAR (100)  NULL,
    [EDI_REMITTANCE_INSTRUCTION]   VARCHAR (100)  NULL,
    [EDI_TP_HEADER_ID]             FLOAT (53)     NULL,
    [EDI_ECE_TP_LOCATION_CODE]     VARCHAR (100)  NULL,
    [EMAIL_FORMAT]                 VARCHAR (100)  NULL,
    [EMAIL_ADDRESS]                VARCHAR (8000) NULL,
    [BEST_TIME_TO_CONTACT_START]   DATETIME       NULL,
    [BEST_TIME_TO_CONTACT_END]     DATETIME       NULL,
    [PHONE_CALLING_CALENDAR]       VARCHAR (100)  NULL,
    [CONTACT_ATTEMPTS]             FLOAT (53)     NULL,
    [CONTACTS]                     FLOAT (53)     NULL,
    [DECLARED_BUSINESS_PHONE_FLAG] VARCHAR (100)  NULL,
    [DO_NOT_USE_FLAG]              VARCHAR (100)  NULL,
    [DO_NOT_USE_REASON]            VARCHAR (1000) NULL,
    [LAST_CONTACT_DT_TIME]         DATETIME       NULL,
    [PHONE_PREFERRED_ORDER]        FLOAT (53)     NULL,
    [PRIORITY_OF_USE_CODE]         VARCHAR (100)  NULL,
    [TELEPHONE_TYPE]               VARCHAR (100)  NULL,
    [TIME_ZONE]                    FLOAT (53)     NULL,
    [PHONE_TOUCH_TONE_TYPE_FLAG]   VARCHAR (100)  NULL,
    [PHONE_AREA_CODE]              VARCHAR (100)  NULL,
    [PHONE_COUNTRY_CODE]           VARCHAR (100)  NULL,
    [PHONE_NUMBER]                 VARCHAR (100)  NULL,
    [PHONE_EXTENSION]              VARCHAR (100)  NULL,
    [PHONE_LINE_TYPE]              VARCHAR (100)  NULL,
    [TELEX_NUMBER]                 VARCHAR (1000) NULL,
    [WEB_TYPE]                     VARCHAR (1000) NULL,
    [URL]                          VARCHAR (8000) NULL,
    [CONTENT_SOURCE_TYPE]          VARCHAR (100)  NULL,
    [RAW_PHONE_NUMBER]             VARCHAR (1000) NULL,
    [OBJECT_VERSION_NUMBER]        FLOAT (53)     NULL,
    [CREATED_BY_MODULE]            VARCHAR (1000) NULL,
    [APPLICATION_ID]               FLOAT (53)     NULL,
    [TIMEZONE_ID]                  FLOAT (53)     NULL,
    [CONTACT_POINT_PURPOSE]        VARCHAR (100)  NULL,
    [PRIMARY_BY_PURPOSE]           VARCHAR (100)  NULL,
    [TRANSPOSED_PHONE_NUMBER]      VARCHAR (1000) NULL,
    [EFT_TRANSMISSION_PROGRAM_ID]  FLOAT (53)     NULL,
    [EFT_PRINTING_PROGRAM_ID]      FLOAT (53)     NULL,
    [EFT_USER_NUMBER]              VARCHAR (100)  NULL,
    [EFT_SWIFT_CODE]               VARCHAR (100)  NULL,
    [ACTUAL_CONTENT_SOURCE]        VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL
);

