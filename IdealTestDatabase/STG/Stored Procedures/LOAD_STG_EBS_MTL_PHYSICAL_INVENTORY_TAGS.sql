

CREATE PROCEDURE "STG"."LOAD_STG_EBS_MTL_PHYSICAL_INVENTORY_TAGS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:50 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_PHYSICAL_INVENTORY_TAGS";
    
    
    Source                                         Destination                                 
    -------------------------------------------    ------------------------------------------- 
    LND"."LND_EBS_MTL_PHYSICAL_INVENTORY_TAGS"    "STG"."STG_EBS_MTL_PHYSICAL_INVENTORY_TAGS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_MTL_PHYSICAL_INVENTORY_TAGS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_PHYSICAL_INVENTORY_TAGS"
                (
                    "TAG_ID"
                    ,"PHYSICAL_INVENTORY_ID"
                    ,"ORGANIZATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"VOID_FLAG"
                    ,"TAG_NUMBER"
                    ,"ADJUSTMENT_ID"
                    ,"INVENTORY_ITEM_ID"
                    ,"TAG_QUANTITY"
                    ,"TAG_UOM"
                    ,"TAG_QUANTITY_AT_STANDARD_UOM"
                    ,"STANDARD_UOM"
                    ,"SUBINVENTORY"
                    ,"LOCATOR_ID"
                    ,"LOT_NUMBER"
                    ,"LOT_EXPIRATION_DATE"
                    ,"REVISION"
                    ,"SERIAL_NUM"
                    ,"COUNTED_BY_EMPLOYEE_ID"
                    ,"LOT_SERIAL_CONTROLS"
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
                    ,"PARENT_LPN_ID"
                    ,"OUTERMOST_LPN_ID"
                    ,"COST_GROUP_ID"
                    ,"TAG_SECONDARY_QUANTITY"
                    ,"TAG_SECONDARY_UOM"
                    ,"TAG_QTY_AT_STD_SECONDARY_UOM"
                    ,"STANDARD_SECONDARY_UOM"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("TAG_ID" AS float) AS "TAG_ID"
                        ,CAST("PHYSICAL_INVENTORY_ID" AS float) AS "PHYSICAL_INVENTORY_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("VOID_FLAG" AS float) AS "VOID_FLAG"
                        ,CAST("TAG_NUMBER" AS varchar(100) ) AS "TAG_NUMBER"
                        ,CAST("ADJUSTMENT_ID" AS float) AS "ADJUSTMENT_ID"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("TAG_QUANTITY" AS float) AS "TAG_QUANTITY"
                        ,CAST("TAG_UOM" AS varchar(100) ) AS "TAG_UOM"
                        ,CAST("TAG_QUANTITY_AT_STANDARD_UOM" AS float) AS "TAG_QUANTITY_AT_STANDARD_UOM"
                        ,CAST("STANDARD_UOM" AS varchar(100) ) AS "STANDARD_UOM"
                        ,CAST("SUBINVENTORY" AS varchar(100) ) AS "SUBINVENTORY"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,CAST("LOT_NUMBER" AS varchar(1000) ) AS "LOT_NUMBER"
                        ,CAST("LOT_EXPIRATION_DATE" AS datetime2) AS "LOT_EXPIRATION_DATE"
                        ,CAST("REVISION" AS varchar(100) ) AS "REVISION"
                        ,CAST("SERIAL_NUM" AS varchar(100) ) AS "SERIAL_NUM"
                        ,CAST("COUNTED_BY_EMPLOYEE_ID" AS float) AS "COUNTED_BY_EMPLOYEE_ID"
                        ,CAST("LOT_SERIAL_CONTROLS" AS varchar(100) ) AS "LOT_SERIAL_CONTROLS"
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
                        ,CAST("PARENT_LPN_ID" AS float) AS "PARENT_LPN_ID"
                        ,CAST("OUTERMOST_LPN_ID" AS float) AS "OUTERMOST_LPN_ID"
                        ,CAST("COST_GROUP_ID" AS float) AS "COST_GROUP_ID"
                        ,CAST("TAG_SECONDARY_QUANTITY" AS float) AS "TAG_SECONDARY_QUANTITY"
                        ,CAST("TAG_SECONDARY_UOM" AS varchar(100) ) AS "TAG_SECONDARY_UOM"
                        ,CAST("TAG_QTY_AT_STD_SECONDARY_UOM" AS float) AS "TAG_QTY_AT_STD_SECONDARY_UOM"
                        ,CAST("STANDARD_SECONDARY_UOM" AS varchar(100) ) AS "STANDARD_SECONDARY_UOM"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("TAG_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("TAG_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_INVENTORY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VOID_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ADJUSTMENT_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_UOM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_QUANTITY_AT_STANDARD_UOM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STANDARD_UOM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBINVENTORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_EXPIRATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REVISION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SERIAL_NUM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COUNTED_BY_EMPLOYEE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_SERIAL_CONTROLS"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("PARENT_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OUTERMOST_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_SECONDARY_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_SECONDARY_UOM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_QTY_AT_STD_SECONDARY_UOM"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STANDARD_SECONDARY_UOM"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_MTL_PHYSICAL_INVENTORY_TAGS"
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
