

CREATE PROCEDURE "STG"."LOAD_STG_EBS_HR_LOCATIONS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/11/2022 12:13:58 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_HR_LOCATIONS";
    
    
    Source                          Destination                  
    ----------------------------    ---------------------------- 
    LND"."LND_EBS_HR_LOCATIONS"    "STG"."STG_EBS_HR_LOCATIONS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-11-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_HR_LOCATIONS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_HR_LOCATIONS"
                (
                    "LOCATION_ID"
                    ,"LOCATION_CODE"
                    ,"LOCATION_USE"
                    ,"BUSINESS_GROUP_ID"
                    ,"DESCRIPTION"
                    ,"SHIP_TO_LOCATION_ID"
                    ,"SHIP_TO_SITE_FLAG"
                    ,"RECEIVING_SITE_FLAG"
                    ,"BILL_TO_SITE_FLAG"
                    ,"IN_ORGANIZATION_FLAG"
                    ,"OFFICE_SITE_FLAG"
                    ,"DESIGNATED_RECEIVER_ID"
                    ,"INVENTORY_ORGANIZATION_ID"
                    ,"TAX_NAME"
                    ,"INACTIVE_DATE"
                    ,"STYLE"
                    ,"ADDRESS_LINE_1"
                    ,"ADDRESS_LINE_2"
                    ,"ADDRESS_LINE_3"
                    ,"TOWN_OR_CITY"
                    ,"COUNTRY"
                    ,"POSTAL_CODE"
                    ,"REGION_1"
                    ,"REGION_2"
                    ,"REGION_3"
                    ,"TELEPHONE_NUMBER_1"
                    ,"TELEPHONE_NUMBER_2"
                    ,"TELEPHONE_NUMBER_3"
                    ,"LOC_INFORMATION13"
                    ,"LOC_INFORMATION14"
                    ,"LOC_INFORMATION15"
                    ,"LOC_INFORMATION16"
                    ,"LOC_INFORMATION17"
                    ,"LOC_INFORMATION18"
                    ,"LOC_INFORMATION19"
                    ,"LOC_INFORMATION20"
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
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"CREATED_BY"
                    ,"CREATION_DATE"
                    ,"ENTERED_BY"
                    ,"TP_HEADER_ID"
                    ,"ECE_TP_LOCATION_CODE"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"LEGAL_ADDRESS_FLAG"
                    ,"TIMEZONE_CODE"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("LOCATION_ID" AS float) AS "LOCATION_ID"
                        ,CAST("LOCATION_CODE" AS varchar(1000) ) AS "LOCATION_CODE"
                        ,CAST("LOCATION_USE" AS char(100) ) AS "LOCATION_USE"
                        ,CAST("BUSINESS_GROUP_ID" AS float) AS "BUSINESS_GROUP_ID"
                        ,CAST("DESCRIPTION" AS varchar(1000) ) AS "DESCRIPTION"
                        ,CAST("SHIP_TO_LOCATION_ID" AS float) AS "SHIP_TO_LOCATION_ID"
                        ,CAST("SHIP_TO_SITE_FLAG" AS varchar(100) ) AS "SHIP_TO_SITE_FLAG"
                        ,CAST("RECEIVING_SITE_FLAG" AS varchar(100) ) AS "RECEIVING_SITE_FLAG"
                        ,CAST("BILL_TO_SITE_FLAG" AS varchar(100) ) AS "BILL_TO_SITE_FLAG"
                        ,CAST("IN_ORGANIZATION_FLAG" AS varchar(100) ) AS "IN_ORGANIZATION_FLAG"
                        ,CAST("OFFICE_SITE_FLAG" AS varchar(100) ) AS "OFFICE_SITE_FLAG"
                        ,CAST("DESIGNATED_RECEIVER_ID" AS float) AS "DESIGNATED_RECEIVER_ID"
                        ,CAST("INVENTORY_ORGANIZATION_ID" AS float) AS "INVENTORY_ORGANIZATION_ID"
                        ,CAST("TAX_NAME" AS varchar(1000) ) AS "TAX_NAME"
                        ,CAST("INACTIVE_DATE" AS datetime2) AS "INACTIVE_DATE"
                        ,CAST("STYLE" AS varchar(100) ) AS "STYLE"
                        ,CAST("ADDRESS_LINE_1" AS varchar(1000) ) AS "ADDRESS_LINE_1"
                        ,CAST("ADDRESS_LINE_2" AS varchar(1000) ) AS "ADDRESS_LINE_2"
                        ,CAST("ADDRESS_LINE_3" AS varchar(1000) ) AS "ADDRESS_LINE_3"
                        ,CAST("TOWN_OR_CITY" AS varchar(100) ) AS "TOWN_OR_CITY"
                        ,CAST("COUNTRY" AS varchar(1000) ) AS "COUNTRY"
                        ,CAST("POSTAL_CODE" AS varchar(100) ) AS "POSTAL_CODE"
                        ,CAST("REGION_1" AS varchar(1000) ) AS "REGION_1"
                        ,CAST("REGION_2" AS varchar(1000) ) AS "REGION_2"
                        ,CAST("REGION_3" AS varchar(1000) ) AS "REGION_3"
                        ,CAST("TELEPHONE_NUMBER_1" AS varchar(1000) ) AS "TELEPHONE_NUMBER_1"
                        ,CAST("TELEPHONE_NUMBER_2" AS varchar(1000) ) AS "TELEPHONE_NUMBER_2"
                        ,CAST("TELEPHONE_NUMBER_3" AS varchar(1000) ) AS "TELEPHONE_NUMBER_3"
                        ,CAST("LOC_INFORMATION13" AS varchar(1000) ) AS "LOC_INFORMATION13"
                        ,CAST("LOC_INFORMATION14" AS varchar(1000) ) AS "LOC_INFORMATION14"
                        ,CAST("LOC_INFORMATION15" AS varchar(1000) ) AS "LOC_INFORMATION15"
                        ,CAST("LOC_INFORMATION16" AS varchar(1000) ) AS "LOC_INFORMATION16"
                        ,CAST("LOC_INFORMATION17" AS varchar(1000) ) AS "LOC_INFORMATION17"
                        ,CAST("LOC_INFORMATION18" AS varchar(1000) ) AS "LOC_INFORMATION18"
                        ,CAST("LOC_INFORMATION19" AS varchar(1000) ) AS "LOC_INFORMATION19"
                        ,CAST("LOC_INFORMATION20" AS varchar(1000) ) AS "LOC_INFORMATION20"
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
                        ,CAST("GLOBAL_ATTRIBUTE_CATEGORY" AS varchar(1000) ) AS "GLOBAL_ATTRIBUTE_CATEGORY"
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
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,CAST("CREATION_DATE" AS datetime2) AS "CREATION_DATE"
                        ,CAST("ENTERED_BY" AS float) AS "ENTERED_BY"
                        ,CAST("TP_HEADER_ID" AS float) AS "TP_HEADER_ID"
                        ,CAST("ECE_TP_LOCATION_CODE" AS varchar(100) ) AS "ECE_TP_LOCATION_CODE"
                        ,CAST("OBJECT_VERSION_NUMBER" AS float) AS "OBJECT_VERSION_NUMBER"
                        ,CAST("LEGAL_ADDRESS_FLAG" AS varchar(100) ) AS "LEGAL_ADDRESS_FLAG"
                        ,CAST("TIMEZONE_CODE" AS varchar(1000) ) AS "TIMEZONE_CODE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("LOCATION_ID" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOCATION_USE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BUSINESS_GROUP_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESCRIPTION"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_TO_LOCATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("SHIP_TO_SITE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("RECEIVING_SITE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("BILL_TO_SITE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("IN_ORGANIZATION_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OFFICE_SITE_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("DESIGNATED_RECEIVER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INVENTORY_ORGANIZATION_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TAX_NAME"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("INACTIVE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("STYLE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ADDRESS_LINE_1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ADDRESS_LINE_2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ADDRESS_LINE_3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TOWN_OR_CITY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("COUNTRY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("POSTAL_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REGION_1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REGION_2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("REGION_3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TELEPHONE_NUMBER_1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TELEPHONE_NUMBER_2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TELEPHONE_NUMBER_3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION16"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION17"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION18"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION19"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LOC_INFORMATION20"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE16"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE17"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE18"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE19"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ATTRIBUTE20"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE_CATEGORY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE1"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE2"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE3"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE4"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE5"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE6"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE7"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE8"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE9"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE10"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE11"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE12"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE13"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE14"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE15"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE16"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE17"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE18"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE19"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("GLOBAL_ATTRIBUTE20"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_LOGIN"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("CREATION_DATE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ENTERED_BY"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TP_HEADER_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ECE_TP_LOCATION_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("OBJECT_VERSION_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LEGAL_ADDRESS_FLAG"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("TIMEZONE_CODE"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_HR_LOCATIONS"
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
