

CREATE PROCEDURE [STG].[LOAD_STG_EBS_HR_ALL_ORGANIZATION_UNITS]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 1:03:20 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_HR_ALL_ORGANIZATION_UNITS";
    
    
    Source                                       Destination                               
    -----------------------------------------    ----------------------------------------- 
    LND"."LND_EBS_HR_ALL_ORGANIZATION_UNITS"    "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HR_ALL_ORGANIZATION_UNITS"
                (
                    "ORGANIZATION_ID"
                    ,"BUSINESS_GROUP_ID"
                    ,"COST_ALLOCATION_KEYFLEX_ID"
                    ,"LOCATION_ID"
                    ,"SOFT_CODING_KEYFLEX_ID"
                    ,"DATE_FROM"
                    ,"NAME"
                    ,"DATE_TO"
                    ,"INTERNAL_EXTERNAL_FLAG"
                    ,"INTERNAL_ADDRESS_LINE"
                    ,"TYPE"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"PARTY_ID"
                    ,"COMMENTS"
                    ,"ATTRIBUTE21"
                    ,"ATTRIBUTE22"
                    ,"ATTRIBUTE23"
                    ,"ATTRIBUTE24"
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("ORGANIZATION_ID" AS float) AS "ORGANIZATION_ID"
                        ,CAST("BUSINESS_GROUP_ID" AS float) AS "BUSINESS_GROUP_ID"
                        ,CAST("COST_ALLOCATION_KEYFLEX_ID" AS float) AS "COST_ALLOCATION_KEYFLEX_ID"
                        ,CAST("LOCATION_ID" AS float) AS "LOCATION_ID"
                        ,CAST("SOFT_CODING_KEYFLEX_ID" AS float) AS "SOFT_CODING_KEYFLEX_ID"
                        ,TRY_CONVERT(datetime2,"DATE_FROM",121) AS "DATE_FROM"
                        ,CAST("NAME" AS varchar(1000) ) AS "NAME"
                        ,TRY_CONVERT(datetime2,"DATE_TO",121) AS "DATE_TO"
                        ,CAST("INTERNAL_EXTERNAL_FLAG" AS varchar(100) ) AS "INTERNAL_EXTERNAL_FLAG"
                        ,CAST("INTERNAL_ADDRESS_LINE" AS varchar(1000) ) AS "INTERNAL_ADDRESS_LINE"
                        ,CAST("TYPE" AS varchar(100) ) AS "TYPE"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
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
                        ,CAST("ATTRIBUTE16" AS varchar(1000) ) AS "ATTRIBUTE16"
                        ,CAST("ATTRIBUTE17" AS varchar(1000) ) AS "ATTRIBUTE17"
                        ,CAST("ATTRIBUTE18" AS varchar(1000) ) AS "ATTRIBUTE18"
                        ,CAST("ATTRIBUTE19" AS varchar(1000) ) AS "ATTRIBUTE19"
                        ,CAST("ATTRIBUTE20" AS varchar(1000) ) AS "ATTRIBUTE20"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("PARTY_ID" AS float) AS "PARTY_ID"
                        ,CAST("COMMENTS" AS varchar(8000) ) AS "COMMENTS"
                        ,CAST("ATTRIBUTE21" AS varchar(1000) ) AS "ATTRIBUTE21"
                        ,CAST("ATTRIBUTE22" AS varchar(1000) ) AS "ATTRIBUTE22"
                        ,CAST("ATTRIBUTE23" AS varchar(1000) ) AS "ATTRIBUTE23"
                        ,CAST("ATTRIBUTE24" AS varchar(1000) ) AS "ATTRIBUTE24"
                        ,CAST("ATTRIBUTE25" AS varchar(1000) ) AS "ATTRIBUTE25"
                        ,CAST("ATTRIBUTE26" AS varchar(1000) ) AS "ATTRIBUTE26"
                        ,CAST("ATTRIBUTE27" AS varchar(1000) ) AS "ATTRIBUTE27"
                        ,CAST("ATTRIBUTE28" AS varchar(1000) ) AS "ATTRIBUTE28"
                        ,CAST("ATTRIBUTE29" AS varchar(1000) ) AS "ATTRIBUTE29"
                        ,CAST("ATTRIBUTE30" AS varchar(1000) ) AS "ATTRIBUTE30"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "ORGANIZATION_ID"
                            , "BUSINESS_GROUP_ID"
                            , "COST_ALLOCATION_KEYFLEX_ID"
                            , "LOCATION_ID"
                            , "SOFT_CODING_KEYFLEX_ID"
                            , "DATE_FROM"
                            , "NAME"
                            , "DATE_TO"
                            , "INTERNAL_EXTERNAL_FLAG"
                            , "INTERNAL_ADDRESS_LINE"
                            , "TYPE"
                            , "REQUEST_ID"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
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
                            , "ATTRIBUTE16"
                            , "ATTRIBUTE17"
                            , "ATTRIBUTE18"
                            , "ATTRIBUTE19"
                            , "ATTRIBUTE20"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "CREATED_BY"
                            , "CREATION_DATE"
                            , "OBJECT_VERSION_NUMBER"
                            , "PARTY_ID"
                            , "COMMENTS"
                            , "ATTRIBUTE21"
                            , "ATTRIBUTE22"
                            , "ATTRIBUTE23"
                            , "ATTRIBUTE24"
                            , "ATTRIBUTE25"
                            , "ATTRIBUTE26"
                            , "ATTRIBUTE27"
                            , "ATTRIBUTE28"
                            , "ATTRIBUTE29"
                            , "ATTRIBUTE30"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_HR_ALL_ORGANIZATION_UNITS"
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
