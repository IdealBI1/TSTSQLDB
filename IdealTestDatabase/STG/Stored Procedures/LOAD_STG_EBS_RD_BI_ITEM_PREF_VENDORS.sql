

CREATE PROCEDURE "STG"."LOAD_STG_EBS_RD_BI_ITEM_PREF_VENDORS"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:43 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_RD_BI_ITEM_PREF_VENDORS";
    
    
    Source                                     Destination                             
    ---------------------------------------    --------------------------------------- 
    LND"."LND_EBS_RD_BI_ITEM_PREF_VENDORS"    "STG"."STG_EBS_RD_BI_ITEM_PREF_VENDORS" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_EBS_RD_BI_ITEM_PREF_VENDORS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_RD_BI_ITEM_PREF_VENDORS"
                (
                    "DC"
                    ,"ITEM_ID"
                    ,"ITEM_CODE"
                    ,"VENDOR_NUMBER"
                    ,"LAST_UPDATE_DATE"
                    ,"META_EFFECTIVE_DATETIME"
                    ,"META_FILE_NAME"
                    ,"META_RECORD_KEY"
                    ,"META_RECORD_CHECKSUM"
                    ,"META_RECORD_SOURCE"
                )
                    SELECT 
                        CAST("DC" AS varchar(1000) ) AS "DC"
                        ,CAST("ITEM_ID" AS float) AS "ITEM_ID"
                        ,CAST("ITEM_CODE" AS varchar(1000) ) AS "ITEM_CODE"
                        ,CAST("VENDOR_NUMBER" AS varchar(8000) ) AS "VENDOR_NUMBER"
                        ,CAST("LAST_UPDATE_DATE" AS datetime2) AS "LAST_UPDATE_DATE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "META_EFFECTIVE_DATETIME"
                        ,"META_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            'NO_BK'
                        ,'||')),2) AS "META_RECORD_KEY"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            COALESCE(CAST("DC" AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_ID"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("ITEM_CODE"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("VENDOR_NUMBER"AS NVARCHAR(MAX)),'NA')
                            ,COALESCE(CAST("LAST_UPDATE_DATE"AS NVARCHAR(MAX)),'NA')
                        ,'||')),2) AS "META_RECORD_CHECKSUM"
                        ,"META_RECORD_SOURCE"
                FROM ( SELECT * 
                    FROM "LND"."LND_EBS_RD_BI_ITEM_PREF_VENDORS"
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
