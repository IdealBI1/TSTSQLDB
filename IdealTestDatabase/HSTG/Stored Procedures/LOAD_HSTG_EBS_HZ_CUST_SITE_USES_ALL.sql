

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HZ_CUST_SITE_USES_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:58:58 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HZ_CUST_SITE_USES_ALL";
    
    Source                                   Destination                             
    -------------------------------------    -------------------------------------- 
    STG"."STG_EBS_HZ_CUST_SITE_USES_ALL"    "HSTG"."HSTG_EBS_HZ_CUST_SITE_USES_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HZ_CUST_SITE_USES_ALL"
                (
                    "SITE_USE_ID"
                    ,"CUST_ACCT_SITE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"SITE_USE_CODE"
                    ,"PRIMARY_FLAG"
                    ,"STATUS"
                    ,"LOCATION"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CONTACT_ID"
                    ,"BILL_TO_SITE_USE_ID"
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"SIC_CODE"
                    ,"PAYMENT_TERM_ID"
                    ,"GSA_INDICATOR"
                    ,"SHIP_PARTIAL"
                    ,"SHIP_VIA"
                    ,"FOB_POINT"
                    ,"ORDER_TYPE_ID"
                    ,"PRICE_LIST_ID"
                    ,"FREIGHT_TERM"
                    ,"WAREHOUSE_ID"
                    ,"TERRITORY_ID"
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
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"TAX_REFERENCE"
                    ,"SORT_PRIORITY"
                    ,"TAX_CODE"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"LAST_ACCRUE_CHARGE_DATE"
                    ,"SECOND_LAST_ACCRUE_CHARGE_DATE"
                    ,"LAST_UNACCRUE_CHARGE_DATE"
                    ,"SECOND_LAST_UNACCRUE_CHRG_DATE"
                    ,"DEMAND_CLASS_CODE"
                    ,"ORG_ID"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"WH_UPDATE_DATE"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"PRIMARY_SALESREP_ID"
                    ,"FINCHRG_RECEIVABLES_TRX_ID"
                    ,"DATES_NEGATIVE_TOLERANCE"
                    ,"DATES_POSITIVE_TOLERANCE"
                    ,"DATE_TYPE_PREFERENCE"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"ITEM_CROSS_REF_PREF"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"SHIP_SETS_INCLUDE_LINES_FLAG"
                    ,"ARRIVALSETS_INCLUDE_LINES_FLAG"
                    ,"SCHED_DATE_PUSH_FLAG"
                    ,"INVOICE_QUANTITY_RULE"
                    ,"PRICING_EVENT"
                    ,"GL_ID_REC"
                    ,"GL_ID_REV"
                    ,"GL_ID_TAX"
                    ,"GL_ID_FREIGHT"
                    ,"GL_ID_CLEARING"
                    ,"GL_ID_UNBILLED"
                    ,"GL_ID_UNEARNED"
                    ,"GL_ID_UNPAID_REC"
                    ,"GL_ID_REMITTANCE"
                    ,"GL_ID_FACTOR"
                    ,"TAX_CLASSIFICATION"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "SITE_USE_ID"
                    ,"CUST_ACCT_SITE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"SITE_USE_CODE"
                    ,"PRIMARY_FLAG"
                    ,"STATUS"
                    ,"LOCATION"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CONTACT_ID"
                    ,"BILL_TO_SITE_USE_ID"
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"SIC_CODE"
                    ,"PAYMENT_TERM_ID"
                    ,"GSA_INDICATOR"
                    ,"SHIP_PARTIAL"
                    ,"SHIP_VIA"
                    ,"FOB_POINT"
                    ,"ORDER_TYPE_ID"
                    ,"PRICE_LIST_ID"
                    ,"FREIGHT_TERM"
                    ,"WAREHOUSE_ID"
                    ,"TERRITORY_ID"
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
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"TAX_REFERENCE"
                    ,"SORT_PRIORITY"
                    ,"TAX_CODE"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"LAST_ACCRUE_CHARGE_DATE"
                    ,"SECOND_LAST_ACCRUE_CHARGE_DATE"
                    ,"LAST_UNACCRUE_CHARGE_DATE"
                    ,"SECOND_LAST_UNACCRUE_CHRG_DATE"
                    ,"DEMAND_CLASS_CODE"
                    ,"ORG_ID"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"WH_UPDATE_DATE"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE3"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE5"
                    ,"GLOBAL_ATTRIBUTE6"
                    ,"GLOBAL_ATTRIBUTE7"
                    ,"GLOBAL_ATTRIBUTE8"
                    ,"GLOBAL_ATTRIBUTE9"
                    ,"GLOBAL_ATTRIBUTE10"
                    ,"GLOBAL_ATTRIBUTE11"
                    ,"GLOBAL_ATTRIBUTE12"
                    ,"GLOBAL_ATTRIBUTE13"
                    ,"GLOBAL_ATTRIBUTE14"
                    ,"GLOBAL_ATTRIBUTE15"
                    ,"GLOBAL_ATTRIBUTE16"
                    ,"GLOBAL_ATTRIBUTE17"
                    ,"GLOBAL_ATTRIBUTE18"
                    ,"GLOBAL_ATTRIBUTE19"
                    ,"GLOBAL_ATTRIBUTE20"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"PRIMARY_SALESREP_ID"
                    ,"FINCHRG_RECEIVABLES_TRX_ID"
                    ,"DATES_NEGATIVE_TOLERANCE"
                    ,"DATES_POSITIVE_TOLERANCE"
                    ,"DATE_TYPE_PREFERENCE"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"ITEM_CROSS_REF_PREF"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"SHIP_SETS_INCLUDE_LINES_FLAG"
                    ,"ARRIVALSETS_INCLUDE_LINES_FLAG"
                    ,"SCHED_DATE_PUSH_FLAG"
                    ,"INVOICE_QUANTITY_RULE"
                    ,"PRICING_EVENT"
                    ,"GL_ID_REC"
                    ,"GL_ID_REV"
                    ,"GL_ID_TAX"
                    ,"GL_ID_FREIGHT"
                    ,"GL_ID_CLEARING"
                    ,"GL_ID_UNBILLED"
                    ,"GL_ID_UNEARNED"
                    ,"GL_ID_UNPAID_REC"
                    ,"GL_ID_REMITTANCE"
                    ,"GL_ID_FACTOR"
                    ,"TAX_CLASSIFICATION"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HZ_CUST_SITE_USES_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HZ_CUST_SITE_USES_ALL" H					Join "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL" S						On H.SITE_USE_ID= S.SITE_USE_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
