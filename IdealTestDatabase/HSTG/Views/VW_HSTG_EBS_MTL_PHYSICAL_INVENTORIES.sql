

CREATE VIEW "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_INVENTORIES"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:48 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_MTL_PHYSICAL_INVENTORIES"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "PHYSICAL_INVENTORY_ID"
        ,"ORGANIZATION_ID"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"PHYSICAL_INVENTORY_DATE"
        ,"LAST_ADJUSTMENT_DATE"
        ,"TOTAL_ADJUSTMENT_VALUE"
        ,"DESCRIPTION"
        ,"FREEZE_DATE"
        ,"PHYSICAL_INVENTORY_NAME"
        ,"APPROVAL_REQUIRED"
        ,"ALL_SUBINVENTORIES_FLAG"
        ,"NEXT_TAG_NUMBER"
        ,"TAG_NUMBER_INCREMENTS"
        ,"DEFAULT_GL_ADJUST_ACCOUNT"
        ,"REQUEST_ID"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
        ,"APPROVAL_TOLERANCE_POS"
        ,"APPROVAL_TOLERANCE_NEG"
        ,"COST_VARIANCE_POS"
        ,"COST_VARIANCE_NEG"
        ,"NUMBER_OF_SKUS"
        ,"DYNAMIC_TAG_ENTRY_FLAG"
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
        ,"ATTRIBUTE_CATEGORY"
        ,"EXCLUDE_ZERO_BALANCE"
        ,"EXCLUDE_NEGATIVE_BALANCE"
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
    FROM "HSTG"."HSTG_EBS_MTL_PHYSICAL_INVENTORIES" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
