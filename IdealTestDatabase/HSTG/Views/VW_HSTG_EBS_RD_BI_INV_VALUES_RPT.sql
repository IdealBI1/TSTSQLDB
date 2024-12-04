

CREATE VIEW "HSTG"."VW_HSTG_EBS_RD_BI_INV_VALUES_RPT"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        19/12/2022 5:19:18 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_RD_BI_INV_VALUES_RPT"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-19    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "DC"
        ,"SUBINV_NAME"
        ,"LOCATOR_CODE"
        ,"ITEM_CODE"
        ,"CATEGORY_CODE"
        ,"STOCK_QTY"
        ,"INTRANSIT_QTY"
        ,"RECEIVING_QTY"
        ,"STOCK_VALUE"
        ,"INTRANSIT_VALUE"
        ,"RECEIVING_VALUE"
        ,"ITEM_COST"
        ,"AS_OF_DATE"
        ,"CREATION_DATE"
        ,"TOTAL_QTY"
        ,"UNRECEIVED_PO_QTY"
        ,"BO_QTY"
	,"META_RECORD_KEY"
    ,"META_EFFECTIVE_DATETIME"
    ,"META_EXPIRY_DATETIME"
    ,"META_CDC_OPERATION"
    ,"META_FILE_NAME"
    ,"META_CURRENT_RECORD_INDICATOR"
    ,"META_DELETE_INDICATOR"
    ,"META_RECORD_CHECKSUM"
    ,"META_RECORD_SOURCE"
    ,"META_ROW_ID"
    FROM "HSTG"."HSTG_EBS_RD_BI_INV_VALUES_RPT" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
