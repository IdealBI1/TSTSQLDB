

CREATE PROCEDURE "STG"."LOAD_STG_CA_SOCOLINE"
AS 
BEGIN 


SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:11 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "STG"."LOAD_STG_CA_SOCOLINE";
    
    
    Source                     Destination             
    -----------------------    ----------------------- 
    LND"."LND_CA_SOCOLINE"    "STG"."STG_CA_SOCOLINE" 
    
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
                TRUNCATE TABLE "STG"."STG_CA_SOCOLINE";
        
        
        /* Step 2:  IMPORT FROM LANDING TO STAGING*/
                INSERT INTO "STG"."STG_CA_SOCOLINE"
                (
                    "So#"
                    ,"Co#"
                    ,"Sol#"
                    ,"Item Code"
                    ,"Deliv Date"
                    ,"Comment"
                    ,"Order Qty"
                    ,"LinePrice"
                    ,"Disc %"
                    ,"Order Value"
                    ,"Loc"
                    ,"X"
                    ,"Gst%"
                    ,"Gst Value"
                    ,"Disc Value"
                    ,"Customer Reference"
                    ,"Inmast Description"
                    ,"InmTrdPrc"
                    ,"InmRetPrc"
                    ,"Uom"
                    ,"CancelQty"
                    ,"Net Qty"
                    ,"Net Value"
                    ,"Net Gst"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                )
                SELECT * FROM (
                    SELECT 
                        CAST("SO#" AS nvarchar(20) ) AS "SO#"
                        ,CAST("CO#" AS decimal(36,4)) AS "CO#"
                        ,CAST("SOL#" AS decimal(36,4)) AS "SOL#"
                        ,CAST("ITEM CODE" AS nvarchar(60) ) AS "ITEM CODE"
                        ,TRY_CONVERT(datetime2,"Deliv Date",104) AS "DELIV DATE"
                        ,CAST("COMMENT" AS nvarchar(2000) ) AS "COMMENT"
                        ,CAST("ORDER QTY" AS decimal(36,4)) AS "ORDER QTY"
                        ,CAST("LINEPRICE" AS decimal(36,4)) AS "LINEPRICE"
                        ,CAST("DISC %" AS decimal(36,4)) AS "DISC %"
                        ,CAST("ORDER VALUE" AS decimal(36,4)) AS "ORDER VALUE"
                        ,CAST("LOC" AS nvarchar(6) ) AS "LOC"
                        ,CAST("X" AS nvarchar(2) ) AS "X"
                        ,CAST("GST%" AS decimal(36,4)) AS "GST%"
                        ,CAST("GST VALUE" AS decimal(36,4)) AS "GST VALUE"
                        ,CAST("DISC VALUE" AS decimal(36,4)) AS "DISC VALUE"
                        ,CAST("CUSTOMER REFERENCE" AS nvarchar(100) ) AS "CUSTOMER REFERENCE"
                        ,CAST("INMAST DESCRIPTION" AS nvarchar(240) ) AS "INMAST DESCRIPTION"
                        ,CAST("INMTRDPRC" AS decimal(36,4)) AS "INMTRDPRC"
                        ,CAST("INMRETPRC" AS decimal(36,4)) AS "INMRETPRC"
                        ,CAST("UOM" AS nvarchar(20) ) AS "UOM"
                        ,CAST("CANCELQTY" AS decimal(36,4)) AS "CANCELQTY"
                        ,CAST("NET QTY" AS decimal(36,4)) AS "NET QTY"
                        ,CAST("NET VALUE" AS decimal(36,4)) AS "NET VALUE"
                        ,CAST("NET GST" AS decimal(36,4)) AS "NET GST"
                        ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                        ,"OMD_FILE_NAME"
                        ,CONVERT(NVARCHAR(32),HASHBYTES('MD5',CONCAT_WS( '||','||',
                            "So#"
                            , "Co#"
                            , "Sol#"
                            , "Item Code"
                            , "Deliv Date"
                            , "Comment"
                            , "Order Qty"
                            , "LinePrice"
                            , "Disc %"
                            , "Order Value"
                            , "Loc"
                            , "X"
                            , "Gst%"
                            , "Gst Value"
                            , "Disc Value"
                            , "Customer Reference"
                            , "Inmast Description"
                            , "InmTrdPrc"
                            , "InmRetPrc"
                            , "Uom"
                            , "CancelQty"
                            , "Net Qty"
                            , "Net Value"
                            , "Net Gst"
                        ,'||')),2) AS OMD_HASH_FULL_RECORD
                    FROM "LND"."LND_CA_SOCOLINE"
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
