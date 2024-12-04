

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HZ_CUST_ACCOUNTS_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        10/03/2022 5:31:05 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HZ_CUST_ACCOUNTS_ALL";
    
    Source                                  Destination                            
    ------------------------------------    ------------------------------------- 
    STG"."STG_EBS_HZ_CUST_ACCOUNTS_ALL"    "HSTG"."HSTG_EBS_HZ_CUST_ACCOUNTS_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-10    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HZ_CUST_ACCOUNTS_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HZ_CUST_ACCOUNTS_ALL"
                (
                    "CUST_ACCOUNT_ID"
                    ,"PARTY_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"ACCOUNT_NUMBER"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"WH_UPDATE_DATE"
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
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
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
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"STATUS"
                    ,"CUSTOMER_TYPE"
                    ,"CUSTOMER_CLASS_CODE"
                    ,"PRIMARY_SALESREP_ID"
                    ,"SALES_CHANNEL_CODE"
                    ,"ORDER_TYPE_ID"
                    ,"PRICE_LIST_ID"
                    ,"SUBCATEGORY_CODE"
                    ,"TAX_CODE"
                    ,"FOB_POINT"
                    ,"FREIGHT_TERM"
                    ,"SHIP_PARTIAL"
                    ,"SHIP_VIA"
                    ,"WAREHOUSE_ID"
                    ,"PAYMENT_TERM_ID"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"COTERMINATE_DAY_MONTH"
                    ,"PRIMARY_SPECIALIST_ID"
                    ,"SECONDARY_SPECIALIST_ID"
                    ,"ACCOUNT_LIABLE_FLAG"
                    ,"RESTRICTION_LIMIT_AMOUNT"
                    ,"CURRENT_BALANCE"
                    ,"PASSWORD_TEXT"
                    ,"HIGH_PRIORITY_INDICATOR"
                    ,"ACCOUNT_ESTABLISHED_DATE"
                    ,"ACCOUNT_TERMINATION_DATE"
                    ,"ACCOUNT_ACTIVATION_DATE"
                    ,"CREDIT_CLASSIFICATION_CODE"
                    ,"DEPARTMENT"
                    ,"MAJOR_ACCOUNT_NUMBER"
                    ,"HOTWATCH_SERVICE_FLAG"
                    ,"HOTWATCH_SVC_BAL_IND"
                    ,"HELD_BILL_EXPIRATION_DATE"
                    ,"HOLD_BILL_FLAG"
                    ,"HIGH_PRIORITY_REMARKS"
                    ,"PO_EFFECTIVE_DATE"
                    ,"PO_EXPIRATION_DATE"
                    ,"REALTIME_RATE_FLAG"
                    ,"SINGLE_USER_FLAG"
                    ,"WATCH_ACCOUNT_FLAG"
                    ,"WATCH_BALANCE_INDICATOR"
                    ,"GEO_CODE"
                    ,"ACCT_LIFE_CYCLE_STATUS"
                    ,"ACCOUNT_NAME"
                    ,"DEPOSIT_REFUND_METHOD"
                    ,"DORMANT_ACCOUNT_FLAG"
                    ,"NPA_NUMBER"
                    ,"PIN_NUMBER"
                    ,"SUSPENSION_DATE"
                    ,"WRITE_OFF_ADJUSTMENT_AMOUNT"
                    ,"WRITE_OFF_PAYMENT_AMOUNT"
                    ,"WRITE_OFF_AMOUNT"
                    ,"SOURCE_CODE"
                    ,"COMPETITOR_TYPE"
                    ,"COMMENTS"
                    ,"DATES_NEGATIVE_TOLERANCE"
                    ,"DATES_POSITIVE_TOLERANCE"
                    ,"DATE_TYPE_PREFERENCE"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"ITEM_CROSS_REF_PREF"
                    ,"SHIP_SETS_INCLUDE_LINES_FLAG"
                    ,"ARRIVALSETS_INCLUDE_LINES_FLAG"
                    ,"SCHED_DATE_PUSH_FLAG"
                    ,"INVOICE_QUANTITY_RULE"
                    ,"PRICING_EVENT"
                    ,"ACCOUNT_REPLICATION_KEY"
                    ,"STATUS_UPDATE_DATE"
                    ,"AUTOPAY_FLAG"
                    ,"NOTIFY_FLAG"
                    ,"LAST_BATCH_ID"
                    ,"ORG_ID"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"SELLING_PARTY_ID"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "CUST_ACCOUNT_ID"
                    ,"PARTY_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"ACCOUNT_NUMBER"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"WH_UPDATE_DATE"
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
                    ,"ATTRIBUTE16"
                    ,"ATTRIBUTE17"
                    ,"ATTRIBUTE18"
                    ,"ATTRIBUTE19"
                    ,"ATTRIBUTE20"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
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
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"STATUS"
                    ,"CUSTOMER_TYPE"
                    ,"CUSTOMER_CLASS_CODE"
                    ,"PRIMARY_SALESREP_ID"
                    ,"SALES_CHANNEL_CODE"
                    ,"ORDER_TYPE_ID"
                    ,"PRICE_LIST_ID"
                    ,"SUBCATEGORY_CODE"
                    ,"TAX_CODE"
                    ,"FOB_POINT"
                    ,"FREIGHT_TERM"
                    ,"SHIP_PARTIAL"
                    ,"SHIP_VIA"
                    ,"WAREHOUSE_ID"
                    ,"PAYMENT_TERM_ID"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"COTERMINATE_DAY_MONTH"
                    ,"PRIMARY_SPECIALIST_ID"
                    ,"SECONDARY_SPECIALIST_ID"
                    ,"ACCOUNT_LIABLE_FLAG"
                    ,"RESTRICTION_LIMIT_AMOUNT"
                    ,"CURRENT_BALANCE"
                    ,"PASSWORD_TEXT"
                    ,"HIGH_PRIORITY_INDICATOR"
                    ,"ACCOUNT_ESTABLISHED_DATE"
                    ,"ACCOUNT_TERMINATION_DATE"
                    ,"ACCOUNT_ACTIVATION_DATE"
                    ,"CREDIT_CLASSIFICATION_CODE"
                    ,"DEPARTMENT"
                    ,"MAJOR_ACCOUNT_NUMBER"
                    ,"HOTWATCH_SERVICE_FLAG"
                    ,"HOTWATCH_SVC_BAL_IND"
                    ,"HELD_BILL_EXPIRATION_DATE"
                    ,"HOLD_BILL_FLAG"
                    ,"HIGH_PRIORITY_REMARKS"
                    ,"PO_EFFECTIVE_DATE"
                    ,"PO_EXPIRATION_DATE"
                    ,"REALTIME_RATE_FLAG"
                    ,"SINGLE_USER_FLAG"
                    ,"WATCH_ACCOUNT_FLAG"
                    ,"WATCH_BALANCE_INDICATOR"
                    ,"GEO_CODE"
                    ,"ACCT_LIFE_CYCLE_STATUS"
                    ,"ACCOUNT_NAME"
                    ,"DEPOSIT_REFUND_METHOD"
                    ,"DORMANT_ACCOUNT_FLAG"
                    ,"NPA_NUMBER"
                    ,"PIN_NUMBER"
                    ,"SUSPENSION_DATE"
                    ,"WRITE_OFF_ADJUSTMENT_AMOUNT"
                    ,"WRITE_OFF_PAYMENT_AMOUNT"
                    ,"WRITE_OFF_AMOUNT"
                    ,"SOURCE_CODE"
                    ,"COMPETITOR_TYPE"
                    ,"COMMENTS"
                    ,"DATES_NEGATIVE_TOLERANCE"
                    ,"DATES_POSITIVE_TOLERANCE"
                    ,"DATE_TYPE_PREFERENCE"
                    ,"OVER_SHIPMENT_TOLERANCE"
                    ,"UNDER_SHIPMENT_TOLERANCE"
                    ,"OVER_RETURN_TOLERANCE"
                    ,"UNDER_RETURN_TOLERANCE"
                    ,"ITEM_CROSS_REF_PREF"
                    ,"SHIP_SETS_INCLUDE_LINES_FLAG"
                    ,"ARRIVALSETS_INCLUDE_LINES_FLAG"
                    ,"SCHED_DATE_PUSH_FLAG"
                    ,"INVOICE_QUANTITY_RULE"
                    ,"PRICING_EVENT"
                    ,"ACCOUNT_REPLICATION_KEY"
                    ,"STATUS_UPDATE_DATE"
                    ,"AUTOPAY_FLAG"
                    ,"NOTIFY_FLAG"
                    ,"LAST_BATCH_ID"
                    ,"ORG_ID"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"SELLING_PARTY_ID"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HZ_CUST_ACCOUNTS_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HZ_CUST_ACCOUNTS_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HZ_CUST_ACCOUNTS_ALL" H					Join "STG"."STG_EBS_HZ_CUST_ACCOUNTS_ALL" S						On H.CUST_ACCOUNT_ID= S.CUST_ACCOUNT_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
