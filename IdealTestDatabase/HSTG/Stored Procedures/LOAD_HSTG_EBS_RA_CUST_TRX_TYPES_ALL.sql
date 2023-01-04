

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_RA_CUST_TRX_TYPES_ALL]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:43 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_RA_CUST_TRX_TYPES_ALL";
    
    Source                                   Destination                             
    -------------------------------------    -------------------------------------- 
    STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL"    "HSTG"."HSTG_EBS_RA_CUST_TRX_TYPES_ALL" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_RA_CUST_TRX_TYPES_ALL"
                (
                    "CUST_TRX_TYPE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"POST_TO_GL"
                    ,"ACCOUNTING_AFFECT_FLAG"
                    ,"CREDIT_MEMO_TYPE_ID"
                    ,"STATUS"
                    ,"NAME"
                    ,"DESCRIPTION"
                    ,"TYPE"
                    ,"DEFAULT_TERM"
                    ,"DEFAULT_PRINTING_OPTION"
                    ,"DEFAULT_STATUS"
                    ,"GL_ID_REV"
                    ,"GL_ID_FREIGHT"
                    ,"GL_ID_REC"
                    ,"SUBSEQUENT_TRX_TYPE_ID"
                    ,"SET_OF_BOOKS_ID"
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
                    ,"ALLOW_FREIGHT_FLAG"
                    ,"ALLOW_OVERAPPLICATION_FLAG"
                    ,"CREATION_SIGN"
                    ,"END_DATE"
                    ,"GL_ID_CLEARING"
                    ,"GL_ID_TAX"
                    ,"GL_ID_UNBILLED"
                    ,"GL_ID_UNEARNED"
                    ,"START_DATE"
                    ,"TAX_CALCULATION_FLAG"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"NATURAL_APPLICATION_ONLY_FLAG"
                    ,"ORG_ID"
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
                    ,"RULE_SET_ID"
                    ,"SIGNED_FLAG"
                    ,"DRAWEE_ISSUED_FLAG"
                    ,"MAGNETIC_FORMAT_CODE"
                    ,"FORMAT_PROGRAM_ID"
                    ,"GL_ID_UNPAID_REC"
                    ,"GL_ID_REMITTANCE"
                    ,"GL_ID_FACTOR"
                    ,"ALLOCATE_TAX_FREIGHT"
                    ,"LEGAL_ENTITY_ID"
                    ,"EXCLUDE_FROM_LATE_CHARGES"
                    ,"ADJ_POST_TO_GL"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "CUST_TRX_TYPE_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"POST_TO_GL"
                    ,"ACCOUNTING_AFFECT_FLAG"
                    ,"CREDIT_MEMO_TYPE_ID"
                    ,"STATUS"
                    ,"NAME"
                    ,"DESCRIPTION"
                    ,"TYPE"
                    ,"DEFAULT_TERM"
                    ,"DEFAULT_PRINTING_OPTION"
                    ,"DEFAULT_STATUS"
                    ,"GL_ID_REV"
                    ,"GL_ID_FREIGHT"
                    ,"GL_ID_REC"
                    ,"SUBSEQUENT_TRX_TYPE_ID"
                    ,"SET_OF_BOOKS_ID"
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
                    ,"ALLOW_FREIGHT_FLAG"
                    ,"ALLOW_OVERAPPLICATION_FLAG"
                    ,"CREATION_SIGN"
                    ,"END_DATE"
                    ,"GL_ID_CLEARING"
                    ,"GL_ID_TAX"
                    ,"GL_ID_UNBILLED"
                    ,"GL_ID_UNEARNED"
                    ,"START_DATE"
                    ,"TAX_CALCULATION_FLAG"
                    ,"ATTRIBUTE11"
                    ,"ATTRIBUTE12"
                    ,"ATTRIBUTE13"
                    ,"ATTRIBUTE14"
                    ,"ATTRIBUTE15"
                    ,"NATURAL_APPLICATION_ONLY_FLAG"
                    ,"ORG_ID"
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
                    ,"RULE_SET_ID"
                    ,"SIGNED_FLAG"
                    ,"DRAWEE_ISSUED_FLAG"
                    ,"MAGNETIC_FORMAT_CODE"
                    ,"FORMAT_PROGRAM_ID"
                    ,"GL_ID_UNPAID_REC"
                    ,"GL_ID_REMITTANCE"
                    ,"GL_ID_FACTOR"
                    ,"ALLOCATE_TAX_FREIGHT"
                    ,"LEGAL_ENTITY_ID"
                    ,"EXCLUDE_FROM_LATE_CHARGES"
                    ,"ADJ_POST_TO_GL"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_RA_CUST_TRX_TYPES_ALL" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_RA_CUST_TRX_TYPES_ALL" H					Join "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL" S						On H.CUST_TRX_TYPE_ID= S.CUST_TRX_TYPE_ID						And H.ORG_ID= S.ORG_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
