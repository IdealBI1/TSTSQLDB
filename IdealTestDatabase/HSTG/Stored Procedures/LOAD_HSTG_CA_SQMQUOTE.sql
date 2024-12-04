

CREATE Procedure[HSTG].[LOAD_HSTG_CA_SQMQUOTE]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:47:13 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_CA_SQMQUOTE";
    
    Source                     Destination               
    -----------------------    ------------------------ 
    STG"."STG_CA_SQMQUOTE"    "HSTG"."HSTG_CA_SQMQUOTE" 
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-03-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
	2022-06-03	  Sameh Hassan		Modified the “Deleted” flag to consider last 6 months only
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    
    
    BEGIN TRY
    
        /* ETL - Starting ETL Code */
        /* Step 1:  CALL CHECK RECORD COUNT FROM STAGING TABLE*/
        DECLARE @ROW_COUNT BIGINT = 0;
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_SQMQUOTE"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_SQMQUOTE"
                (
                    "Sq#"
                    ,"Cust#"
                    ,"Quote Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"DelCod"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"QV Gst Incl"
                    ,"Valid Date"
                    ,"Cogs Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"ProjPB"
                    ,"Webshop / Copy2So#-Sq#"
                    ,"Quote Salutation"
                    ,"PC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Email"
                    ,"Contact Mobile"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"P"
                    ,"CopyFmSq#"
                    ,"Pstcde"
                    ,"Delivery Mode"
                    ,"Order Placed By"
                    ,"Rfq#"
                    ,"QteNeedDat"
                    ,"Quote Description"
                    ,"W"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Sq#"
                    ,"Cust#"
                    ,"Quote Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"DelCod"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"QV Gst Incl"
                    ,"Valid Date"
                    ,"Cogs Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"ProjPB"
                    ,"Webshop / Copy2So#-Sq#"
                    ,"Quote Salutation"
                    ,"PC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Email"
                    ,"Contact Mobile"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"P"
                    ,"CopyFmSq#"
                    ,"Pstcde"
                    ,"Delivery Mode"
                    ,"Order Placed By"
                    ,"Rfq#"
                    ,"QteNeedDat"
                    ,"Quote Description"
                    ,"W"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_SQMQUOTE" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_SQMQUOTE" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_SQMQUOTE"
                (
                    "Sq#"
                    ,"Cust#"
                    ,"Quote Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"DelCod"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"QV Gst Incl"
                    ,"Valid Date"
                    ,"Cogs Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"ProjPB"
                    ,"Webshop / Copy2So#-Sq#"
                    ,"Quote Salutation"
                    ,"PC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Email"
                    ,"Contact Mobile"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"P"
                    ,"CopyFmSq#"
                    ,"Pstcde"
                    ,"Delivery Mode"
                    ,"Order Placed By"
                    ,"Rfq#"
                    ,"QteNeedDat"
                    ,"Quote Description"
                    ,"W"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Sq#"
                    ,"Cust#"
                    ,"Quote Date"
                    ,"Customer Reference"
                    ,"Deliv Date"
                    ,"H"
                    ,"Spn"
                    ,"DelCod"
                    ,"Delivery Name"
                    ,"Delivery Address Line 1"
                    ,"Delivery Address Line 2"
                    ,"Delivery Address Line 3"
                    ,"Contact"
                    ,"Phone"
                    ,"Fax"
                    ,"QV Gst Incl"
                    ,"Valid Date"
                    ,"Cogs Value"
                    ,"T"
                    ,"S"
                    ,"Pr"
                    ,"I"
                    ,"F"
                    ,"ProjPB"
                    ,"Webshop / Copy2So#-Sq#"
                    ,"Quote Salutation"
                    ,"PC"
                    ,"TxCert"
                    ,"Loc"
                    ,"Gst Value"
                    ,"Email"
                    ,"Contact Mobile"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"P"
                    ,"CopyFmSq#"
                    ,"Pstcde"
                    ,"Delivery Mode"
                    ,"Order Placed By"
                    ,"Rfq#"
                    ,"QteNeedDat"
                    ,"Quote Description"
                    ,"W"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_SQMQUOTE" H
                Where "OMD_INSERT_DATETIME" >= Dateadd(Month, -6, getdate())
					And NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_SQMQUOTE" S WHERE 
                    COALESCE(H."SQ#",'''') = COALESCE(S."SQ#",'''')
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_SQMQUOTE" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N'
					AND EXISTS (SELECT 1 FROM "STG"."STG_CA_SQMQUOTE" S WHERE 
                    COALESCE(H."SQ#",'''') = COALESCE(S."SQ#",'''')
            )
					AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_SQMQUOTE" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_SQMQUOTE" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_SQMQUOTE" S WHERE 
                    COALESCE(H."SQ#",'''') = COALESCE(S."SQ#",'''')
            )

			Update HSTG.HSTG_CA_SQMQUOTE 
			Set OMD_CURRENT_RECORD_INDICATOR = 'N'
			Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'N' 
				And Exists (Select *
							From HSTG.HSTG_CA_SQMQUOTE T (nolock)
							Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'Y' 
									And T.[Sq#] = HSTG_CA_SQMQUOTE.[Sq#])

            
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
