﻿CREATE TABLE [LND].[LND_EBS_FND_FLEX_VALUE_SETS] (
    [FLEX_VALUE_SET_ID]         NVARCHAR (4000) NULL,
    [FLEX_VALUE_SET_NAME]       NVARCHAR (4000) NULL,
    [LAST_UPDATE_DATE]          NVARCHAR (4000) NULL,
    [LAST_UPDATED_BY]           NVARCHAR (4000) NULL,
    [CREATION_DATE]             NVARCHAR (4000) NULL,
    [CREATED_BY]                NVARCHAR (4000) NULL,
    [LAST_UPDATE_LOGIN]         NVARCHAR (4000) NULL,
    [VALIDATION_TYPE]           NVARCHAR (4000) NULL,
    [PROTECTED_FLAG]            NVARCHAR (4000) NULL,
    [SECURITY_ENABLED_FLAG]     NVARCHAR (4000) NULL,
    [LONGLIST_FLAG]             NVARCHAR (4000) NULL,
    [FORMAT_TYPE]               NVARCHAR (4000) NULL,
    [MAXIMUM_SIZE]              NVARCHAR (4000) NULL,
    [ALPHANUMERIC_ALLOWED_FLAG] NVARCHAR (4000) NULL,
    [UPPERCASE_ONLY_FLAG]       NVARCHAR (4000) NULL,
    [NUMERIC_MODE_ENABLED_FLAG] NVARCHAR (4000) NULL,
    [DESCRIPTION]               NVARCHAR (4000) NULL,
    [DEPENDANT_DEFAULT_VALUE]   NVARCHAR (4000) NULL,
    [DEPENDANT_DEFAULT_MEANING] NVARCHAR (4000) NULL,
    [PARENT_FLEX_VALUE_SET_ID]  NVARCHAR (4000) NULL,
    [MINIMUM_VALUE]             NVARCHAR (4000) NULL,
    [MAXIMUM_VALUE]             NVARCHAR (4000) NULL,
    [NUMBER_PRECISION]          NVARCHAR (4000) NULL,
    [OMD_INSERT_DATETIME]       DATETIME2 (7)   NOT NULL,
    [OMD_FILE_NAME]             VARCHAR (8000)  NOT NULL
);

