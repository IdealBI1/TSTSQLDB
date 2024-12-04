

CREATE Procedure [HSTG].[LOAD_HSTG_EBS_HZ_LOCATIONS]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 11:59:05 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_EBS_HZ_LOCATIONS";
    
    Source                          Destination                    
    ----------------------------    ----------------------------- 
    STG"."STG_EBS_HZ_LOCATIONS"    "HSTG"."HSTG_EBS_HZ_LOCATIONS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_EBS_HZ_LOCATIONS"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_EBS_HZ_LOCATIONS"
                (
                    "LOCATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
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
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"COUNTRY"
                    ,"ADDRESS1"
                    ,"ADDRESS2"
                    ,"ADDRESS3"
                    ,"ADDRESS4"
                    ,"CITY"
                    ,"POSTAL_CODE"
                    ,"STATE"
                    ,"PROVINCE"
                    ,"COUNTY"
                    ,"ADDRESS_KEY"
                    ,"ADDRESS_STYLE"
                    ,"VALIDATED_FLAG"
                    ,"ADDRESS_LINES_PHONETIC"
                    ,"APARTMENT_FLAG"
                    ,"PO_BOX_NUMBER"
                    ,"HOUSE_NUMBER"
                    ,"STREET_SUFFIX"
                    ,"APARTMENT_NUMBER"
                    ,"SECONDARY_SUFFIX_ELEMENT"
                    ,"STREET"
                    ,"RURAL_ROUTE_TYPE"
                    ,"RURAL_ROUTE_NUMBER"
                    ,"STREET_NUMBER"
                    ,"BUILDING"
                    ,"FLOOR"
                    ,"SUITE"
                    ,"ROOM"
                    ,"POSTAL_PLUS4_CODE"
                    ,"TIME_ZONE"
                    ,"OVERSEAS_ADDRESS_FLAG"
                    ,"POST_OFFICE"
                    ,"POSITION"
                    ,"DELIVERY_POINT_CODE"
                    ,"LOCATION_DIRECTIONS"
                    ,"ADDRESS_EFFECTIVE_DATE"
                    ,"ADDRESS_EXPIRATION_DATE"
                    ,"ADDRESS_ERROR_CODE"
                    ,"CLLI_CODE"
                    ,"DODAAC"
                    ,"TRAILING_DIRECTORY_CODE"
                    ,"LANGUAGE"
                    ,"LIFE_CYCLE_STATUS"
                    ,"SHORT_DESCRIPTION"
                    ,"DESCRIPTION"
                    ,"CONTENT_SOURCE_TYPE"
                    ,"LOC_HIERARCHY_ID"
                    ,"SALES_TAX_GEOCODE"
                    ,"SALES_TAX_INSIDE_CITY_LIMITS"
                    ,"FA_LOCATION_ID"
                    ,"GEOMETRY"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"TIMEZONE_ID"
                    ,"GEOMETRY_STATUS_CODE"
                    ,"ACTUAL_CONTENT_SOURCE"
                    ,"VALIDATION_STATUS_CODE"
                    ,"DATE_VALIDATED"
                    ,"DO_NOT_VALIDATE_FLAG"
                    ,"GEOMETRY_SOURCE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "LOCATION_ID"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"REQUEST_ID"
                    ,"PROGRAM_APPLICATION_ID"
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
                    ,"ORIG_SYSTEM_REFERENCE"
                    ,"COUNTRY"
                    ,"ADDRESS1"
                    ,"ADDRESS2"
                    ,"ADDRESS3"
                    ,"ADDRESS4"
                    ,"CITY"
                    ,"POSTAL_CODE"
                    ,"STATE"
                    ,"PROVINCE"
                    ,"COUNTY"
                    ,"ADDRESS_KEY"
                    ,"ADDRESS_STYLE"
                    ,"VALIDATED_FLAG"
                    ,"ADDRESS_LINES_PHONETIC"
                    ,"APARTMENT_FLAG"
                    ,"PO_BOX_NUMBER"
                    ,"HOUSE_NUMBER"
                    ,"STREET_SUFFIX"
                    ,"APARTMENT_NUMBER"
                    ,"SECONDARY_SUFFIX_ELEMENT"
                    ,"STREET"
                    ,"RURAL_ROUTE_TYPE"
                    ,"RURAL_ROUTE_NUMBER"
                    ,"STREET_NUMBER"
                    ,"BUILDING"
                    ,"FLOOR"
                    ,"SUITE"
                    ,"ROOM"
                    ,"POSTAL_PLUS4_CODE"
                    ,"TIME_ZONE"
                    ,"OVERSEAS_ADDRESS_FLAG"
                    ,"POST_OFFICE"
                    ,"POSITION"
                    ,"DELIVERY_POINT_CODE"
                    ,"LOCATION_DIRECTIONS"
                    ,"ADDRESS_EFFECTIVE_DATE"
                    ,"ADDRESS_EXPIRATION_DATE"
                    ,"ADDRESS_ERROR_CODE"
                    ,"CLLI_CODE"
                    ,"DODAAC"
                    ,"TRAILING_DIRECTORY_CODE"
                    ,"LANGUAGE"
                    ,"LIFE_CYCLE_STATUS"
                    ,"SHORT_DESCRIPTION"
                    ,"DESCRIPTION"
                    ,"CONTENT_SOURCE_TYPE"
                    ,"LOC_HIERARCHY_ID"
                    ,"SALES_TAX_GEOCODE"
                    ,"SALES_TAX_INSIDE_CITY_LIMITS"
                    ,"FA_LOCATION_ID"
                    ,"GEOMETRY"
                    ,"OBJECT_VERSION_NUMBER"
                    ,"CREATED_BY_MODULE"
                    ,"APPLICATION_ID"
                    ,"TIMEZONE_ID"
                    ,"GEOMETRY_STATUS_CODE"
                    ,"ACTUAL_CONTENT_SOURCE"
                    ,"VALIDATION_STATUS_CODE"
                    ,"DATE_VALIDATED"
                    ,"DO_NOT_VALIDATE_FLAG"
                    ,"GEOMETRY_SOURCE"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_EBS_HZ_LOCATIONS" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_EBS_HZ_LOCATIONS" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */

                /* THERE WAS NO BK FOR THIS TABLE. WE CANNOT IDENTIFY THE DELETED RECORDS.*/

            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
				UPDATE  H 				SET OMD_CURRENT_RECORD_INDICATOR='N'				FROM "HSTG"."HSTG_EBS_HZ_LOCATIONS" H					Join "STG"."STG_EBS_HZ_LOCATIONS" S						On H.LOCATION_ID= S.LOCATION_ID				WHERE "OMD_IS_RECORD_DELETED" = 'N'						AND H.OMD_HASH_FULL_RECORD <> S.OMD_HASH_FULL_RECORD
            
            
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
