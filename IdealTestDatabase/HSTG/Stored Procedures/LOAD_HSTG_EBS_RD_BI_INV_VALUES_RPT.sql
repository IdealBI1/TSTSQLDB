

CREATE PROCEDURE "HSTG"."LOAD_HSTG_EBS_RD_BI_INV_VALUES_RPT"
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        19/12/2022 5:19:18 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_RD_BI_INV_VALUES_RPT";
    
    Source                                  Destination                            
    ------------------------------------    ------------------------------------- 
    STG"."STG_EBS_RD_BI_INV_VALUES_RPT"    "HSTG"."HSTG_EBS_RD_BI_INV_VALUES_RPT" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-19    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_RD_BI_INV_VALUES_RPT"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_RD_BI_INV_VALUES_RPT"
                (
                    "DC"
                    ,"SUBINV_NAME"
                    ,"LOCATOR_CODE"
                    ,"ITEM_CODE"
                    ,"CATEGORY_CODE"
                    ,"STOCK_QTY"
                    ,"INTRANSIT_QTY"
                    ,"RECEIVING_QTY"
                    ,"STOCK_VALUE"
                    ,"INTRANSIT_VALUE"
                    ,"RECEIVING_VALUE"
                    ,"ITEM_COST"
                    ,"AS_OF_DATE"
                    ,"CREATION_DATE"
                    ,"TOTAL_QTY"
                    ,"UNRECEIVED_PO_QTY"
                    ,"BO_QTY"
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
                    "DC"
                    ,"SUBINV_NAME"
                    ,"LOCATOR_CODE"
                    ,"ITEM_CODE"
                    ,"CATEGORY_CODE"
                    ,"STOCK_QTY"
                    ,"INTRANSIT_QTY"
                    ,"RECEIVING_QTY"
                    ,"STOCK_VALUE"
                    ,"INTRANSIT_VALUE"
                    ,"RECEIVING_VALUE"
                    ,"ITEM_COST"
                    ,"AS_OF_DATE"
                    ,"CREATION_DATE"
                    ,"TOTAL_QTY"
                    ,"UNRECEIVED_PO_QTY"
                    ,"BO_QTY"
                    ,"META_RECORD_KEY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                    ,'99991231 23:59:59' AS "META_EXPIRY_DATETIME"
                    ,'UPSERT' AS "META_CDC_OPERATION"
                    ,"META_FILE_NAME"
                    ,'Y' AS "META_CURRENT_RECORD_INDICATOR"
                    ,'N' AS "META_DELETE_INDICATOR"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                FROM "STG"."STG_EBS_RD_BI_INV_VALUES_RPT" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_RD_BI_INV_VALUES_RPT" H WHERE H.META_CURRENT_RECORD_INDICATOR = 'Y' AND META_DELETE_INDICATOR = 'N' AND H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET META_CURRENT_RECORD_INDICATOR='N' , META_EXPIRY_DATETIME=CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2)
                FROM "HSTG"."HSTG_EBS_RD_BI_INV_VALUES_RPT" H
                WHERE "META_DELETE_INDICATOR" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_EBS_RD_BI_INV_VALUES_RPT" S WHERE H.META_RECORD_CHECKSUM = S.META_RECORD_CHECKSUM)
            
            

            TRUNCATE TABLE "LND"."LND_EBS_RD_BI_INV_VALUES_RPT"
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
