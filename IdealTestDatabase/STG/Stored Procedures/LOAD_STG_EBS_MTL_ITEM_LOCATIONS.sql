

CREATE PROCEDURE "STG"."LOAD_STG_EBS_MTL_ITEM_LOCATIONS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:44 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_ITEM_LOCATIONS";
    
    
    Source                                Destination                        
    ----------------------------------    ---------------------------------- 
    LND"."LND_EBS_MTL_ITEM_LOCATIONS"    "STG"."STG_EBS_MTL_ITEM_LOCATIONS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_MTL_ITEM_LOCATIONS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_ITEM_LOCATIONS"
                (
                    "INVENTORY_LOCATION_ID"
                    ,"ORGANIZATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"DESCRIPTION"
                    ,"DESCRIPTIVE_TEXT"
                    ,"DISABLE_DATE"
                    ,"INVENTORY_LOCATION_TYPE"
                    ,"PICKING_ORDER"
                    ,"PHYSICAL_LOCATION_CODE"
                    ,"LOCATION_MAXIMUM_UNITS"
                    ,"SUBINVENTORY_CODE"
                    ,"LOCATION_WEIGHT_UOM_CODE"
                    ,"MAX_WEIGHT"
                    ,"VOLUME_UOM_CODE"
                    ,"MAX_CUBIC_AREA"
                    ,"X_COORDINATE"
                    ,"Y_COORDINATE"
                    ,"Z_COORDINATE"
                    ,"INVENTORY_ACCOUNT_ID"
                    ,"SEGMENT1"
                    ,"SEGMENT2"
                    ,"SEGMENT3"
                    ,"SEGMENT4"
                    ,"SEGMENT5"
                    ,"SEGMENT6"
                    ,"SEGMENT7"
                    ,"SEGMENT8"
                    ,"SEGMENT9"
                    ,"SEGMENT10"
                    ,"SEGMENT11"
                    ,"SEGMENT12"
                    ,"SEGMENT13"
                    ,"SEGMENT14"
                    ,"SEGMENT15"
                    ,"SEGMENT16"
                    ,"SEGMENT17"
                    ,"SEGMENT18"
                    ,"SEGMENT19"
                    ,"SEGMENT20"
                    ,"SUMMARY_FLAG"
                    ,"ENABLED_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"ATTRIBUTE_CATEGORY"
                    ,"ATTRIBUTE1"
                    ,"ATTRIBUTE2"
                    ,"ATTRIBUTE3"
                    ,"ATTRIBUTE4"
                    ,"ATTRIBUTE5"
                    ,"ATTRIBUTE6"
                    ,"ATTRIBUTE7"
                    ,"ATTRIBUTE8"
                    ,"ATTRIBUTE9"
                    ,"ATTRIBUTE10"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"PROJECT_ID"
                    ,"TASK_ID"
                    ,"PHYSICAL_LOCATION_ID"
                    ,"PICK_UOM_CODE"
                    ,"DIMENSION_UOM_CODE"
                    ,"LENGTH"
                    ,"WIDTH"
                    ,"HEIGHT"
                    ,"LOCATOR_STATUS"
                    ,"STATUS_ID"
                    ,"CURRENT_CUBIC_AREA"
                    ,"AVAILABLE_CUBIC_AREA"
                    ,"CURRENT_WEIGHT"
                    ,"AVAILABLE_WEIGHT"
                    ,"LOCATION_CURRENT_UNITS"
                    ,"LOCATION_AVAILABLE_UNITS"
                    ,"INVENTORY_ITEM_ID"
                    ,"SUGGESTED_CUBIC_AREA"
                    ,"SUGGESTED_WEIGHT"
                    ,"LOCATION_SUGGESTED_UNITS"
                    ,"EMPTY_FLAG"
                    ,"MIXED_ITEMS_FLAG"
                    ,"DROPPING_ORDER"
                    ,"AVAILABILITY_TYPE"
                    ,"INVENTORY_ATP_CODE"
                    ,"RESERVABLE_TYPE"
                    ,"ALIAS"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("INVENTORY_LOCATION_ID" AS float) AS "INVENTORY_LOCATION_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("DESCRIPTIVE_TEXT" AS varchar(1000) ) AS "DESCRIPTIVE_TEXT"
                        ,CAST("DISABLE_DATE" AS datetime2) AS "DISABLE_DATE"
                        ,CAST("INVENTORY_LOCATION_TYPE" AS float) AS "INVENTORY_LOCATION_TYPE"
                        ,CAST("PICKING_ORDER" AS float) AS "PICKING_ORDER"
                        ,CAST("PHYSICAL_LOCATION_CODE" AS varchar(100) ) AS "PHYSICAL_LOCATION_CODE"
                        ,CAST("LOCATION_MAXIMUM_UNITS" AS float) AS "LOCATION_MAXIMUM_UNITS"
                        ,CAST("SUBINVENTORY_CODE" AS varchar(100) ) AS "SUBINVENTORY_CODE"
                        ,CAST("LOCATION_WEIGHT_UOM_CODE" AS varchar(100) ) AS "LOCATION_WEIGHT_UOM_CODE"
                        ,CAST("MAX_WEIGHT" AS float) AS "MAX_WEIGHT"
                        ,CAST("VOLUME_UOM_CODE" AS varchar(100) ) AS "VOLUME_UOM_CODE"
                        ,CAST("MAX_CUBIC_AREA" AS float) AS "MAX_CUBIC_AREA"
                        ,CAST("X_COORDINATE" AS float) AS "X_COORDINATE"
                        ,CAST("Y_COORDINATE" AS float) AS "Y_COORDINATE"
                        ,CAST("Z_COORDINATE" AS float) AS "Z_COORDINATE"
                        ,CAST("INVENTORY_ACCOUNT_ID" AS float) AS "INVENTORY_ACCOUNT_ID"
                        ,CAST("SEGMENT1" AS varchar(100) ) AS "SEGMENT1"
                        ,CAST("SEGMENT2" AS varchar(100) ) AS "SEGMENT2"
                        ,CAST("SEGMENT3" AS varchar(100) ) AS "SEGMENT3"
                        ,CAST("SEGMENT4" AS varchar(100) ) AS "SEGMENT4"
                        ,CAST("SEGMENT5" AS varchar(100) ) AS "SEGMENT5"
                        ,CAST("SEGMENT6" AS varchar(100) ) AS "SEGMENT6"
                        ,CAST("SEGMENT7" AS varchar(100) ) AS "SEGMENT7"
                        ,CAST("SEGMENT8" AS varchar(100) ) AS "SEGMENT8"
                        ,CAST("SEGMENT9" AS varchar(100) ) AS "SEGMENT9"
                        ,CAST("SEGMENT10" AS varchar(100) ) AS "SEGMENT10"
                        ,CAST("SEGMENT11" AS varchar(100) ) AS "SEGMENT11"
                        ,CAST("SEGMENT12" AS varchar(100) ) AS "SEGMENT12"
                        ,CAST("SEGMENT13" AS varchar(100) ) AS "SEGMENT13"
                        ,CAST("SEGMENT14" AS varchar(100) ) AS "SEGMENT14"
                        ,CAST("SEGMENT15" AS varchar(100) ) AS "SEGMENT15"
                        ,CAST("SEGMENT16" AS varchar(100) ) AS "SEGMENT16"
                        ,CAST("SEGMENT17" AS varchar(100) ) AS "SEGMENT17"
                        ,CAST("SEGMENT18" AS varchar(100) ) AS "SEGMENT18"
                        ,CAST("SEGMENT19" AS varchar(100) ) AS "SEGMENT19"
                        ,CAST("SEGMENT20" AS varchar(100) ) AS "SEGMENT20"
                        ,CAST("SUMMARY_FLAG" AS varchar(100) ) AS "SUMMARY_FLAG"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("START_DATE_ACTIVE" AS datetime2) AS "START_DATE_ACTIVE"
                        ,CAST("END_DATE_ACTIVE" AS datetime2) AS "END_DATE_ACTIVE"
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "ATTRIBUTE_CATEGORY"
                        ,CAST("ATTRIBUTE1" AS varchar(1000) ) AS "ATTRIBUTE1"
                        ,CAST("ATTRIBUTE2" AS varchar(1000) ) AS "ATTRIBUTE2"
                        ,CAST("ATTRIBUTE3" AS varchar(1000) ) AS "ATTRIBUTE3"
                        ,CAST("ATTRIBUTE4" AS varchar(1000) ) AS "ATTRIBUTE4"
                        ,CAST("ATTRIBUTE5" AS varchar(1000) ) AS "ATTRIBUTE5"
                        ,CAST("ATTRIBUTE6" AS varchar(1000) ) AS "ATTRIBUTE6"
                        ,CAST("ATTRIBUTE7" AS varchar(1000) ) AS "ATTRIBUTE7"
                        ,CAST("ATTRIBUTE8" AS varchar(1000) ) AS "ATTRIBUTE8"
                        ,CAST("ATTRIBUTE9" AS varchar(1000) ) AS "ATTRIBUTE9"
                        ,CAST("ATTRIBUTE10" AS varchar(1000) ) AS "ATTRIBUTE10"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("PROJECT_ID" AS float) AS "PROJECT_ID"
                        ,CAST("TASK_ID" AS float) AS "TASK_ID"
                        ,CAST("PHYSICAL_LOCATION_ID" AS float) AS "PHYSICAL_LOCATION_ID"
                        ,CAST("PICK_UOM_CODE" AS varchar(100) ) AS "PICK_UOM_CODE"
                        ,CAST("DIMENSION_UOM_CODE" AS varchar(100) ) AS "DIMENSION_UOM_CODE"
                        ,CAST("LENGTH" AS float) AS "LENGTH"
                        ,CAST("WIDTH" AS float) AS "WIDTH"
                        ,CAST("HEIGHT" AS float) AS "HEIGHT"
                        ,CAST("LOCATOR_STATUS" AS float) AS "LOCATOR_STATUS"
                        ,CAST("STATUS_ID" AS float) AS "STATUS_ID"
                        ,CAST("CURRENT_CUBIC_AREA" AS float) AS "CURRENT_CUBIC_AREA"
                        ,CAST("AVAILABLE_CUBIC_AREA" AS float) AS "AVAILABLE_CUBIC_AREA"
                        ,CAST("CURRENT_WEIGHT" AS float) AS "CURRENT_WEIGHT"
                        ,CAST("AVAILABLE_WEIGHT" AS float) AS "AVAILABLE_WEIGHT"
                        ,CAST("LOCATION_CURRENT_UNITS" AS float) AS "LOCATION_CURRENT_UNITS"
                        ,CAST("LOCATION_AVAILABLE_UNITS" AS float) AS "LOCATION_AVAILABLE_UNITS"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("SUGGESTED_CUBIC_AREA" AS float) AS "SUGGESTED_CUBIC_AREA"
                        ,CAST("SUGGESTED_WEIGHT" AS float) AS "SUGGESTED_WEIGHT"
                        ,CAST("LOCATION_SUGGESTED_UNITS" AS float) AS "LOCATION_SUGGESTED_UNITS"
                        ,CAST("EMPTY_FLAG" AS varchar(100) ) AS "EMPTY_FLAG"
                        ,CAST("MIXED_ITEMS_FLAG" AS varchar(100) ) AS "MIXED_ITEMS_FLAG"
                        ,CAST("DROPPING_ORDER" AS float) AS "DROPPING_ORDER"
                        ,CAST("AVAILABILITY_TYPE" AS float) AS "AVAILABILITY_TYPE"
                        ,CAST("INVENTORY_ATP_CODE" AS float) AS "INVENTORY_ATP_CODE"
                        ,CAST("RESERVABLE_TYPE" AS float) AS "RESERVABLE_TYPE"
                        ,CAST("ALIAS" AS varchar(100) ) AS "ALIAS"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("INVENTORY_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            , COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("INVENTORY_LOCATION_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESCRIPTIVE_TEXT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DISABLE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_LOCATION_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PICKING_ORDER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_LOCATION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_MAXIMUM_UNITS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBINVENTORY_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_WEIGHT_UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MAX_WEIGHT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VOLUME_UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MAX_CUBIC_AREA"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("X_COORDINATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("Y_COORDINATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("Z_COORDINATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ACCOUNT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT16"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT17"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT18"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT19"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SEGMENT20"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUMMARY_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENABLED_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("START_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("END_DATE_ACTIVE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROJECT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TASK_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PICK_UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DIMENSION_UOM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LENGTH"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("WIDTH"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("HEIGHT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STATUS_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENT_CUBIC_AREA"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AVAILABLE_CUBIC_AREA"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CURRENT_WEIGHT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AVAILABLE_WEIGHT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_CURRENT_UNITS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_AVAILABLE_UNITS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_CUBIC_AREA"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUGGESTED_WEIGHT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_SUGGESTED_UNITS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EMPTY_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("MIXED_ITEMS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DROPPING_ORDER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AVAILABILITY_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ATP_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RESERVABLE_TYPE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALIAS"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_MTL_ITEM_LOCATIONS"
                    ) T 

        END TRY
        BEGIN CATCH
            /*SELECT   
            ERROR_NUMBER() AS ErrorNumber
            ,ERROR_SEVERITY() AS ErrorSeverity
            ,ERROR_SEVERITY() AS ErrorSeverity
            ,ERROR_PROCEDURE() AS ErrorProcedure
            ,ERROR_LINE() AS ErrorLine
            ,ERROR_MESSAGE() AS ErrorMessage;*/
            THROW;
    END CATCH 
END
