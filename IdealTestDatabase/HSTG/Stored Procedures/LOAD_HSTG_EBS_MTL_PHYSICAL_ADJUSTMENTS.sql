

CREATE PROCEDURE "HSTG"."LOAD_HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        21/12/2022 8:37:38 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS";
    
    Source                                      Destination                                
    ----------------------------------------    ----------------------------------------- 
    STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS"    "HSTG"."HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-21    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
                (
                    "ADJUSTMENT_ID"
                    ,"ORGANIZATION_ID"
                    ,"PHYSICAL_INVENTORY_ID"
                    ,"INVENTORY_ITEM_ID"
                    ,"SUBINVENTORY_NAME"
                    ,"SYSTEM_QUANTITY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"COUNT_QUANTITY"
                    ,"ADJUSTMENT_QUANTITY"
                    ,"REVISION"
                    ,"LOCATOR_ID"
                    ,"LOT_NUMBER"
                    ,"LOT_EXPIRATION_DATE"
                    ,"SERIAL_NUMBER"
                    ,"ACTUAL_COST"
                    ,"APPROVAL_STATUS"
                    ,"APPROVED_BY_EMPLOYEE_ID"
                    ,"AUTOMATIC_APPROVAL_CODE"
                    ,"GL_ADJUST_ACCOUNT"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"LOT_SERIAL_CONTROLS"
                    ,"TEMP_APPROVER"
                    ,"PARENT_LPN_ID"
                    ,"OUTERMOST_LPN_ID"
                    ,"COST_GROUP_ID"
                    ,"SECONDARY_SYSTEM_QTY"
                    ,"SECONDARY_COUNT_QTY"
                    ,"SECONDARY_ADJUSTMENT_QTY"
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
                    "ADJUSTMENT_ID"
                    ,"ORGANIZATION_ID"
                    ,"PHYSICAL_INVENTORY_ID"
                    ,"INVENTORY_ITEM_ID"
                    ,"SUBINVENTORY_NAME"
                    ,"SYSTEM_QUANTITY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"COUNT_QUANTITY"
                    ,"ADJUSTMENT_QUANTITY"
                    ,"REVISION"
                    ,"LOCATOR_ID"
                    ,"LOT_NUMBER"
                    ,"LOT_EXPIRATION_DATE"
                    ,"SERIAL_NUMBER"
                    ,"ACTUAL_COST"
                    ,"APPROVAL_STATUS"
                    ,"APPROVED_BY_EMPLOYEE_ID"
                    ,"AUTOMATIC_APPROVAL_CODE"
                    ,"GL_ADJUST_ACCOUNT"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"LOT_SERIAL_CONTROLS"
                    ,"TEMP_APPROVER"
                    ,"PARENT_LPN_ID"
                    ,"OUTERMOST_LPN_ID"
                    ,"COST_GROUP_ID"
                    ,"SECONDARY_SYSTEM_QTY"
                    ,"SECONDARY_COUNT_QTY"
                    ,"SECONDARY_ADJUSTMENT_QTY"
                    ,"META_RECORD_KEY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                    ,'99991231 23:59:59' AS "META_EXPIRY_DATETIME"
                    ,'UPSERT' AS "META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,'Y' AS "META_CURRENT_RECORD_INDICATOR"
                    ,'N' AS "META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                FROM "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS" H WHERE H.META_CURRENT_RECORD_INDICATOR = 'Y' AND META_DELETE_INDICATOR = 'N' AND H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)



            /* Step 3:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE H  SET META_CURRENT_RECORD_INDICATOR='N'  , META_EXPIRY_DATETIME=CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) 
                FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS" H
                WHERE "META_DELETE_INDICATOR" = 'N' AND EXISTS (SELECT 1 FROM "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS" S WHERE H.META_RECORD_CHECKSUM != S.META_RECORD_CHECKSUM 
                    AND H.META_RECORD_KEY = S.META_RECORD_KEY
                )


            TRUNCATE TABLE "LND"."LND_EBS_MTL_PHYSICAL_ADJUSTMENTS"
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
