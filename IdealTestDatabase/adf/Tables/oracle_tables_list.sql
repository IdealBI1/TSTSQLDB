CREATE TABLE [adf].[oracle_tables_list] (
    [config_key]      INT            NULL,
    [owner]           VARCHAR (20)   NULL,
    [table_name]      VARCHAR (200)  NULL,
    [is_active]       BIT            NULL,
    [pre_execution]   VARCHAR (4000) NULL,
    [category]        VARCHAR (100)  NULL,
    [extract_SQL]     VARCHAR (8000) NULL,
    [PKColumns]       VARCHAR (200)  NULL,
    [ComposerVersion] TINYINT        NULL
);

