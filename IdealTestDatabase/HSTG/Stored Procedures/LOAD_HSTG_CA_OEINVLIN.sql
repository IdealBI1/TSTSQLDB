

CREATE Procedure[HSTG].[LOAD_HSTG_CA_OEINVLIN]
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/03/2022 6:46:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    EXEC "HSTG"."LOAD_HSTG_CA_OEINVLIN";
    
    Source                     Destination               
    -----------------------    ------------------------ 
    STG"."STG_CA_OEINVLIN"    "HSTG"."HSTG_CA_OEINVLIN" 
    
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
        SELECT @ROW_COUNT = COUNT_BIG(*)  FROM  "STG"."STG_CA_OEINVLIN"
        IF (@ROW_COUNT > 0)
        BEGIN
        /* Step 2:  IMPORT FROM STAGING TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_OEINVLIN"
                (
                    "Invoice#"
                    ,"Inl#"
                    ,"Item Code"
                    ,"Memo#"
                    ,"Sale Qty"
                    ,"Disc %"
                    ,"Disc Value"
                    ,"LinePrice"
                    ,"SV Gst Incl"
                    ,"Loc"
                    ,"Lto"
                    ,"Cogs Value"
                    ,"Gst Value"
                    ,"Gst %"
                    ,"P"
                    ,"Reas"
                    ,"Backord Qty"
                    ,"Order Qty"
                    ,"CusTyp"
                    ,"Spn"
                    ,"OeIncat"
                    ,"Trans Date"
                    ,"Pd"
                    ,"Cust#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Invoice#"
                    ,"Inl#"
                    ,"Item Code"
                    ,"Memo#"
                    ,"Sale Qty"
                    ,"Disc %"
                    ,"Disc Value"
                    ,"LinePrice"
                    ,"SV Gst Incl"
                    ,"Loc"
                    ,"Lto"
                    ,"Cogs Value"
                    ,"Gst Value"
                    ,"Gst %"
                    ,"P"
                    ,"Reas"
                    ,"Backord Qty"
                    ,"Order Qty"
                    ,"CusTyp"
                    ,"Spn"
                    ,"OeIncat"
                    ,"Trans Date"
                    ,"Pd"
                    ,"Cust#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'N' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "STG"."STG_CA_OEINVLIN" S
                WHERE NOT EXISTS(SELECT 1 FROM "HSTG"."HSTG_CA_OEINVLIN" H WHERE H.OMD_CURRENT_RECORD_INDICATOR = 'Y' AND OMD_IS_RECORD_DELETED = 'N' AND H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)



            /* Step 3:  IMPORT DELETED RECORDS FROM HISTORY TO HISTORY */
                INSERT INTO "HSTG"."HSTG_CA_OEINVLIN"
                (
                    "Invoice#"
                    ,"Inl#"
                    ,"Item Code"
                    ,"Memo#"
                    ,"Sale Qty"
                    ,"Disc %"
                    ,"Disc Value"
                    ,"LinePrice"
                    ,"SV Gst Incl"
                    ,"Loc"
                    ,"Lto"
                    ,"Cogs Value"
                    ,"Gst Value"
                    ,"Gst %"
                    ,"P"
                    ,"Reas"
                    ,"Backord Qty"
                    ,"Order Qty"
                    ,"CusTyp"
                    ,"Spn"
                    ,"OeIncat"
                    ,"Trans Date"
                    ,"Pd"
                    ,"Cust#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,"OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,"OMD_IS_RECORD_DELETED"
                    ,"OMD_CURRENT_RECORD_INDICATOR"
                )
                SELECT 
                    "Invoice#"
                    ,"Inl#"
                    ,"Item Code"
                    ,"Memo#"
                    ,"Sale Qty"
                    ,"Disc %"
                    ,"Disc Value"
                    ,"LinePrice"
                    ,"SV Gst Incl"
                    ,"Loc"
                    ,"Lto"
                    ,"Cogs Value"
                    ,"Gst Value"
                    ,"Gst %"
                    ,"P"
                    ,"Reas"
                    ,"Backord Qty"
                    ,"Order Qty"
                    ,"CusTyp"
                    ,"Spn"
                    ,"OeIncat"
                    ,"Trans Date"
                    ,"Pd"
                    ,"Cust#"
                    ,"Start Date"
                    ,"STime"
                    ,"Start By"
                    ,"Amend Date"
                    ,"ATime"
                    ,"Amend By"
                    ,CAST(SYSDATETIMEOFFSET() AT TIME ZONE 'AUS Eastern Standard Time' AS datetime2) AS "OMD_INSERT_DATETIME"
                    ,"OMD_FILE_NAME"
                    ,"OMD_HASH_FULL_RECORD"
                    ,'Y' AS "OMD_IS_RECORD_DELETED"
                    ,'Y' AS "OMD_CURRENT_RECORD_INDICATOR"
                FROM "HSTG"."HSTG_CA_OEINVLIN" H
                Where "OMD_INSERT_DATETIME" >= Dateadd(Month, -6, getdate())
					And NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_OEINVLIN" S WHERE 
                    COALESCE(H."INVOICE#",0) = COALESCE(S."INVOICE#",0)
                    AND COALESCE(H."INL#",0) = COALESCE(S."INL#",0)
                )
                    AND H.OMD_CURRENT_RECORD_INDICATOR='Y' AND H.OMD_IS_RECORD_DELETED='N'


            /* Step 4:  UPDATE OMD_CURRENT_RECORD_INDICATOR FLAG*/
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_OEINVLIN" H
                WHERE "OMD_IS_RECORD_DELETED" = 'N'
					AND EXISTS (SELECT 1 FROM "STG"."STG_CA_OEINVLIN" S WHERE 
                    COALESCE(H."INVOICE#",0) = COALESCE(S."INVOICE#",0)
                    AND COALESCE(H."INL#",0) = COALESCE(S."INL#",0)
            )
					AND NOT EXISTS (SELECT 1 FROM "STG"."STG_CA_OEINVLIN" S WHERE H.OMD_HASH_FULL_RECORD = S.OMD_HASH_FULL_RECORD)
            
                UPDATE  H SET OMD_CURRENT_RECORD_INDICATOR='N' 
                FROM "HSTG"."HSTG_CA_OEINVLIN" H
                WHERE "OMD_IS_RECORD_DELETED" = 'Y' AND EXISTS (SELECT 1 FROM "STG"."STG_CA_OEINVLIN" S WHERE 
                    COALESCE(H."INVOICE#",0) = COALESCE(S."INVOICE#",0)
                    AND COALESCE(H."INL#",0) = COALESCE(S."INL#",0)
            )

			Update HSTG.HSTG_CA_OEINVLIN 
			Set OMD_CURRENT_RECORD_INDICATOR = 'N'
			Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'N' 
				And Exists (Select *
							From HSTG.HSTG_CA_OEINVLIN T (nolock)
							Where OMD_CURRENT_RECORD_INDICATOR = 'Y' And OMD_IS_RECORD_DELETED = 'Y' 
									And T.[Invoice#] = HSTG_CA_OEINVLIN.[Invoice#] 
									And T.[Inl#] = HSTG_CA_OEINVLIN.[Inl#])            
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
