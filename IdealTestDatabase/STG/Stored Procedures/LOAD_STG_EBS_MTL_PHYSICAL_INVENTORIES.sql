

CREATE PROCEDURE "STG"."LOAD_STG_EBS_MTL_PHYSICAL_INVENTORIES"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:47 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_PHYSICAL_INVENTORIES";
    
    
    Source                                      Destination                              
    ----------------------------------------    ---------------------------------------- 
    LND"."LND_EBS_MTL_PHYSICAL_INVENTORIES"    "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES"
                (
                    "PHYSICAL_INVENTORY_ID"
                    ,"ORGANIZATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PHYSICAL_INVENTORY_DATE"
                    ,"LAST_ADJUSTMENT_DATE"
                    ,"TOTAL_ADJUSTMENT_VALUE"
                    ,"DESCRIPTION"
                    ,"FREEZE_DATE"
                    ,"PHYSICAL_INVENTORY_NAME"
                    ,"APPROVAL_REQUIRED"
                    ,"ALL_SUBINVENTORIES_FLAG"
                    ,"NEXT_TAG_NUMBER"
                    ,"TAG_NUMBER_INCREMENTS"
                    ,"DEFAULT_GL_ADJUST_ACCOUNT"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"APPROVAL_TOLERANCE_POS"
                    ,"APPROVAL_TOLERANCE_NEG"
                    ,"COST_VARIANCE_POS"
                    ,"COST_VARIANCE_NEG"
                    ,"NUMBER_OF_SKUS"
                    ,"DYNAMIC_TAG_ENTRY_FLAG"
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
                    ,"ATTRIBUTE_CATEGORY"
                    ,"EXCLUDE_ZERO_BALANCE"
                    ,"EXCLUDE_NEGATIVE_BALANCE"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("PHYSICAL_INVENTORY_ID" AS float) AS "PHYSICAL_INVENTORY_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("PHYSICAL_INVENTORY_DATE" AS datetime2) AS "PHYSICAL_INVENTORY_DATE"
                        ,CAST("LAST_ADJUSTMENT_DATE" AS datetime2) AS "LAST_ADJUSTMENT_DATE"
                        ,CAST("TOTAL_ADJUSTMENT_VALUE" AS float) AS "TOTAL_ADJUSTMENT_VALUE"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("FREEZE_DATE" AS datetime2) AS "FREEZE_DATE"
                        ,CAST("PHYSICAL_INVENTORY_NAME" AS varchar(100) ) AS "PHYSICAL_INVENTORY_NAME"
                        ,CAST("APPROVAL_REQUIRED" AS float) AS "APPROVAL_REQUIRED"
                        ,CAST("ALL_SUBINVENTORIES_FLAG" AS float) AS "ALL_SUBINVENTORIES_FLAG"
                        ,CAST("NEXT_TAG_NUMBER" AS varchar(100) ) AS "NEXT_TAG_NUMBER"
                        ,CAST("TAG_NUMBER_INCREMENTS" AS varchar(100) ) AS "TAG_NUMBER_INCREMENTS"
                        ,CAST("DEFAULT_GL_ADJUST_ACCOUNT" AS float) AS "DEFAULT_GL_ADJUST_ACCOUNT"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("APPROVAL_TOLERANCE_POS" AS float) AS "APPROVAL_TOLERANCE_POS"
                        ,CAST("APPROVAL_TOLERANCE_NEG" AS float) AS "APPROVAL_TOLERANCE_NEG"
                        ,CAST("COST_VARIANCE_POS" AS float) AS "COST_VARIANCE_POS"
                        ,CAST("COST_VARIANCE_NEG" AS float) AS "COST_VARIANCE_NEG"
                        ,CAST("NUMBER_OF_SKUS" AS float) AS "NUMBER_OF_SKUS"
                        ,CAST("DYNAMIC_TAG_ENTRY_FLAG" AS float) AS "DYNAMIC_TAG_ENTRY_FLAG"
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
                        ,CAST("ATTRIBUTE_CATEGORY" AS varchar(1000) ) AS "ATTRIBUTE_CATEGORY"
                        ,CAST("EXCLUDE_ZERO_BALANCE" AS varchar(100) ) AS "EXCLUDE_ZERO_BALANCE"
                        ,CAST("EXCLUDE_NEGATIVE_BALANCE" AS varchar(100) ) AS "EXCLUDE_NEGATIVE_BALANCE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("PHYSICAL_INVENTORY_ID"AS NVARCHAR(MAX)),'NA')
                            , COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("PHYSICAL_INVENTORY_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_INVENTORY_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_ADJUSTMENT_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TOTAL_ADJUSTMENT_VALUE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("FREEZE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_INVENTORY_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_REQUIRED"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ALL_SUBINVENTORIES_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NEXT_TAG_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAG_NUMBER_INCREMENTS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DEFAULT_GL_ADJUST_ACCOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_TOLERANCE_POS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_TOLERANCE_NEG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_VARIANCE_POS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_VARIANCE_NEG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("NUMBER_OF_SKUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DYNAMIC_TAG_ENTRY_FLAG"AS NVARCHAR(MAX)),'NA')
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
                            ,COALESCE(CAST("ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCLUDE_ZERO_BALANCE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("EXCLUDE_NEGATIVE_BALANCE"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_MTL_PHYSICAL_INVENTORIES"
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
