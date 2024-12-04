

CREATE PROCEDURE "STG"."LOAD_STG_CA_DLREBATE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:39:37 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_DLREBATE";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_DLREBATE"    "STG"."STG_CA_DLREBATE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_DLREBATE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_DLREBATE"
                (
                    "Cust#"
                    ,"T"
                    ,"Reb%"
                    ,"GlLiabAcc#"
                    ,"Plan#"
                    ,"Plan Start"
                    ,"RebVal 1"
                    ,"RebVal 2"
                    ,"RebVal 3"
                    ,"RebVal 4"
                    ,"RebVal 5"
                    ,"RebVal 6"
                    ,"RebVal 7"
                    ,"RebVal 8"
                    ,"RebVal 9"
                    ,"RebVal10"
                    ,"RebVal11"
                    ,"RebVal12"
                    ,"RebVal13"
                    ,"RebVal14"
                    ,"RebVal15"
                    ,"RebVal16"
                    ,"RebVal17"
                    ,"RebVal18"
                    ,"RebVal19"
                    ,"RebVal20"
                    ,"RebVal21"
                    ,"RebVal22"
                    ,"RebVal23"
                    ,"RebVal24"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CUST#" AS decimal(36,4)) AS "CUST#"
                        ,CAST("T" AS nvarchar(2) ) AS "T"
                        ,CAST("REB%" AS decimal(36,4)) AS "REB%"
                        ,CAST("GLLIABACC#" AS nvarchar(20) ) AS "GLLIABACC#"
                        ,CAST("PLAN#" AS decimal(36,4)) AS "PLAN#"
                        ,TRY_CONVERT(datetime2,"Plan Start",104) AS "PLAN START"
                        ,CAST("REBVAL 1" AS decimal(36,4)) AS "REBVAL 1"
                        ,CAST("REBVAL 2" AS decimal(36,4)) AS "REBVAL 2"
                        ,CAST("REBVAL 3" AS decimal(36,4)) AS "REBVAL 3"
                        ,CAST("REBVAL 4" AS decimal(36,4)) AS "REBVAL 4"
                        ,CAST("REBVAL 5" AS decimal(36,4)) AS "REBVAL 5"
                        ,CAST("REBVAL 6" AS decimal(36,4)) AS "REBVAL 6"
                        ,CAST("REBVAL 7" AS decimal(36,4)) AS "REBVAL 7"
                        ,CAST("REBVAL 8" AS decimal(36,4)) AS "REBVAL 8"
                        ,CAST("REBVAL 9" AS decimal(36,4)) AS "REBVAL 9"
                        ,CAST("REBVAL10" AS decimal(36,4)) AS "REBVAL10"
                        ,CAST("REBVAL11" AS decimal(36,4)) AS "REBVAL11"
                        ,CAST("REBVAL12" AS decimal(36,4)) AS "REBVAL12"
                        ,CAST("REBVAL13" AS decimal(36,4)) AS "REBVAL13"
                        ,CAST("REBVAL14" AS decimal(36,4)) AS "REBVAL14"
                        ,CAST("REBVAL15" AS decimal(36,4)) AS "REBVAL15"
                        ,CAST("REBVAL16" AS decimal(36,4)) AS "REBVAL16"
                        ,CAST("REBVAL17" AS decimal(36,4)) AS "REBVAL17"
                        ,CAST("REBVAL18" AS decimal(36,4)) AS "REBVAL18"
                        ,CAST("REBVAL19" AS decimal(36,4)) AS "REBVAL19"
                        ,CAST("REBVAL20" AS decimal(36,4)) AS "REBVAL20"
                        ,CAST("REBVAL21" AS decimal(36,4)) AS "REBVAL21"
                        ,CAST("REBVAL22" AS decimal(36,4)) AS "REBVAL22"
                        ,CAST("REBVAL23" AS decimal(36,4)) AS "REBVAL23"
                        ,CAST("REBVAL24" AS decimal(36,4)) AS "REBVAL24"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Cust#"
                            , "T"
                            , "Reb%"
                            , "GlLiabAcc#"
                            , "Plan#"
                            , "Plan Start"
                            , "RebVal 1"
                            , "RebVal 2"
                            , "RebVal 3"
                            , "RebVal 4"
                            , "RebVal 5"
                            , "RebVal 6"
                            , "RebVal 7"
                            , "RebVal 8"
                            , "RebVal 9"
                            , "RebVal10"
                            , "RebVal11"
                            , "RebVal12"
                            , "RebVal13"
                            , "RebVal14"
                            , "RebVal15"
                            , "RebVal16"
                            , "RebVal17"
                            , "RebVal18"
                            , "RebVal19"
                            , "RebVal20"
                            , "RebVal21"
                            , "RebVal22"
                            , "RebVal23"
                            , "RebVal24"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_DLREBATE"
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
