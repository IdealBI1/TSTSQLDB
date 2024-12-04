

CREATE PROCEDURE [STG].[LOAD_STG_EBS_WSH_DELIVERY_ASSIGNMENTS]
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/03/2022 5:53:53 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_EBS_WSH_DELIVERY_ASSIGNMENTS";
    
    
    Source                                      Destination                              
    ----------------------------------------    ---------------------------------------- 
    LND"."LND_EBS_WSH_DELIVERY_ASSIGNMENTS"    "STG"."STG_EBS_WSH_DELIVERY_ASSIGNMENTS" 
    
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
                TRUNCATE TABLE "STG"."STG_EBS_WSH_DELIVERY_ASSIGNMENTS";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_EBS_WSH_DELIVERY_ASSIGNMENTS"
                (
                    "DELIVERY_ASSIGNMENT_ID"
                    ,"DELIVERY_ID"
                    ,"PARENT_DELIVERY_ID"
                    ,"DELIVERY_DETAIL_ID"
                    ,"PARENT_DELIVERY_DETAIL_ID"
                    ,"CREATION_DATE"
                    ,"CREATED_BY"
                    ,"LAST_UPDATE_DATE"
                    ,"LAST_UPDATED_BY"
                    ,"LAST_UPDATE_LOGIN"
                    ,"PROGRAM_APPLICATION_ID"
                    ,"PROGRAM_ID"
                    ,"PROGRAM_UPDATE_DATE"
                    ,"REQUEST_ID"
                    ,"ACTIVE_FLAG"
                    ,"TYPE"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("DELIVERY_ASSIGNMENT_ID" AS float) AS "DELIVERY_ASSIGNMENT_ID"
                        ,CAST("DELIVERY_ID" AS float) AS "DELIVERY_ID"
                        ,CAST("PARENT_DELIVERY_ID" AS float) AS "PARENT_DELIVERY_ID"
                        ,CAST("DELIVERY_DETAIL_ID" AS float) AS "DELIVERY_DETAIL_ID"
                        ,CAST("PARENT_DELIVERY_DETAIL_ID" AS float) AS "PARENT_DELIVERY_DETAIL_ID"
                        ,TRY_CONVERT(datetime2,"CREATION_DATE",121) AS "CREATION_DATE"
                        ,CAST("CREATED_BY" AS float) AS "CREATED_BY"
                        ,TRY_CONVERT(datetime2,"LAST_UPDATE_DATE",121) AS "LAST_UPDATE_DATE"
                        ,CAST("LAST_UPDATED_BY" AS float) AS "LAST_UPDATED_BY"
                        ,CAST("LAST_UPDATE_LOGIN" AS float) AS "LAST_UPDATE_LOGIN"
                        ,CAST("PROGRAM_APPLICATION_ID" AS float) AS "PROGRAM_APPLICATION_ID"
                        ,CAST("PROGRAM_ID" AS float) AS "PROGRAM_ID"
                        ,TRY_CONVERT(datetime2,"PROGRAM_UPDATE_DATE",121) AS "PROGRAM_UPDATE_DATE"
                        ,CAST("REQUEST_ID" AS float) AS "REQUEST_ID"
                        ,CAST("ACTIVE_FLAG" AS varchar(100) ) AS "ACTIVE_FLAG"
                        ,CAST("TYPE" AS varchar(100) ) AS "TYPE"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "DELIVERY_ASSIGNMENT_ID"
                            , "DELIVERY_ID"
                            , "PARENT_DELIVERY_ID"
                            , "DELIVERY_DETAIL_ID"
                            , "PARENT_DELIVERY_DETAIL_ID"
                            , "CREATION_DATE"
                            , "CREATED_BY"
                            , "LAST_UPDATE_DATE"
                            , "LAST_UPDATED_BY"
                            , "LAST_UPDATE_LOGIN"
                            , "PROGRAM_APPLICATION_ID"
                            , "PROGRAM_ID"
                            , "PROGRAM_UPDATE_DATE"
                            , "REQUEST_ID"
                            , "ACTIVE_FLAG"
                            , "TYPE"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_EBS_WSH_DELIVERY_ASSIGNMENTS"
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
