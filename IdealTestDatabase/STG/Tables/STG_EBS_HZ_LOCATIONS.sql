﻿CREATE TABLE [STG].[STG_EBS_HZ_LOCATIONS] (
    [LOCATION_ID]                  FLOAT (53)     NULL,
    [LAST_UPDATE_DATE]             DATETIME       NULL,
    [LAST_UPDATED_BY]              FLOAT (53)     NULL,
    [CREATION_DATE]                DATETIME       NULL,
    [CREATED_BY]                   FLOAT (53)     NULL,
    [LAST_UPDATE_LOGIN]            FLOAT (53)     NULL,
    [REQUEST_ID]                   FLOAT (53)     NULL,
    [PROGRAM_APPLICATION_ID]       FLOAT (53)     NULL,
    [PROGRAM_ID]                   FLOAT (53)     NULL,
    [PROGRAM_UPDATE_DATE]          DATETIME       NULL,
    [WH_UPDATE_DATE]               DATETIME       NULL,
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
    [ORIG_SYSTEM_REFERENCE]        VARCHAR (1000) NULL,
    [COUNTRY]                      VARCHAR (1000) NULL,
    [ADDRESS1]                     VARCHAR (1000) NULL,
    [ADDRESS2]                     VARCHAR (1000) NULL,
    [ADDRESS3]                     VARCHAR (1000) NULL,
    [ADDRESS4]                     VARCHAR (1000) NULL,
    [CITY]                         VARCHAR (1000) NULL,
    [POSTAL_CODE]                  VARCHAR (1000) NULL,
    [STATE]                        VARCHAR (1000) NULL,
    [PROVINCE]                     VARCHAR (1000) NULL,
    [COUNTY]                       VARCHAR (1000) NULL,
    [ADDRESS_KEY]                  VARCHAR (1000) NULL,
    [ADDRESS_STYLE]                VARCHAR (100)  NULL,
    [VALIDATED_FLAG]               VARCHAR (100)  NULL,
    [ADDRESS_LINES_PHONETIC]       VARCHAR (8000) NULL,
    [APARTMENT_FLAG]               VARCHAR (100)  NULL,
    [PO_BOX_NUMBER]                VARCHAR (1000) NULL,
    [HOUSE_NUMBER]                 VARCHAR (1000) NULL,
    [STREET_SUFFIX]                VARCHAR (1000) NULL,
    [APARTMENT_NUMBER]             VARCHAR (1000) NULL,
    [SECONDARY_SUFFIX_ELEMENT]     VARCHAR (1000) NULL,
    [STREET]                       VARCHAR (1000) NULL,
    [RURAL_ROUTE_TYPE]             VARCHAR (1000) NULL,
    [RURAL_ROUTE_NUMBER]           VARCHAR (1000) NULL,
    [STREET_NUMBER]                VARCHAR (1000) NULL,
    [BUILDING]                     VARCHAR (1000) NULL,
    [FLOOR]                        VARCHAR (1000) NULL,
    [SUITE]                        VARCHAR (1000) NULL,
    [ROOM]                         VARCHAR (1000) NULL,
    [POSTAL_PLUS4_CODE]            VARCHAR (100)  NULL,
    [TIME_ZONE]                    VARCHAR (1000) NULL,
    [OVERSEAS_ADDRESS_FLAG]        VARCHAR (100)  NULL,
    [POST_OFFICE]                  VARCHAR (1000) NULL,
    [POSITION]                     VARCHAR (1000) NULL,
    [DELIVERY_POINT_CODE]          VARCHAR (1000) NULL,
    [LOCATION_DIRECTIONS]          VARCHAR (8000) NULL,
    [ADDRESS_EFFECTIVE_DATE]       DATETIME       NULL,
    [ADDRESS_EXPIRATION_DATE]      DATETIME       NULL,
    [ADDRESS_ERROR_CODE]           VARCHAR (1000) NULL,
    [CLLI_CODE]                    VARCHAR (1000) NULL,
    [DODAAC]                       VARCHAR (100)  NULL,
    [TRAILING_DIRECTORY_CODE]      VARCHAR (1000) NULL,
    [LANGUAGE]                     VARCHAR (100)  NULL,
    [LIFE_CYCLE_STATUS]            VARCHAR (100)  NULL,
    [SHORT_DESCRIPTION]            VARCHAR (1000) NULL,
    [DESCRIPTION]                  VARCHAR (8000) NULL,
    [CONTENT_SOURCE_TYPE]          VARCHAR (100)  NULL,
    [LOC_HIERARCHY_ID]             FLOAT (53)     NULL,
    [SALES_TAX_GEOCODE]            VARCHAR (100)  NULL,
    [SALES_TAX_INSIDE_CITY_LIMITS] VARCHAR (100)  NULL,
    [FA_LOCATION_ID]               FLOAT (53)     NULL,
    [GEOMETRY]                     VARCHAR (1000) NULL,
    [OBJECT_VERSION_NUMBER]        FLOAT (53)     NULL,
    [CREATED_BY_MODULE]            VARCHAR (1000) NULL,
    [APPLICATION_ID]               FLOAT (53)     NULL,
    [TIMEZONE_ID]                  FLOAT (53)     NULL,
    [GEOMETRY_STATUS_CODE]         VARCHAR (100)  NULL,
    [ACTUAL_CONTENT_SOURCE]        VARCHAR (100)  NULL,
    [VALIDATION_STATUS_CODE]       VARCHAR (100)  NULL,
    [DATE_VALIDATED]               DATETIME       NULL,
    [DO_NOT_VALIDATE_FLAG]         VARCHAR (100)  NULL,
    [GEOMETRY_SOURCE]              VARCHAR (100)  NULL,
    [OMD_INSERT_DATETIME]          DATETIME2 (7)  NULL,
    [OMD_FILE_NAME]                VARCHAR (8000) NULL,
    [OMD_HASH_FULL_RECORD]         VARCHAR (1000) NULL
);

