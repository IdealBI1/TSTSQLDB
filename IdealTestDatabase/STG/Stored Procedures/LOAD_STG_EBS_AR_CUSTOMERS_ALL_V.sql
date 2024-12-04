

CREATE PROCEDURE [STG].[LOAD_STG_EBS_AR_CUSTOMERS_ALL_V]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        11/03/2022 4:26:17 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_AR_CUSTOMERS_ALL_V";
    
    
    Source                                Destination                        
    ----------------------------------    ---------------------------------- 
    LND"."LND_EBS_AR_CUSTOMERS_ALL_V"    "STG"."STG_EBS_AR_CUSTOMERS_ALL_V" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_AR_CUSTOMERS_ALL_V";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_AR_CUSTOMERS_ALL_V"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUSTOMER_ID" AS float) AS "CUSTOMER_ID"
                        ,CAST("CUSTOMER_NAME" AS varchar(1000) ) AS "CUSTOMER_NAME"
                        ,CAST("CUSTOMER_NUMBER" AS varchar(100) ) AS "CUSTOMER_NUMBER"
                        ,CAST("CUSTOMER_KEY" AS varchar(1000) ) AS "CUSTOMER_KEY"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("ORIG_SYSTEM_REFERENCE" AS varchar(1000) ) AS "ORIG_SYSTEM_REFERENCE"
                        ,CAST("CUSTOMER_PROSPECT_CODE" AS char(100) ) AS "CUSTOMER_PROSPECT_CODE"
                        ,CAST("CUSTOMER_CATEGORY_CODE" AS varchar(100) ) AS "CUSTOMER_CATEGORY_CODE"
                        ,CAST("CUSTOMER_CLASS_CODE" AS varchar(100) ) AS "CUSTOMER_CLASS_CODE"
                        ,CAST("CUSTOMER_TYPE" AS varchar(100) ) AS "CUSTOMER_TYPE"
                        ,CAST("PRIMARY_SALESREP_ID" AS float) AS "PRIMARY_SALESREP_ID"
                        ,CAST("SIC_CODE" AS varchar(100) ) AS "SIC_CODE"
                        ,CAST("TAX_REFERENCE" AS varchar(1000) ) AS "TAX_REFERENCE"
                        ,CAST("TAX_CODE" AS varchar(1000) ) AS "TAX_CODE"
                        ,CAST("FOB_POINT" AS varchar(100) ) AS "FOB_POINT"
                        ,CAST("SHIP_VIA" AS varchar(100) ) AS "SHIP_VIA"
                        ,CAST("GSA_INDICATOR" AS varchar(100) ) AS "GSA_INDICATOR"
                        ,CAST("SHIP_PARTIAL" AS varchar(100) ) AS "SHIP_PARTIAL"
                        ,CAST("TAXPAYER_ID" AS varchar(100) ) AS "TAXPAYER_ID"
                        ,CAST("PRICE_LIST_ID" AS float) AS "PRICE_LIST_ID"
                        ,CAST("FREIGHT_TERM" AS varchar(100) ) AS "FREIGHT_TERM"
                        ,CAST("ORDER_TYPE_ID" AS float) AS "ORDER_TYPE_ID"
                        ,CAST("SALES_CHANNEL_CODE" AS varchar(100) ) AS "SALES_CHANNEL_CODE"
                        ,CAST("WAREHOUSE_ID" AS float) AS "WAREHOUSE_ID"
                        ,CAST("MISSION_STATEMENT" AS varchar(8000) ) AS "MISSION_STATEMENT"
                        ,CAST("NUM_OF_EMPLOYEES" AS float) AS "NUM_OF_EMPLOYEES"
                        ,CAST("POTENTIAL_REVENUE_CURR_FY" AS float) AS "POTENTIAL_REVENUE_CURR_FY"
                        ,CAST("POTENTIAL_REVENUE_NEXT_FY" AS float) AS "POTENTIAL_REVENUE_NEXT_FY"
                        ,CAST("FISCAL_YEAREND_MONTH" AS varchar(100) ) AS "FISCAL_YEAREND_MONTH"
                        ,CAST("YEAR_ESTABLISHED" AS float) AS "YEAR_ESTABLISHED"
                        ,CAST("ANALYSIS_FY" AS varchar(100) ) AS "ANALYSIS_FY"
                        ,CAST("COMPETITOR_FLAG" AS varchar(100) ) AS "COMPETITOR_FLAG"
                        ,CAST("REFERENCE_USE_FLAG" AS varchar(100) ) AS "REFERENCE_USE_FLAG"
                        ,CAST("THIRD_PARTY_FLAG" AS varchar(100) ) AS "THIRD_PARTY_FLAG"
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
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CUSTOMER_NAME_PHONETIC" AS varchar(1000) ) AS "CUSTOMER_NAME_PHONETIC"
                        ,CAST("TAX_HEADER_LEVEL_FLAG" AS varchar(100) ) AS "TAX_HEADER_LEVEL_FLAG"
                        ,CAST("TAX_ROUNDING_RULE" AS varchar(100) ) AS "TAX_ROUNDING_RULE"
                        ,CAST("ACCOUNT_DESCRIPTION" AS varchar(1000) ) AS "ACCOUNT_DESCRIPTION"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CUSTOMER_ID"
                            , "CUSTOMER_NAME"
                            , "CUSTOMER_NUMBER"
                            , "CUSTOMER_KEY"
                            , "STATUS"
                            , "ORIG_SYSTEM_REFERENCE"
                            , "CUSTOMER_PROSPECT_CODE"
                            , "CUSTOMER_CATEGORY_CODE"
                            , "CUSTOMER_CLASS_CODE"
                            , "CUSTOMER_TYPE"
                            , "PRIMARY_SALESREP_ID"
                            , "SIC_CODE"
                            , "TAX_REFERENCE"
                            , "TAX_CODE"
                            , "FOB_POINT"
                            , "SHIP_VIA"
                            , "GSA_INDICATOR"
                            , "SHIP_PARTIAL"
                            , "TAXPAYER_ID"
                            , "PRICE_LIST_ID"
                            , "FREIGHT_TERM"
                            , "ORDER_TYPE_ID"
                            , "SALES_CHANNEL_CODE"
                            , "WAREHOUSE_ID"
                            , "MISSION_STATEMENT"
                            , "NUM_OF_EMPLOYEES"
                            , "POTENTIAL_REVENUE_CURR_FY"
                            , "POTENTIAL_REVENUE_NEXT_FY"
                            , "FISCAL_YEAREND_MONTH"
                            , "YEAR_ESTABLISHED"
                            , "ANALYSIS_FY"
                            , "COMPETITOR_FLAG"
                            , "REFERENCE_USE_FLAG"
                            , "THIRD_PARTY_FLAG"
                            , "ATTRIBUTE_CATEGORY"
                            , "ATTRIBUTE1"
                            , "ATTRIBUTE2"
                            , "ATTRIBUTE3"
                            , "ATTRIBUTE4"
                            , "ATTRIBUTE5"
                            , "ATTRIBUTE6"
                            , "ATTRIBUTE7"
                            , "ATTRIBUTE8"
                            , "ATTRIBUTE9"
                            , "ATTRIBUTE10"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATE_LOGIN"
                            , "CREATED_BY"
                            , "CREATION_DATE"
                            , "CUSTOMER_NAME_PHONETIC"
                            , "TAX_HEADER_LEVEL_FLAG"
                            , "TAX_ROUNDING_RULE"
                            , "ACCOUNT_DESCRIPTION"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_AR_CUSTOMERS_ALL_V"
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
