

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_AR_CUSTOMERS_ALL_V]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        11/03/2022 4:26:18 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_AR_CUSTOMERS_ALL_V";
    
    Source                                Destination                          
    ----------------------------------    ----------------------------------- 
    STG"."STG_EBS_AR_CUSTOMERS_ALL_V"    "HSTG"."HSTG_EBS_AR_CUSTOMERS_ALL_V" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-11    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_AR_CUSTOMERS_ALL_V"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_AR_CUSTOMERS_ALL_V"
                (
                    "CUSTOMER_ID"
                    ,"CUSTOMER_NAME"
                    ,"CUSTOMER_NUMBER"
                    ,"CUSTOMER_KEY"
                    ,"STATUS"
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"CUSTOMER_PROSPECT_CODE"
                    ,"CUSTOMER_CATEGORY_CODE"
                    ,"CUSTOMER_CLASS_CODE"
                    ,"CUSTOMER_TYPE"
                    ,"PRIMARY_SALESREP_ID"
                    ,"SIC_CODE"
                    ,"TAX_REFERENCE"
                    ,"TAX_CODE"
                    ,"FOB_POINT"
                    ,"SHIP_VIA"
                    ,"GSA_INDICATOR"
                    ,"SHIP_PARTIAL"
                    ,"TAXPAYER_ID"
                    ,"PRICE_LIST_ID"
                    ,"FREIGHT_TERM"
                    ,"ORDER_TYPE_ID"
                    ,"SALES_CHANNEL_CODE"
                    ,"WAREHOUSE_ID"
                    ,"MISSION_STATEMENT"
                    ,"NUM_OF_EMPLOYEES"
                    ,"POTENTIAL_REVENUE_CURR_FY"
                    ,"POTENTIAL_REVENUE_NEXT_FY"
                    ,"FISCAL_YEAREND_MONTH"
                    ,"YEAR_ESTABLISHED"
                    ,"ANALYSIS_FY"
                    ,"COMPETITOR_FLAG"
                    ,"REFERENCE_USE_FLAG"
                    ,"THIRD_PARTY_FLAG"
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
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"CUSTOMER_NAME_PHONETIC"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"ACCOUNT_DESCRIPTION"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "CUSTOMER_ID"
                    ,"CUSTOMER_NAME"
                    ,"CUSTOMER_NUMBER"
                    ,"CUSTOMER_KEY"
                    ,"STATUS"
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"CUSTOMER_PROSPECT_CODE"
                    ,"CUSTOMER_CATEGORY_CODE"
                    ,"CUSTOMER_CLASS_CODE"
                    ,"CUSTOMER_TYPE"
                    ,"PRIMARY_SALESREP_ID"
                    ,"SIC_CODE"
                    ,"TAX_REFERENCE"
                    ,"TAX_CODE"
                    ,"FOB_POINT"
                    ,"SHIP_VIA"
                    ,"GSA_INDICATOR"
                    ,"SHIP_PARTIAL"
                    ,"TAXPAYER_ID"
                    ,"PRICE_LIST_ID"
                    ,"FREIGHT_TERM"
                    ,"ORDER_TYPE_ID"
                    ,"SALES_CHANNEL_CODE"
                    ,"WAREHOUSE_ID"
                    ,"MISSION_STATEMENT"
                    ,"NUM_OF_EMPLOYEES"
                    ,"POTENTIAL_REVENUE_CURR_FY"
                    ,"POTENTIAL_REVENUE_NEXT_FY"
                    ,"FISCAL_YEAREND_MONTH"
                    ,"YEAR_ESTABLISHED"
                    ,"ANALYSIS_FY"
                    ,"COMPETITOR_FLAG"
                    ,"REFERENCE_USE_FLAG"
                    ,"THIRD_PARTY_FLAG"
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
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"CUSTOMER_NAME_PHONETIC"
                    ,"TAX_HEADER_LEVEL_FLAG"
                    ,"TAX_ROUNDING_RULE"
                    ,"ACCOUNT_DESCRIPTION"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_AR_CUSTOMERS_ALL_V" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_AR_CUSTOMERS_ALL_V" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_AR_CUSTOMERS_ALL_V" H					Join "STG"."STG_EBS_AR_CUSTOMERS_ALL_V" S						On H.CUSTOMER_ID= S.CUSTOMER_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
