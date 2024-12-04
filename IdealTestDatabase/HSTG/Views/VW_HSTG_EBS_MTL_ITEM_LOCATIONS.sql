

CREATE VIEW "HSTG"."VW_HSTG_EBS_MTL_ITEM_LOCATIONS"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        14/10/2022 2:10:46 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_MTL_ITEM_LOCATIONS"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-10-14    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "INVENTORY_LOCATION_ID"
        ,"ORGANIZATION_ID"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"DESCRIPTION"
        ,"DESCRIPTIVE_TEXT"
        ,"DISABLE_DATE"
        ,"INVENTORY_LOCATION_TYPE"
        ,"PICKING_ORDER"
        ,"PHYSICAL_LOCATION_CODE"
        ,"LOCATION_MAXIMUM_UNITS"
        ,"SUBINVENTORY_CODE"
        ,"LOCATION_WEIGHT_UOM_CODE"
        ,"MAX_WEIGHT"
        ,"VOLUME_UOM_CODE"
        ,"MAX_CUBIC_AREA"
        ,"X_COORDINATE"
        ,"Y_COORDINATE"
        ,"Z_COORDINATE"
        ,"INVENTORY_ACCOUNT_ID"
        ,"SEGMENT1"
        ,"SEGMENT2"
        ,"SEGMENT3"
        ,"SEGMENT4"
        ,"SEGMENT5"
        ,"SEGMENT6"
        ,"SEGMENT7"
        ,"SEGMENT8"
        ,"SEGMENT9"
        ,"SEGMENT10"
        ,"SEGMENT11"
        ,"SEGMENT12"
        ,"SEGMENT13"
        ,"SEGMENT14"
        ,"SEGMENT15"
        ,"SEGMENT16"
        ,"SEGMENT17"
        ,"SEGMENT18"
        ,"SEGMENT19"
        ,"SEGMENT20"
        ,"SUMMARY_FLAG"
        ,"ENABLED_FLAG"
        ,"START_DATE_ACTIVE"
        ,"END_DATE_ACTIVE"
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
        ,"PROJECT_ID"
        ,"TASK_ID"
        ,"PHYSICAL_LOCATION_ID"
        ,"PICK_UOM_CODE"
        ,"DIMENSION_UOM_CODE"
        ,"LENGTH"
        ,"WIDTH"
        ,"HEIGHT"
        ,"LOCATOR_STATUS"
        ,"STATUS_ID"
        ,"CURRENT_CUBIC_AREA"
        ,"AVAILABLE_CUBIC_AREA"
        ,"CURRENT_WEIGHT"
        ,"AVAILABLE_WEIGHT"
        ,"LOCATION_CURRENT_UNITS"
        ,"LOCATION_AVAILABLE_UNITS"
        ,"INVENTORY_ITEM_ID"
        ,"SUGGESTED_CUBIC_AREA"
        ,"SUGGESTED_WEIGHT"
        ,"LOCATION_SUGGESTED_UNITS"
        ,"EMPTY_FLAG"
        ,"MIXED_ITEMS_FLAG"
        ,"DROPPING_ORDER"
        ,"AVAILABILITY_TYPE"
        ,"INVENTORY_ATP_CODE"
        ,"RESERVABLE_TYPE"
        ,"ALIAS"
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
    FROM "HSTG"."HSTG_EBS_MTL_ITEM_LOCATIONS" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
