

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HZ_PARTIES]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:52:58 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HZ_PARTIES";
    
    Source                        Destination                  
    --------------------------    --------------------------- 
    STG"."STG_EBS_HZ_PARTIES"    "HSTG"."HSTG_EBS_HZ_PARTIES" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HZ_PARTIES"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HZ_PARTIES"
                (
                    "PARTY_ID"
                    ,"PARTY_NUMBER"
                    ,"PARTY_NAME"
                    ,"PARTY_TYPE"
                    ,"VALIDATED_FLAG"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
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
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE3"
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
                    ,"SIC_CODE"
                    ,"HQ_BRANCH_IND"
                    ,"CUSTOMER_KEY"
                    ,"TAX_REFERENCE"
                    ,"JGZZ_FISCAL_CODE"
                    ,"DUNS_NUMBER"
                    ,"TAX_NAME"
                    ,"PERSON_PRE_NAME_ADJUNCT"
                    ,"PERSON_FIRST_NAME"
                    ,"PERSON_MIDDLE_NAME"
                    ,"PERSON_LAST_NAME"
                    ,"PERSON_NAME_SUFFIX"
                    ,"PERSON_TITLE"
                    ,"PERSON_ACADEMIC_TITLE"
                    ,"PERSON_PREVIOUS_LAST_NAME"
                    ,"KNOWN_AS"
                    ,"PERSON_IDEN_TYPE"
                    ,"PERSON_IDENTIFIER"
                    ,"GROUP_TYPE"
                    ,"COUNTRY"
                    ,"ADDRESS1"
                    ,"ADDRESS2"
                    ,"ADDRESS3"
                    ,"ADDRESS4"
                    ,"CITY"
                    ,"POSTAL_CODE"
                    ,"STATE"
                    ,"PROVINCE"
                    ,"STATUS"
                    ,"COUNTY"
                    ,"SIC_CODE_TYPE"
                    ,"TOTAL_NUM_OF_ORDERS"
                    ,"TOTAL_ORDERED_AMOUNT"
                    ,"LAST_ORDERED_DATE"
                    ,"URL"
                    ,"EMAIL_ADDRESS"
                    ,"DO_NOT_MAIL_FLAG"
                    ,"ANALYSIS_FY"
                    ,"FISCAL_YEAREND_MONTH"
                    ,"EMPLOYEES_TOTAL"
                    ,"CURR_FY_POTENTIAL_REVENUE"
                    ,"NEXT_FY_POTENTIAL_REVENUE"
                    ,"YEAR_ESTABLISHED"
                    ,"GSA_INDICATOR_FLAG"
                    ,"MISSION_STATEMENT"
                    ,"ORGANIZATION_NAME_PHONETIC"
                    ,"PERSON_FIRST_NAME_PHONETIC"
                    ,"PERSON_LAST_NAME_PHONETIC"
                    ,"LANGUAGE_NAME"
                    ,"CATEGORY_CODE"
                    ,"REFERENCE_USE_FLAG"
                    ,"THIRD_PARTY_FLAG"
                    ,"COMPETITOR_FLAG"
                    ,"SALUTATION"
                    ,"KNOWN_AS2"
                    ,"KNOWN_AS3"
                    ,"KNOWN_AS4"
                    ,"KNOWN_AS5"
                    ,"DUNS_NUMBER_C"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"PRIMARY_PHONE_CONTACT_PT_ID"
                    ,"PRIMARY_PHONE_PURPOSE"
                    ,"PRIMARY_PHONE_LINE_TYPE"
                    ,"PRIMARY_PHONE_COUNTRY_CODE"
                    ,"PRIMARY_PHONE_AREA_CODE"
                    ,"PRIMARY_PHONE_NUMBER"
                    ,"PRIMARY_PHONE_EXTENSION"
                    ,"CERTIFICATION_LEVEL"
                    ,"CERT_REASON_CODE"
                    ,"PREFERRED_CONTACT_METHOD"
                    ,"HOME_COUNTRY"
                    ,"PERSON_BO_VERSION"
                    ,"ORG_BO_VERSION"
                    ,"PERSON_CUST_BO_VERSION"
                    ,"ORG_CUST_BO_VERSION"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "PARTY_ID"
                    ,"PARTY_NUMBER"
                    ,"PARTY_NAME"
                    ,"PARTY_TYPE"
                    ,"VALIDATED_FLAG"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
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
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"GLOBAL_ATTRIBUTE_CATEGORY"
                    ,"GLOBAL_ATTRIBUTE1"
                    ,"GLOBAL_ATTRIBUTE2"
                    ,"GLOBAL_ATTRIBUTE4"
                    ,"GLOBAL_ATTRIBUTE3"
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
                    ,"SIC_CODE"
                    ,"HQ_BRANCH_IND"
                    ,"CUSTOMER_KEY"
                    ,"TAX_REFERENCE"
                    ,"JGZZ_FISCAL_CODE"
                    ,"DUNS_NUMBER"
                    ,"TAX_NAME"
                    ,"PERSON_PRE_NAME_ADJUNCT"
                    ,"PERSON_FIRST_NAME"
                    ,"PERSON_MIDDLE_NAME"
                    ,"PERSON_LAST_NAME"
                    ,"PERSON_NAME_SUFFIX"
                    ,"PERSON_TITLE"
                    ,"PERSON_ACADEMIC_TITLE"
                    ,"PERSON_PREVIOUS_LAST_NAME"
                    ,"KNOWN_AS"
                    ,"PERSON_IDEN_TYPE"
                    ,"PERSON_IDENTIFIER"
                    ,"GROUP_TYPE"
                    ,"COUNTRY"
                    ,"ADDRESS1"
                    ,"ADDRESS2"
                    ,"ADDRESS3"
                    ,"ADDRESS4"
                    ,"CITY"
                    ,"POSTAL_CODE"
                    ,"STATE"
                    ,"PROVINCE"
                    ,"STATUS"
                    ,"COUNTY"
                    ,"SIC_CODE_TYPE"
                    ,"TOTAL_NUM_OF_ORDERS"
                    ,"TOTAL_ORDERED_AMOUNT"
                    ,"LAST_ORDERED_DATE"
                    ,"URL"
                    ,"EMAIL_ADDRESS"
                    ,"DO_NOT_MAIL_FLAG"
                    ,"ANALYSIS_FY"
                    ,"FISCAL_YEAREND_MONTH"
                    ,"EMPLOYEES_TOTAL"
                    ,"CURR_FY_POTENTIAL_REVENUE"
                    ,"NEXT_FY_POTENTIAL_REVENUE"
                    ,"YEAR_ESTABLISHED"
                    ,"GSA_INDICATOR_FLAG"
                    ,"MISSION_STATEMENT"
                    ,"ORGANIZATION_NAME_PHONETIC"
                    ,"PERSON_FIRST_NAME_PHONETIC"
                    ,"PERSON_LAST_NAME_PHONETIC"
                    ,"LANGUAGE_NAME"
                    ,"CATEGORY_CODE"
                    ,"REFERENCE_USE_FLAG"
                    ,"THIRD_PARTY_FLAG"
                    ,"COMPETITOR_FLAG"
                    ,"SALUTATION"
                    ,"KNOWN_AS2"
                    ,"KNOWN_AS3"
                    ,"KNOWN_AS4"
                    ,"KNOWN_AS5"
                    ,"DUNS_NUMBER_C"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"PRIMARY_PHONE_CONTACT_PT_ID"
                    ,"PRIMARY_PHONE_PURPOSE"
                    ,"PRIMARY_PHONE_LINE_TYPE"
                    ,"PRIMARY_PHONE_COUNTRY_CODE"
                    ,"PRIMARY_PHONE_AREA_CODE"
                    ,"PRIMARY_PHONE_NUMBER"
                    ,"PRIMARY_PHONE_EXTENSION"
                    ,"CERTIFICATION_LEVEL"
                    ,"CERT_REASON_CODE"
                    ,"PREFERRED_CONTACT_METHOD"
                    ,"HOME_COUNTRY"
                    ,"PERSON_BO_VERSION"
                    ,"ORG_BO_VERSION"
                    ,"PERSON_CUST_BO_VERSION"
                    ,"ORG_CUST_BO_VERSION"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HZ_PARTIES" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HZ_PARTIES" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HZ_PARTIES" H					Join "STG"."STG_EBS_HZ_PARTIES" S						On H.PARTY_ID= S.PARTY_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
