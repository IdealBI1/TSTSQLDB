

CREATE VIEW "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        21/12/2022 8:37:38 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-21    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "ADJUSTMENT_ID"
        ,"ORGANIZATION_ID"
        ,"PHYSICAL_INVENTORY_ID"
        ,"INVENTORY_ITEM_ID"
        ,"SUBINVENTORY_NAME"
        ,"SYSTEM_QUANTITY"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"COUNT_QUANTITY"
        ,"ADJUSTMENT_QUANTITY"
        ,"REVISION"
        ,"LOCATOR_ID"
        ,"LOT_NUMBER"
        ,"LOT_EXPIRATION_DATE"
        ,"SERIAL_NUMBER"
        ,"ACTUAL_COST"
        ,"APPROVAL_STATUS"
        ,"APPROVED_BY_EMPLOYEE_ID"
        ,"AUTOMATIC_APPROVAL_CODE"
        ,"GL_ADJUST_ACCOUNT"
        ,"REQUEST_ID"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
        ,"LOT_SERIAL_CONTROLS"
        ,"TEMP_APPROVER"
        ,"PARENT_LPN_ID"
        ,"OUTERMOST_LPN_ID"
        ,"COST_GROUP_ID"
        ,"SECONDARY_SYSTEM_QTY"
        ,"SECONDARY_COUNT_QTY"
        ,"SECONDARY_ADJUSTMENT_QTY"
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
    FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_ADJUSTMENTS" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
