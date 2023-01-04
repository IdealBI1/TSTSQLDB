

CREATE PROCEDURE "STG"."LOAD_STG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        21/12/2022 8:37:37 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_MTL_PHYSICAL_ADJUSTMENTS";
    
    
    Source                                      Destination                              
    ----------------------------------------    ---------------------------------------- 
    LND"."LND_EBS_MTL_PHYSICAL_ADJUSTMENTS"    "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
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
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("ADJUSTMENT_ID" AS float) AS "ADJUSTMENT_ID"
                        ,CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("PHYSICAL_INVENTORY_ID" AS float) AS "PHYSICAL_INVENTORY_ID"
                        ,CAST("INVENTORY_ITEM_ID" AS float) AS "INVENTORY_ITEM_ID"
                        ,CAST("SUBINVENTORY_NAME" AS varchar(100) ) AS "SUBINVENTORY_NAME"
                        ,CAST("SYSTEM_QUANTITY" AS float) AS "SYSTEM_QUANTITY"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("COUNT_QUANTITY" AS float) AS "COUNT_QUANTITY"
                        ,CAST("ADJUSTMENT_QUANTITY" AS float) AS "ADJUSTMENT_QUANTITY"
                        ,CAST("REVISION" AS varchar(100) ) AS "REVISION"
                        ,CAST("LOCATOR_ID" AS float) AS "LOCATOR_ID"
                        ,CAST("LOT_NUMBER" AS varchar(1000) ) AS "LOT_NUMBER"
                        ,CAST("LOT_EXPIRATION_DATE" AS datetime2) AS "LOT_EXPIRATION_DATE"
                        ,CAST("SERIAL_NUMBER" AS varchar(100) ) AS "SERIAL_NUMBER"
                        ,CAST("ACTUAL_COST" AS float) AS "ACTUAL_COST"
                        ,CAST("APPROVAL_STATUS" AS float) AS "APPROVAL_STATUS"
                        ,CAST("APPROVED_BY_EMPLOYEE_ID" AS float) AS "APPROVED_BY_EMPLOYEE_ID"
                        ,CAST("AUTOMATIC_APPROVAL_CODE" AS float) AS "AUTOMATIC_APPROVAL_CODE"
                        ,CAST("GL_ADJUST_ACCOUNT" AS float) AS "GL_ADJUST_ACCOUNT"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE" AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("LOT_SERIAL_CONTROLS" AS varchar(100) ) AS "LOT_SERIAL_CONTROLS"
                        ,CAST("TEMP_APPROVER" AS float) AS "TEMP_APPROVER"
                        ,CAST("PARENT_LPN_ID" AS float) AS "PARENT_LPN_ID"
                        ,CAST("OUTERMOST_LPN_ID" AS float) AS "OUTERMOST_LPN_ID"
                        ,CAST("COST_GROUP_ID" AS float) AS "COST_GROUP_ID"
                        ,CAST("SECONDARY_SYSTEM_QTY" AS float) AS "SECONDARY_SYSTEM_QTY"
                        ,CAST("SECONDARY_COUNT_QTY" AS float) AS "SECONDARY_COUNT_QTY"
                        ,CAST("SECONDARY_ADJUSTMENT_QTY" AS float) AS "SECONDARY_ADJUSTMENT_QTY"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("ADJUSTMENT_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("ADJUSTMENT_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PHYSICAL_INVENTORY_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SUBINVENTORY_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SYSTEM_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COUNT_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ADJUSTMENT_QUANTITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REVISION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATOR_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_EXPIRATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SERIAL_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ACTUAL_COST"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVAL_STATUS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("APPROVED_BY_EMPLOYEE_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("AUTOMATIC_APPROVAL_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GL_ADJUST_ACCOUNT"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REQUEST_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_APPLICATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PROGRAM_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOT_SERIAL_CONTROLS"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TEMP_APPROVER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("PARENT_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OUTERMOST_LPN_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COST_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_SYSTEM_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_COUNT_QTY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SECONDARY_ADJUSTMENT_QTY"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_MTL_PHYSICAL_ADJUSTMENTS"
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
