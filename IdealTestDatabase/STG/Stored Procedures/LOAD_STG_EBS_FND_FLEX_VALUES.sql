CREATE PROCEDURE [STG].[LOAD_STG_EBS_FND_FLEX_VALUES]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        5/05/2022 11:48:47 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_FND_FLEX_VALUES";
    
    
    Source                             Destination                     
    -------------------------------    ------------------------------- 
    LND"."LND_EBS_FND_FLEX_VALUES"    "STG"."STG_EBS_FND_FLEX_VALUES" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-05    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
	2022-05-09    Sameh Hassan		Modified the Date columns data conversion function		
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_FND_FLEX_VALUES";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_FND_FLEX_VALUES"
                (
                    "FLEX_VALUE_SET_ID"
                    ,"FLEX_VALUE_ID"
                    ,"FLEX_VALUE"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"ENABLED_FLAG"
                    ,"SUMMARY_FLAG"
                    ,"START_DATE_ACTIVE"
                    ,"END_DATE_ACTIVE"
                    ,"PARENT_FLEX_VALUE_LOW"
                    ,"PARENT_FLEX_VALUE_HIGH"
                    ,"STRUCTURED_HIERARCHY_LEVEL"
                    ,"HIERARCHY_LEVEL"
                    ,"COMPILED_VALUE_ATTRIBUTES"
                    ,"VALUE_CATEGORY"
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
                    ,"ATTRIBUTE25"
                    ,"ATTRIBUTE26"
                    ,"ATTRIBUTE27"
                    ,"ATTRIBUTE28"
                    ,"ATTRIBUTE29"
                    ,"ATTRIBUTE30"
                    ,"ATTRIBUTE31"
                    ,"ATTRIBUTE32"
                    ,"ATTRIBUTE33"
                    ,"ATTRIBUTE34"
                    ,"ATTRIBUTE35"
                    ,"ATTRIBUTE36"
                    ,"ATTRIBUTE37"
                    ,"ATTRIBUTE38"
                    ,"ATTRIBUTE39"
                    ,"ATTRIBUTE40"
                    ,"ATTRIBUTE41"
                    ,"ATTRIBUTE42"
                    ,"ATTRIBUTE43"
                    ,"ATTRIBUTE44"
                    ,"ATTRIBUTE45"
                    ,"ATTRIBUTE46"
                    ,"ATTRIBUTE47"
                    ,"ATTRIBUTE48"
                    ,"ATTRIBUTE49"
                    ,"ATTRIBUTE50"
                    ,"ATTRIBUTE_SORT_ORDER"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("FLEX_VALUE_SET_ID" AS float) AS "FLEX_VALUE_SET_ID"
                        ,CAST("FLEX_VALUE_ID" AS float) AS "FLEX_VALUE_ID"
                        ,CAST("FLEX_VALUE" AS varchar(1000) ) AS "FLEX_VALUE"
                        ,CONVERT(datetime,CONVERT(datetime2,"LAST_UPDATE_DATE",121)) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CONVERT(datetime,CONVERT(datetime2,"CREATION_DATE",121)) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("ENABLED_FLAG" AS varchar(100) ) AS "ENABLED_FLAG"
                        ,CAST("SUMMARY_FLAG" AS varchar(100) ) AS "SUMMARY_FLAG"
                        ,CONVERT(datetime,CONVERT(datetime2,"START_DATE_ACTIVE",121)) AS "START_DATE_ACTIVE"
                        ,CONVERT(datetime,CONVERT(datetime2,"END_DATE_ACTIVE",121)) AS "END_DATE_ACTIVE"
                        ,CAST("PARENT_FLEX_VALUE_LOW" AS varchar(1000) ) AS "PARENT_FLEX_VALUE_LOW"
                        ,CAST("PARENT_FLEX_VALUE_HIGH" AS varchar(1000) ) AS "PARENT_FLEX_VALUE_HIGH"
                        ,CAST("STRUCTURED_HIERARCHY_LEVEL" AS float) AS "STRUCTURED_HIERARCHY_LEVEL"
                        ,CAST("HIERARCHY_LEVEL" AS varchar(100) ) AS "HIERARCHY_LEVEL"
                        ,CAST("COMPILED_VALUE_ATTRIBUTES" AS varchar(8000) ) AS "COMPILED_VALUE_ATTRIBUTES"
                        ,CAST("VALUE_CATEGORY" AS varchar(100) ) AS "VALUE_CATEGORY"
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
                        ,CAST("ATTRIBUTE31" AS varchar(1000) ) AS "ATTRIBUTE31"
                        ,CAST("ATTRIBUTE32" AS varchar(1000) ) AS "ATTRIBUTE32"
                        ,CAST("ATTRIBUTE33" AS varchar(1000) ) AS "ATTRIBUTE33"
                        ,CAST("ATTRIBUTE34" AS varchar(1000) ) AS "ATTRIBUTE34"
                        ,CAST("ATTRIBUTE35" AS varchar(1000) ) AS "ATTRIBUTE35"
                        ,CAST("ATTRIBUTE36" AS varchar(1000) ) AS "ATTRIBUTE36"
                        ,CAST("ATTRIBUTE37" AS varchar(1000) ) AS "ATTRIBUTE37"
                        ,CAST("ATTRIBUTE38" AS varchar(1000) ) AS "ATTRIBUTE38"
                        ,CAST("ATTRIBUTE39" AS varchar(1000) ) AS "ATTRIBUTE39"
                        ,CAST("ATTRIBUTE40" AS varchar(1000) ) AS "ATTRIBUTE40"
                        ,CAST("ATTRIBUTE41" AS varchar(1000) ) AS "ATTRIBUTE41"
                        ,CAST("ATTRIBUTE42" AS varchar(1000) ) AS "ATTRIBUTE42"
                        ,CAST("ATTRIBUTE43" AS varchar(1000) ) AS "ATTRIBUTE43"
                        ,CAST("ATTRIBUTE44" AS varchar(1000) ) AS "ATTRIBUTE44"
                        ,CAST("ATTRIBUTE45" AS varchar(1000) ) AS "ATTRIBUTE45"
                        ,CAST("ATTRIBUTE46" AS varchar(1000) ) AS "ATTRIBUTE46"
                        ,CAST("ATTRIBUTE47" AS varchar(1000) ) AS "ATTRIBUTE47"
                        ,CAST("ATTRIBUTE48" AS varchar(1000) ) AS "ATTRIBUTE48"
                        ,CAST("ATTRIBUTE49" AS varchar(1000) ) AS "ATTRIBUTE49"
                        ,CAST("ATTRIBUTE50" AS varchar(1000) ) AS "ATTRIBUTE50"
                        ,CAST("ATTRIBUTE_SORT_ORDER" AS float) AS "ATTRIBUTE_SORT_ORDER"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "FLEX_VALUE_SET_ID"
                            , "FLEX_VALUE_ID"
                            , "FLEX_VALUE"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "ENABLED_FLAG"
                            , "SUMMARY_FLAG"
                            , "START_DATE_ACTIVE"
                            , "END_DATE_ACTIVE"
                            , "PARENT_FLEX_VALUE_LOW"
                            , "PARENT_FLEX_VALUE_HIGH"
                            , "STRUCTURED_HIERARCHY_LEVEL"
                            , "HIERARCHY_LEVEL"
                            , "COMPILED_VALUE_ATTRIBUTES"
                            , "VALUE_CATEGORY"
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
                            , "ATTRIBUTE31"
                            , "ATTRIBUTE32"
                            , "ATTRIBUTE33"
                            , "ATTRIBUTE34"
                            , "ATTRIBUTE35"
                            , "ATTRIBUTE36"
                            , "ATTRIBUTE37"
                            , "ATTRIBUTE38"
                            , "ATTRIBUTE39"
                            , "ATTRIBUTE40"
                            , "ATTRIBUTE41"
                            , "ATTRIBUTE42"
                            , "ATTRIBUTE43"
                            , "ATTRIBUTE44"
                            , "ATTRIBUTE45"
                            , "ATTRIBUTE46"
                            , "ATTRIBUTE47"
                            , "ATTRIBUTE48"
                            , "ATTRIBUTE49"
                            , "ATTRIBUTE50"
                            , "ATTRIBUTE_SORT_ORDER"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_FND_FLEX_VALUES"
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