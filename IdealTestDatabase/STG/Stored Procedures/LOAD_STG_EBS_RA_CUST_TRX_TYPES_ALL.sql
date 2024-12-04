

CREATE PROCEDURE [STG].[LOAD_STG_EBS_RA_CUST_TRX_TYPES_ALL]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:42 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RA_CUST_TRX_TYPES_ALL";
    
    
    Source                                   Destination                           
    -------------------------------------    ------------------------------------- 
    LND"."LND_EBS_RA_CUST_TRX_TYPES_ALL"    "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL" 
    
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
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RA_CUST_TRX_TYPES_ALL"
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
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUST_TRX_TYPE_ID" AS float) AS "CUST_TRX_TYPE_ID"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("POST_TO_GL" AS varchar(100) ) AS "POST_TO_GL"
                        ,CAST("ACCOUNTING_AFFECT_FLAG" AS varchar(100) ) AS "ACCOUNTING_AFFECT_FLAG"
                        ,CAST("CREDIT_MEMO_TYPE_ID" AS float) AS "CREDIT_MEMO_TYPE_ID"
                        ,CAST("STATUS" AS varchar(100) ) AS "STATUS"
                        ,CAST("NAME" AS varchar(100) ) AS "NAME"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("TYPE" AS varchar(100) ) AS "TYPE"
                        ,CAST("DEFAULT_TERM" AS float) AS "DEFAULT_TERM"
                        ,CAST("DEFAULT_PRINTING_OPTION" AS varchar(100) ) AS "DEFAULT_PRINTING_OPTION"
                        ,CAST("DEFAULT_STATUS" AS varchar(100) ) AS "DEFAULT_STATUS"
                        ,CAST("GL_ID_REV" AS float) AS "GL_ID_REV"
                        ,CAST("GL_ID_FREIGHT" AS float) AS "GL_ID_FREIGHT"
                        ,CAST("GL_ID_REC" AS float) AS "GL_ID_REC"
                        ,CAST("SUBSEQUENT_TRX_TYPE_ID" AS float) AS "SUBSEQUENT_TRX_TYPE_ID"
                        ,CAST("SET_OF_BOOKS_ID" AS float) AS "SET_OF_BOOKS_ID"
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
                        ,CAST("ALLOW_FREIGHT_FLAG" AS varchar(100) ) AS "ALLOW_FREIGHT_FLAG"
                        ,CAST("ALLOW_OVERAPPLICATION_FLAG" AS varchar(100) ) AS "ALLOW_OVERAPPLICATION_FLAG"
                        ,CAST("CREATION_SIGN" AS varchar(100) ) AS "CREATION_SIGN"
                        ,TRY_CONVERT(datetime2,"END_DATE",121) AS "END_DATE"
                        ,CAST("GL_ID_CLEARING" AS float) AS "GL_ID_CLEARING"
                        ,CAST("GL_ID_TAX" AS float) AS "GL_ID_TAX"
                        ,CAST("GL_ID_UNBILLED" AS float) AS "GL_ID_UNBILLED"
                        ,CAST("GL_ID_UNEARNED" AS float) AS "GL_ID_UNEARNED"
                        ,TRY_CONVERT(datetime2,"START_DATE",121) AS "START_DATE"
                        ,CAST("TAX_CALCULATION_FLAG" AS varchar(100) ) AS "TAX_CALCULATION_FLAG"
                        ,CAST("ATTRIBUTE11" AS varchar(1000) ) AS "ATTRIBUTE11"
                        ,CAST("ATTRIBUTE12" AS varchar(1000) ) AS "ATTRIBUTE12"
                        ,CAST("ATTRIBUTE13" AS varchar(1000) ) AS "ATTRIBUTE13"
                        ,CAST("ATTRIBUTE14" AS varchar(1000) ) AS "ATTRIBUTE14"
                        ,CAST("ATTRIBUTE15" AS varchar(1000) ) AS "ATTRIBUTE15"
                        ,CAST("NATURAL_APPLICATION_ONLY_FLAG" AS varchar(100) ) AS "NATURAL_APPLICATION_ONLY_FLAG"
                        ,CAST("ORG_ID" AS float) AS "ORG_ID"
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
                        ,CAST("RULE_SET_ID" AS float) AS "RULE_SET_ID"
                        ,CAST("SIGNED_FLAG" AS varchar(100) ) AS "SIGNED_FLAG"
                        ,CAST("DRAWEE_ISSUED_FLAG" AS varchar(100) ) AS "DRAWEE_ISSUED_FLAG"
                        ,CAST("MAGNETIC_FORMAT_CODE" AS varchar(100) ) AS "MAGNETIC_FORMAT_CODE"
                        ,CAST("FORMAT_PROGRAM_ID" AS float) AS "FORMAT_PROGRAM_ID"
                        ,CAST("GL_ID_UNPAID_REC" AS float) AS "GL_ID_UNPAID_REC"
                        ,CAST("GL_ID_REMITTANCE" AS float) AS "GL_ID_REMITTANCE"
                        ,CAST("GL_ID_FACTOR" AS float) AS "GL_ID_FACTOR"
                        ,CAST("ALLOCATE_TAX_FREIGHT" AS varchar(100) ) AS "ALLOCATE_TAX_FREIGHT"
                        ,CAST("LEGAL_ENTITY_ID" AS float) AS "LEGAL_ENTITY_ID"
                        ,CAST("EXCLUDE_FROM_LATE_CHARGES" AS varchar(100) ) AS "EXCLUDE_FROM_LATE_CHARGES"
                        ,CAST("ADJ_POST_TO_GL" AS varchar(100) ) AS "ADJ_POST_TO_GL"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CUST_TRX_TYPE_ID"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "POST_TO_GL"
                            , "ACCOUNTING_AFFECT_FLAG"
                            , "CREDIT_MEMO_TYPE_ID"
                            , "STATUS"
                            , "NAME"
                            , "DESCRIPTION"
                            , "TYPE"
                            , "DEFAULT_TERM"
                            , "DEFAULT_PRINTING_OPTION"
                            , "DEFAULT_STATUS"
                            , "GL_ID_REV"
                            , "GL_ID_FREIGHT"
                            , "GL_ID_REC"
                            , "SUBSEQUENT_TRX_TYPE_ID"
                            , "SET_OF_BOOKS_ID"
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
                            , "ALLOW_FREIGHT_FLAG"
                            , "ALLOW_OVERAPPLICATION_FLAG"
                            , "CREATION_SIGN"
                            , "END_DATE"
                            , "GL_ID_CLEARING"
                            , "GL_ID_TAX"
                            , "GL_ID_UNBILLED"
                            , "GL_ID_UNEARNED"
                            , "START_DATE"
                            , "TAX_CALCULATION_FLAG"
                            , "ATTRIBUTE11"
                            , "ATTRIBUTE12"
                            , "ATTRIBUTE13"
                            , "ATTRIBUTE14"
                            , "ATTRIBUTE15"
                            , "NATURAL_APPLICATION_ONLY_FLAG"
                            , "ORG_ID"
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
                            , "RULE_SET_ID"
                            , "SIGNED_FLAG"
                            , "DRAWEE_ISSUED_FLAG"
                            , "MAGNETIC_FORMAT_CODE"
                            , "FORMAT_PROGRAM_ID"
                            , "GL_ID_UNPAID_REC"
                            , "GL_ID_REMITTANCE"
                            , "GL_ID_FACTOR"
                            , "ALLOCATE_TAX_FREIGHT"
                            , "LEGAL_ENTITY_ID"
                            , "EXCLUDE_FROM_LATE_CHARGES"
                            , "ADJ_POST_TO_GL"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_RA_CUST_TRX_TYPES_ALL"
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
