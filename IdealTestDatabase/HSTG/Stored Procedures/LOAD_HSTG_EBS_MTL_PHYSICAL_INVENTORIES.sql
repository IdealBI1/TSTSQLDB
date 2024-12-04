

CREATE PROCEDURE "HSTG"."LOAD_HSTG_EBS_MTL_PHYSICAL_INVENTORIES"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:48 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_PHYSICAL_INVENTORIES";
    
    Source                                      Destination                                
    ----------------------------------------    ----------------------------------------- 
    STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES"    "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORIES" 
    
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
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORIES"
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
                    ,"META_RECORD_KEY"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_EXPIRY_DATETIME"
                    ,"META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,"META_CURRENT_RECORD_INDICATOR"
                    ,"META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                SELECT 
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
                    ,"META_RECORD_KEY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                    ,'99991231 23:59:59' AS "META_EXPIRY_DATETIME"
                    ,'UPSERT' AS "META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,'Y' AS "META_CURRENT_RECORD_INDICATOR"
                    ,'N' AS "META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                FROM "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORIES" H WHERE H.META_CURRENT_RECORD_INDICATOR = 'Y' AND META_DELETE_INDICATOR = 'N' AND H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)



            /* Step 3:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE H  SET META_CURRENT_RECORD_INDICATOR='N'  , META_EXPIRY_DATETIME=CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) 
                FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORIES" H
                WHERE "META_DELETE_INDICATOR" = 'N' AND EXISTS (SELECT 1 FROM "STG"."STG_EBS_MTL_PHYSICAL_INVENTORIES" S WHERE H.META_RECORD_CHECKSUM != S.META_RECORD_CHECKSUM 
                    AND H.META_RECORD_KEY = S.META_RECORD_KEY
                )


            TRUNCATE TABLE "LND"."LND_EBS_MTL_PHYSICAL_INVENTORIES"
            END
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
