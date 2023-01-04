

CREATE PROCEDURE "STG"."LOAD_STG_CA_DLAREA"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:49 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_DLAREA";
    
    
    Source                   Destination           
    ---------------------    --------------------- 
    LND"."LND_CA_DLAREA"    "STG"."STG_CA_DLAREA" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  TRUNCATE STAGING TABLE*/
                TRUNCATE TABLE "STG"."STG_CA_DLAREA";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_DLAREA"
                (
                    "CusTyp"
                    ,"Customer Type Description"
                    ,"Sales 1"
                    ,"Sales 2"
                    ,"Sales 3"
                    ,"Sales 4"
                    ,"Sales 5"
                    ,"Sales 6"
                    ,"Sales 7"
                    ,"Sales 8"
                    ,"Sales 9"
                    ,"Sales 10"
                    ,"Sales 11"
                    ,"Sales 12"
                    ,"Sales 13"
                    ,"Sales 14"
                    ,"Sales 15"
                    ,"Sales 16"
                    ,"Sales 17"
                    ,"Sales 18"
                    ,"Sales 19"
                    ,"Sales 20"
                    ,"Sales 21"
                    ,"Sales 22"
                    ,"Sales 23"
                    ,"Sales 24"
                    ,"Cogs 1"
                    ,"Cogs 2"
                    ,"Cogs 3"
                    ,"Cogs 4"
                    ,"Cogs 5"
                    ,"Cogs 6"
                    ,"Cogs 7"
                    ,"Cogs 8"
                    ,"Cogs 9"
                    ,"Cogs 10"
                    ,"Cogs 11"
                    ,"Cogs 12"
                    ,"Cogs 13"
                    ,"Cogs 14"
                    ,"Cogs 15"
                    ,"Cogs 16"
                    ,"Cogs 17"
                    ,"Cogs 18"
                    ,"Cogs 19"
                    ,"Cogs 20"
                    ,"Cogs 21"
                    ,"Cogs 22"
                    ,"Cogs 23"
                    ,"Cogs 24"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUSTYP" AS nvarchar(12) ) AS "CUSTYP"
                        ,CAST("CUSTOMER TYPE DESCRIPTION" AS nvarchar(120) ) AS "CUSTOMER TYPE DESCRIPTION"
                        ,CAST("SALES 1" AS decimal(36,4)) AS "SALES 1"
                        ,CAST("SALES 2" AS decimal(36,4)) AS "SALES 2"
                        ,CAST("SALES 3" AS decimal(36,4)) AS "SALES 3"
                        ,CAST("SALES 4" AS decimal(36,4)) AS "SALES 4"
                        ,CAST("SALES 5" AS decimal(36,4)) AS "SALES 5"
                        ,CAST("SALES 6" AS decimal(36,4)) AS "SALES 6"
                        ,CAST("SALES 7" AS decimal(36,4)) AS "SALES 7"
                        ,CAST("SALES 8" AS decimal(36,4)) AS "SALES 8"
                        ,CAST("SALES 9" AS decimal(36,4)) AS "SALES 9"
                        ,CAST("SALES 10" AS decimal(36,4)) AS "SALES 10"
                        ,CAST("SALES 11" AS decimal(36,4)) AS "SALES 11"
                        ,CAST("SALES 12" AS decimal(36,4)) AS "SALES 12"
                        ,CAST("SALES 13" AS decimal(36,4)) AS "SALES 13"
                        ,CAST("SALES 14" AS decimal(36,4)) AS "SALES 14"
                        ,CAST("SALES 15" AS decimal(36,4)) AS "SALES 15"
                        ,CAST("SALES 16" AS decimal(36,4)) AS "SALES 16"
                        ,CAST("SALES 17" AS decimal(36,4)) AS "SALES 17"
                        ,CAST("SALES 18" AS decimal(36,4)) AS "SALES 18"
                        ,CAST("SALES 19" AS decimal(36,4)) AS "SALES 19"
                        ,CAST("SALES 20" AS decimal(36,4)) AS "SALES 20"
                        ,CAST("SALES 21" AS decimal(36,4)) AS "SALES 21"
                        ,CAST("SALES 22" AS decimal(36,4)) AS "SALES 22"
                        ,CAST("SALES 23" AS decimal(36,4)) AS "SALES 23"
                        ,CAST("SALES 24" AS decimal(36,4)) AS "SALES 24"
                        ,CAST("COGS 1" AS decimal(36,4)) AS "COGS 1"
                        ,CAST("COGS 2" AS decimal(36,4)) AS "COGS 2"
                        ,CAST("COGS 3" AS decimal(36,4)) AS "COGS 3"
                        ,CAST("COGS 4" AS decimal(36,4)) AS "COGS 4"
                        ,CAST("COGS 5" AS decimal(36,4)) AS "COGS 5"
                        ,CAST("COGS 6" AS decimal(36,4)) AS "COGS 6"
                        ,CAST("COGS 7" AS decimal(36,4)) AS "COGS 7"
                        ,CAST("COGS 8" AS decimal(36,4)) AS "COGS 8"
                        ,CAST("COGS 9" AS decimal(36,4)) AS "COGS 9"
                        ,CAST("COGS 10" AS decimal(36,4)) AS "COGS 10"
                        ,CAST("COGS 11" AS decimal(36,4)) AS "COGS 11"
                        ,CAST("COGS 12" AS decimal(36,4)) AS "COGS 12"
                        ,CAST("COGS 13" AS decimal(36,4)) AS "COGS 13"
                        ,CAST("COGS 14" AS decimal(36,4)) AS "COGS 14"
                        ,CAST("COGS 15" AS decimal(36,4)) AS "COGS 15"
                        ,CAST("COGS 16" AS decimal(36,4)) AS "COGS 16"
                        ,CAST("COGS 17" AS decimal(36,4)) AS "COGS 17"
                        ,CAST("COGS 18" AS decimal(36,4)) AS "COGS 18"
                        ,CAST("COGS 19" AS decimal(36,4)) AS "COGS 19"
                        ,CAST("COGS 20" AS decimal(36,4)) AS "COGS 20"
                        ,CAST("COGS 21" AS decimal(36,4)) AS "COGS 21"
                        ,CAST("COGS 22" AS decimal(36,4)) AS "COGS 22"
                        ,CAST("COGS 23" AS decimal(36,4)) AS "COGS 23"
                        ,CAST("COGS 24" AS decimal(36,4)) AS "COGS 24"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "CusTyp"
                            , "Customer Type Description"
                            , "Sales 1"
                            , "Sales 2"
                            , "Sales 3"
                            , "Sales 4"
                            , "Sales 5"
                            , "Sales 6"
                            , "Sales 7"
                            , "Sales 8"
                            , "Sales 9"
                            , "Sales 10"
                            , "Sales 11"
                            , "Sales 12"
                            , "Sales 13"
                            , "Sales 14"
                            , "Sales 15"
                            , "Sales 16"
                            , "Sales 17"
                            , "Sales 18"
                            , "Sales 19"
                            , "Sales 20"
                            , "Sales 21"
                            , "Sales 22"
                            , "Sales 23"
                            , "Sales 24"
                            , "Cogs 1"
                            , "Cogs 2"
                            , "Cogs 3"
                            , "Cogs 4"
                            , "Cogs 5"
                            , "Cogs 6"
                            , "Cogs 7"
                            , "Cogs 8"
                            , "Cogs 9"
                            , "Cogs 10"
                            , "Cogs 11"
                            , "Cogs 12"
                            , "Cogs 13"
                            , "Cogs 14"
                            , "Cogs 15"
                            , "Cogs 16"
                            , "Cogs 17"
                            , "Cogs 18"
                            , "Cogs 19"
                            , "Cogs 20"
                            , "Cogs 21"
                            , "Cogs 22"
                            , "Cogs 23"
                            , "Cogs 24"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_DLAREA"
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
