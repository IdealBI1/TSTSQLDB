﻿
CREATE PROCEDURE "STG"."LOAD_STG_EBS_HZ_CUST_SITE_USES_ALL"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:49 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_HZ_CUST_SITE_USES_ALL";
    
    
    Source                                   Destination                           
    -------------------------------------    ------------------------------------- 
    LND"."LND_EBS_HZ_CUST_SITE_USES_ALL"    "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-05    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HZ_CUST_SITE_USES_ALL"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SITE_USE_ID" AS float) AS "SITE_USE_ID"
                        ,CAST("CUST_ACCT_SITE_ID" AS float) AS "CUST_ACCT_SITE_ID"
                        ,CAST("LAST_UPDATE_DATE"  AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("CREATION_DATE"  AS datetime2) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("SITE_USE_CODE" AS varchar(100) ) AS "SITE_USE_CODE"
                        ,CAST("PRIMARY_FLAG" AS varchar(100) ) AS "PRIMARY_FLAG"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("LOCATION" AS varchar(100) ) AS "LOCATION"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CONTACT_ID" AS float) AS "CONTACT_ID"
                        ,CAST("BILL_TO_SITE_USE_ID" AS float) AS "BILL_TO_SITE_USE_ID"
                        ,CAST("ORIG_SYSTEM_REFERENCE" AS varchar(1000) ) AS "ORIG_SYSTEM_REFERENCE"
                        ,CAST("SIC_CODE" AS varchar(100) ) AS "SIC_CODE"
                        ,CAST("PAYMENT_TERM_ID" AS float) AS "PAYMENT_TERM_ID"
                        ,CAST("GSA_INDICATOR" AS varchar(100) ) AS "GSA_INDICATOR"
                        ,CAST("SHIP_PARTIAL" AS varchar(100) ) AS "SHIP_PARTIAL"
                        ,CAST("SHIP_VIA" AS varchar(100) ) AS "SHIP_VIA"
                        ,CAST("FOB_POINT" AS varchar(100) ) AS "FOB_POINT"
                        ,CAST("ORDER_TYPE_ID" AS float) AS "ORDER_TYPE_ID"
                        ,CAST("PRICE_LIST_ID" AS float) AS "PRICE_LIST_ID"
                        ,CAST("FREIGHT_TERM" AS varchar(100) ) AS "FREIGHT_TERM"
                        ,CAST("WAREHOUSE_ID" AS float) AS "WAREHOUSE_ID"
                        ,CAST("TERRITORY_ID" AS float) AS "TERRITORY_ID"
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
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,CAST("PROGRAM_UPDATE_DATE"  AS datetime2) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("TAX_REFERENCE" AS varchar(1000) ) AS "TAX_REFERENCE"
                        ,CAST("SORT_PRIORITY" AS float) AS "SORT_PRIORITY"
                        ,CAST("TAX_CODE" AS varchar(1000) ) AS "TAX_CODE"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,CAST("ATTRIBUTE16" AS varchar(1000) ) AS "ATTRIBUTE16"
                        ,CAST("ATTRIBUTE17" AS varchar(1000) ) AS "ATTRIBUTE17"
                        ,CAST("ATTRIBUTE18" AS varchar(1000) ) AS "ATTRIBUTE18"
                        ,CAST("ATTRIBUTE19" AS varchar(1000) ) AS "ATTRIBUTE19"
                        ,CAST("ATTRIBUTE20" AS varchar(1000) ) AS "ATTRIBUTE20"
                        ,CAST("ATTRIBUTE21" AS varchar(1000) ) AS "ATTRIBUTE21"
                        ,CAST("ATTRIBUTE22" AS varchar(1000) ) AS "ATTRIBUTE22"
                        ,CAST("ATTRIBUTE23" AS varchar(1000) ) AS "ATTRIBUTE23"
                        ,CAST("ATTRIBUTE24" AS varchar(1000) ) AS "ATTRIBUTE24"
                        ,CAST("ATTRIBUTE25" AS varchar(1000) ) AS "ATTRIBUTE25"
                        ,CAST("LAST_ACCRUE_CHARGE_DATE"  AS datetime2) AS "LAST_ACCRUE_CHARGE_DATE"
                        ,CAST("SECOND_LAST_ACCRUE_CHARGE_DATE"  AS datetime2) AS "SECOND_LAST_ACCRUE_CHARGE_DATE"
                        ,CAST("LAST_UNACCRUE_CHARGE_DATE"  AS datetime2) AS "LAST_UNACCRUE_CHARGE_DATE"
                        ,CAST("SECOND_LAST_UNACCRUE_CHRG_DATE"  AS datetime2) AS "SECOND_LAST_UNACCRUE_CHRG_DATE"
                        ,CAST("DEMAND_CLASS_CODE" AS varchar(100) ) AS "DEMAND_CLASS_CODE"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
                        ,CAST("TAX_HEADER_LEVEL_FLAG" AS varchar(100) ) AS "TAX_HEADER_LEVEL_FLAG"
                        ,CAST("TAX_ROUNDING_RULE" AS varchar(100) ) AS "TAX_ROUNDING_RULE"
                        ,CAST("WH_UPDATE_DATE"  AS datetime2) AS "WH_UPDATE_DATE"
                        ,CAST("GLOBAL_ATTRIBUTE1" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE1"
                        ,CAST("GLOBAL_ATTRIBUTE2" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE2"
                        ,CAST("GLOBAL_ATTRIBUTE3" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE3"
                        ,CAST("GLOBAL_ATTRIBUTE4" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE4"
                        ,CAST("GLOBAL_ATTRIBUTE5" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE5"
                        ,CAST("GLOBAL_ATTRIBUTE6" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE6"
                        ,CAST("GLOBAL_ATTRIBUTE7" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE7"
                        ,CAST("GLOBAL_ATTRIBUTE8" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE8"
                        ,CAST("GLOBAL_ATTRIBUTE9" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE9"
                        ,CAST("GLOBAL_ATTRIBUTE10" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE10"
                        ,CAST("GLOBAL_ATTRIBUTE11" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE11"
                        ,CAST("GLOBAL_ATTRIBUTE12" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE12"
                        ,CAST("GLOBAL_ATTRIBUTE13" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE13"
                        ,CAST("GLOBAL_ATTRIBUTE14" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE14"
                        ,CAST("GLOBAL_ATTRIBUTE15" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE15"
                        ,CAST("GLOBAL_ATTRIBUTE16" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE16"
                        ,CAST("GLOBAL_ATTRIBUTE17" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE17"
                        ,CAST("GLOBAL_ATTRIBUTE18" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE18"
                        ,CAST("GLOBAL_ATTRIBUTE19" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE19"
                        ,CAST("GLOBAL_ATTRIBUTE20" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE20"
                        ,CAST("GLOBAL_ATTRIBUTE_CATEGORY" AS varchar(100) ) AS "GLOBAL_ATTRIBUTE_CATEGORY"
                        ,CAST("PRIMARY_SALESREP_ID" AS float) AS "PRIMARY_SALESREP_ID"
                        ,CAST("FINCHRG_RECEIVABLES_TRX_ID" AS float) AS "FINCHRG_RECEIVABLES_TRX_ID"
                        ,CAST("DATES_NEGATIVE_TOLERANCE" AS float) AS "DATES_NEGATIVE_TOLERANCE"
                        ,CAST("DATES_POSITIVE_TOLERANCE" AS float) AS "DATES_POSITIVE_TOLERANCE"
                        ,CAST("DATE_TYPE_PREFERENCE" AS varchar(100) ) AS "DATE_TYPE_PREFERENCE"
                        ,CAST("OVER_SHIPMENT_TOLERANCE" AS float) AS "OVER_SHIPMENT_TOLERANCE"
                        ,CAST("UNDER_SHIPMENT_TOLERANCE" AS float) AS "UNDER_SHIPMENT_TOLERANCE"
                        ,CAST("ITEM_CROSS_REF_PREF" AS varchar(100) ) AS "ITEM_CROSS_REF_PREF"
                        ,CAST("OVER_RETURN_TOLERANCE" AS float) AS "OVER_RETURN_TOLERANCE"
                        ,CAST("UNDER_RETURN_TOLERANCE" AS float) AS "UNDER_RETURN_TOLERANCE"
                        ,CAST("SHIP_SETS_INCLUDE_LINES_FLAG" AS varchar(100) ) AS "SHIP_SETS_INCLUDE_LINES_FLAG"
                        ,CAST("ARRIVALSETS_INCLUDE_LINES_FLAG" AS varchar(100) ) AS "ARRIVALSETS_INCLUDE_LINES_FLAG"
                        ,CAST("SCHED_DATE_PUSH_FLAG" AS varchar(100) ) AS "SCHED_DATE_PUSH_FLAG"
                        ,CAST("INVOICE_QUANTITY_RULE" AS varchar(100) ) AS "INVOICE_QUANTITY_RULE"
                        ,CAST("PRICING_EVENT" AS varchar(100) ) AS "PRICING_EVENT"
                        ,CAST("GL_ID_REC" AS float) AS "GL_ID_REC"
                        ,CAST("GL_ID_REV" AS float) AS "GL_ID_REV"
                        ,CAST("GL_ID_TAX" AS float) AS "GL_ID_TAX"
                        ,CAST("GL_ID_FREIGHT" AS float) AS "GL_ID_FREIGHT"
                        ,CAST("GL_ID_CLEARING" AS float) AS "GL_ID_CLEARING"
                        ,CAST("GL_ID_UNBILLED" AS float) AS "GL_ID_UNBILLED"
                        ,CAST("GL_ID_UNEARNED" AS float) AS "GL_ID_UNEARNED"
                        ,CAST("GL_ID_UNPAID_REC" AS float) AS "GL_ID_UNPAID_REC"
                        ,CAST("GL_ID_REMITTANCE" AS float) AS "GL_ID_REMITTANCE"
                        ,CAST("GL_ID_FACTOR" AS float) AS "GL_ID_FACTOR"
                        ,CAST("TAX_CLASSIFICATION" AS varchar(100) ) AS "TAX_CLASSIFICATION"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("CREATED_BY_MODULE" AS varchar(1000) ) AS "CREATED_BY_MODULE"
                        ,CAST("APPLICATION_ID" AS float) AS "APPLICATION_ID"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "SITE_USE_ID"
                            , "CUST_ACCT_SITE_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "SITE_USE_CODE"
                            , "PRIMARY_FLAG"
                            , "STATUS"
                            , "LOCATION"
                            , "LAST_UPDATE_LOGIN"
                            , "CONTACT_ID"
                            , "BILL_TO_SITE_USE_ID"
                            , "ORIG_SYSTEM_REFERENCE"
                            , "SIC_CODE"
                            , "PAYMENT_TERM_ID"
                            , "GSA_INDICATOR"
                            , "SHIP_PARTIAL"
                            , "SHIP_VIA"
                            , "FOB_POINT"
                            , "ORDER_TYPE_ID"
                            , "PRICE_LIST_ID"
                            , "FREIGHT_TERM"
                            , "WAREHOUSE_ID"
                            , "TERRITORY_ID"
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
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "TAX_REFERENCE"
                            , "SORT_PRIORITY"
                            , "TAX_CODE"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "ATTRIBUTE16"
                            , "ATTRIBUTE17"
                            , "ATTRIBUTE18"
                            , "ATTRIBUTE19"
                            , "ATTRIBUTE20"
                            , "ATTRIBUTE21"
                            , "ATTRIBUTE22"
                            , "ATTRIBUTE23"
                            , "ATTRIBUTE24"
                            , "ATTRIBUTE25"
                            , "LAST_ACCRUE_CHARGE_DATE"
                            , "SECOND_LAST_ACCRUE_CHARGE_DATE"
                            , "LAST_UNACCRUE_CHARGE_DATE"
                            , "SECOND_LAST_UNACCRUE_CHRG_DATE"
                            , "DEMAND_CLASS_CODE"
                            , "ORG_ID"
                            , "TAX_HEADER_LEVEL_FLAG"
                            , "TAX_ROUNDING_RULE"
                            , "WH_UPDATE_DATE"
                            , "GLOBAL_ATTRIBUTE1"
                            , "GLOBAL_ATTRIBUTE2"
                            , "GLOBAL_ATTRIBUTE3"
                            , "GLOBAL_ATTRIBUTE4"
                            , "GLOBAL_ATTRIBUTE5"
                            , "GLOBAL_ATTRIBUTE6"
                            , "GLOBAL_ATTRIBUTE7"
                            , "GLOBAL_ATTRIBUTE8"
                            , "GLOBAL_ATTRIBUTE9"
                            , "GLOBAL_ATTRIBUTE10"
                            , "GLOBAL_ATTRIBUTE11"
                            , "GLOBAL_ATTRIBUTE12"
                            , "GLOBAL_ATTRIBUTE13"
                            , "GLOBAL_ATTRIBUTE14"
                            , "GLOBAL_ATTRIBUTE15"
                            , "GLOBAL_ATTRIBUTE16"
                            , "GLOBAL_ATTRIBUTE17"
                            , "GLOBAL_ATTRIBUTE18"
                            , "GLOBAL_ATTRIBUTE19"
                            , "GLOBAL_ATTRIBUTE20"
                            , "GLOBAL_ATTRIBUTE_CATEGORY"
                            , "PRIMARY_SALESREP_ID"
                            , "FINCHRG_RECEIVABLES_TRX_ID"
                            , "DATES_NEGATIVE_TOLERANCE"
                            , "DATES_POSITIVE_TOLERANCE"
                            , "DATE_TYPE_PREFERENCE"
                            , "OVER_SHIPMENT_TOLERANCE"
                            , "UNDER_SHIPMENT_TOLERANCE"
                            , "ITEM_CROSS_REF_PREF"
                            , "OVER_RETURN_TOLERANCE"
                            , "UNDER_RETURN_TOLERANCE"
                            , "SHIP_SETS_INCLUDE_LINES_FLAG"
                            , "ARRIVALSETS_INCLUDE_LINES_FLAG"
                            , "SCHED_DATE_PUSH_FLAG"
                            , "INVOICE_QUANTITY_RULE"
                            , "PRICING_EVENT"
                            , "GL_ID_REC"
                            , "GL_ID_REV"
                            , "GL_ID_TAX"
                            , "GL_ID_FREIGHT"
                            , "GL_ID_CLEARING"
                            , "GL_ID_UNBILLED"
                            , "GL_ID_UNEARNED"
                            , "GL_ID_UNPAID_REC"
                            , "GL_ID_REMITTANCE"
                            , "GL_ID_FACTOR"
                            , "TAX_CLASSIFICATION"
                            , "OBJECT_VERSION_NUMBER"
                            , "CREATED_BY_MODULE"
                            , "APPLICATION_ID"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HZ_CUST_SITE_USES_ALL"
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