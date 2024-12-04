

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_RA_BATCH_SOURCES_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:38 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_RA_BATCH_SOURCES_ALL";
    
    Source                                  Destination                            
    ------------------------------------    ------------------------------------- 
    STG"."STG_EBS_RA_BATCH_SOURCES_ALL"    "HSTG"."HSTG_EBS_RA_BATCH_SOURCES_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_RA_BATCH_SOURCES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_RA_BATCH_SOURCES_ALL"
                (
                    "BATCH_SOURCE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"NAME"
                    ,"ORG_ID"
                    ,"DESCRIPTION"
                    ,"STATUS"
                    ,"LAST_BATCH_NUM"
                    ,"DEFAULT_INV_TRX_TYPE"
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
                    ,"ACCOUNTING_FLEXFIELD_RULE"
                    ,"ACCOUNTING_RULE_RULE"
                    ,"AGREEMENT_RULE"
                    ,"AUTO_BATCH_NUMBERING_FLAG"
                    ,"AUTO_TRX_NUMBERING_FLAG"
                    ,"BATCH_SOURCE_TYPE"
                    ,"BILL_ADDRESS_RULE"
                    ,"BILL_CONTACT_RULE"
                    ,"BILL_CUSTOMER_RULE"
                    ,"CREATE_CLEARING_FLAG"
                    ,"CUST_TRX_TYPE_RULE"
                    ,"DERIVE_DATE_FLAG"
                    ,"END_DATE"
                    ,"FOB_POINT_RULE"
                    ,"GL_DATE_PERIOD_RULE"
                    ,"INVALID_LINES_RULE"
                    ,"INVALID_TAX_RATE_RULE"
                    ,"INVENTORY_ITEM_RULE"
                    ,"INVOICING_RULE_RULE"
                    ,"MEMO_REASON_RULE"
                    ,"REV_ACC_ALLOCATION_RULE"
                    ,"SALESPERSON_RULE"
                    ,"SALES_CREDIT_RULE"
                    ,"SALES_CREDIT_TYPE_RULE"
                    ,"SALES_TERRITORY_RULE"
                    ,"SHIP_ADDRESS_RULE"
                    ,"SHIP_CONTACT_RULE"
                    ,"SHIP_CUSTOMER_RULE"
                    ,"SHIP_VIA_RULE"
                    ,"SOLD_CUSTOMER_RULE"
                    ,"START_DATE"
                    ,"TERM_RULE"
                    ,"UNIT_OF_MEASURE_RULE"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"CUSTOMER_BANK_ACCOUNT_RULE"
                    ,"MEMO_LINE_RULE"
                    ,"RECEIPT_METHOD_RULE"
                    ,"RELATED_DOCUMENT_RULE"
                    ,"ALLOW_SALES_CREDIT_FLAG"
                    ,"GROUPING_RULE_ID"
                    ,"CREDIT_MEMO_BATCH_SOURCE_ID"
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
                    ,"COPY_DOC_NUMBER_FLAG"
                    ,"DEFAULT_REFERENCE"
                    ,"COPY_INV_TIDFF_TO_CM_FLAG"
                    ,"RECEIPT_HANDLING_OPTION"
                    ,"ALLOW_DUPLICATE_TRX_NUM_FLAG"
                    ,"LEGAL_ENTITY_ID"
                    ,"GEN_LINE_LEVEL_BAL_FLAG"
                    ,"PAYMENT_DET_DEF_HIERARCHY"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "BATCH_SOURCE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"NAME"
                    ,"ORG_ID"
                    ,"DESCRIPTION"
                    ,"STATUS"
                    ,"LAST_BATCH_NUM"
                    ,"DEFAULT_INV_TRX_TYPE"
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
                    ,"ACCOUNTING_FLEXFIELD_RULE"
                    ,"ACCOUNTING_RULE_RULE"
                    ,"AGREEMENT_RULE"
                    ,"AUTO_BATCH_NUMBERING_FLAG"
                    ,"AUTO_TRX_NUMBERING_FLAG"
                    ,"BATCH_SOURCE_TYPE"
                    ,"BILL_ADDRESS_RULE"
                    ,"BILL_CONTACT_RULE"
                    ,"BILL_CUSTOMER_RULE"
                    ,"CREATE_CLEARING_FLAG"
                    ,"CUST_TRX_TYPE_RULE"
                    ,"DERIVE_DATE_FLAG"
                    ,"END_DATE"
                    ,"FOB_POINT_RULE"
                    ,"GL_DATE_PERIOD_RULE"
                    ,"INVALID_LINES_RULE"
                    ,"INVALID_TAX_RATE_RULE"
                    ,"INVENTORY_ITEM_RULE"
                    ,"INVOICING_RULE_RULE"
                    ,"MEMO_REASON_RULE"
                    ,"REV_ACC_ALLOCATION_RULE"
                    ,"SALESPERSON_RULE"
                    ,"SALES_CREDIT_RULE"
                    ,"SALES_CREDIT_TYPE_RULE"
                    ,"SALES_TERRITORY_RULE"
                    ,"SHIP_ADDRESS_RULE"
                    ,"SHIP_CONTACT_RULE"
                    ,"SHIP_CUSTOMER_RULE"
                    ,"SHIP_VIA_RULE"
                    ,"SOLD_CUSTOMER_RULE"
                    ,"START_DATE"
                    ,"TERM_RULE"
                    ,"UNIT_OF_MEASURE_RULE"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"CUSTOMER_BANK_ACCOUNT_RULE"
                    ,"MEMO_LINE_RULE"
                    ,"RECEIPT_METHOD_RULE"
                    ,"RELATED_DOCUMENT_RULE"
                    ,"ALLOW_SALES_CREDIT_FLAG"
                    ,"GROUPING_RULE_ID"
                    ,"CREDIT_MEMO_BATCH_SOURCE_ID"
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
                    ,"COPY_DOC_NUMBER_FLAG"
                    ,"DEFAULT_REFERENCE"
                    ,"COPY_INV_TIDFF_TO_CM_FLAG"
                    ,"RECEIPT_HANDLING_OPTION"
                    ,"ALLOW_DUPLICATE_TRX_NUM_FLAG"
                    ,"LEGAL_ENTITY_ID"
                    ,"GEN_LINE_LEVEL_BAL_FLAG"
                    ,"PAYMENT_DET_DEF_HIERARCHY"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_RA_BATCH_SOURCES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_RA_BATCH_SOURCES_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_EBS_RA_BATCH_SOURCES_ALL" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N' AND NOT EXISTS (SELECT 1 FROM "STG"."STG_EBS_RA_BATCH_SOURCES_ALL" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
            
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
