

CREATE VIEW "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_INVENTORY_TAGS"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:51 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_INVENTORY_TAGS"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "TAG_ID"
        ,"PHYSICAL_INVENTORY_ID"
        ,"ORGANIZATION_ID"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"VOID_FLAG"
        ,"TAG_NUMBER"
        ,"ADJUSTMENT_ID"
        ,"INVENTORY_ITEM_ID"
        ,"TAG_QUANTITY"
        ,"TAG_UOM"
        ,"TAG_QUANTITY_AT_STANDARD_UOM"
        ,"STANDARD_UOM"
        ,"SUBINVENTORY"
        ,"LOCATOR_ID"
        ,"LOT_NUMBER"
        ,"LOT_EXPIRATION_DATE"
        ,"REVISION"
        ,"SERIAL_NUM"
        ,"COUNTED_BY_EMPLOYEE_ID"
        ,"LOT_SERIAL_CONTROLS"
        ,"ATTRIBUTE_CATEGORY"
        ,"ATTRIBUTE1"
        ,"ATTRIBUTE2"
        ,"ATTRIBUTE3"
        ,"ATTRIBUTE4"
        ,"ATTRIBUTE5"
        ,"ATTRIBUTE6"
        ,"ATTRIBUTE7"
        ,"ATTRIBUTE8"
        ,"ATTRIBUTE9"
        ,"ATTRIBUTE10"
        ,"ATTRIBUTE11"
        ,"ATTRIBUTE12"
        ,"ATTRIBUTE13"
        ,"ATTRIBUTE14"
        ,"ATTRIBUTE15"
        ,"REQUEST_ID"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
        ,"PARENT_LPN_ID"
        ,"OUTERMOST_LPN_ID"
        ,"COST_GROUP_ID"
        ,"TAG_SECONDARY_QUANTITY"
        ,"TAG_SECONDARY_UOM"
        ,"TAG_QTY_AT_STD_SECONDARY_UOM"
        ,"STANDARD_SECONDARY_UOM"
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
    FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORY_TAGS" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
