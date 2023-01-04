

CREATE PROCEDURE "STG"."LOAD_STG_CA_SYTABLES_DLCA"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:58 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SYTABLES_DLCA";
    
    
    Source                          Destination                  
    ----------------------------    ---------------------------- 
    LND"."LND_CA_SYTABLES_DLCA"    "STG"."STG_CA_SYTABLES_DLCA" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SYTABLES_DLCA";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SYTABLES_DLCA"
                (
                    "Crm Territory Description"
                    ,"Crl"
                    ,"Sp1"
                    ,"Sp2"
                    ,"Sp3"
                    ,"Sp4"
                    ,"Sp5"
                    ,"Sp6"
                    ,"Msp"
                    ,"Crmt"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("CRM TERRITORY DESCRIPTION" AS nvarchar(240) ) AS "CRM TERRITORY DESCRIPTION"
                        ,CAST("CRL" AS nvarchar(120) ) AS "CRL"
                        ,CAST("SP1" AS nvarchar(20) ) AS "SP1"
                        ,CAST("SP2" AS nvarchar(20) ) AS "SP2"
                        ,CAST("SP3" AS nvarchar(20) ) AS "SP3"
                        ,CAST("SP4" AS nvarchar(20) ) AS "SP4"
                        ,CAST("SP5" AS nvarchar(20) ) AS "SP5"
                        ,CAST("SP6" AS nvarchar(20) ) AS "SP6"
                        ,CAST("MSP" AS nvarchar(20) ) AS "MSP"
                        ,CAST("CRMT" AS decimal(36,4)) AS "CRMT"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "Crm Territory Description"
                            , "Crl"
                            , "Sp1"
                            , "Sp2"
                            , "Sp3"
                            , "Sp4"
                            , "Sp5"
                            , "Sp6"
                            , "Msp"
                            , "Crmt"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SYTABLES_DLCA"
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
