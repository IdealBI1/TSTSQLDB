

CREATE VIEW "HSTG"."VW_HSTG_EBS_HR_LOCATIONS"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        8/11/2022 12:13:59 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_HR_LOCATIONS"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-11-08    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "LOCATION_ID"
        ,"LOCATION_CODE"
        ,"LOCATION_USE"
        ,"BUSINESS_GROUP_ID"
        ,"DESCRIPTION"
        ,"SHIP_TO_LOCATION_ID"
        ,"SHIP_TO_SITE_FLAG"
        ,"RECEIVING_SITE_FLAG"
        ,"BILL_TO_SITE_FLAG"
        ,"IN_ORGANIZATION_FLAG"
        ,"OFFICE_SITE_FLAG"
        ,"DESIGNATED_RECEIVER_ID"
        ,"INVENTORY_ORGANIZATION_ID"
        ,"TAX_NAME"
        ,"INACTIVE_DATE"
        ,"STYLE"
        ,"ADDRESS_LINE_1"
        ,"ADDRESS_LINE_2"
        ,"ADDRESS_LINE_3"
        ,"TOWN_OR_CITY"
        ,"COUNTRY"
        ,"POSTAL_CODE"
        ,"REGION_1"
        ,"REGION_2"
        ,"REGION_3"
        ,"TELEPHONE_NUMBER_1"
        ,"TELEPHONE_NUMBER_2"
        ,"TELEPHONE_NUMBER_3"
        ,"LOC_INFORMATION13"
        ,"LOC_INFORMATION14"
        ,"LOC_INFORMATION15"
        ,"LOC_INFORMATION16"
        ,"LOC_INFORMATION17"
        ,"LOC_INFORMATION18"
        ,"LOC_INFORMATION19"
        ,"LOC_INFORMATION20"
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
        ,"ATTRIBUTE16"
        ,"ATTRIBUTE17"
        ,"ATTRIBUTE18"
        ,"ATTRIBUTE19"
        ,"ATTRIBUTE20"
        ,"GLOBAL_ATTRIBUTE_CATEGORY"
        ,"GLOBAL_ATTRIBUTE1"
        ,"GLOBAL_ATTRIBUTE2"
        ,"GLOBAL_ATTRIBUTE3"
        ,"GLOBAL_ATTRIBUTE4"
        ,"GLOBAL_ATTRIBUTE5"
        ,"GLOBAL_ATTRIBUTE6"
        ,"GLOBAL_ATTRIBUTE7"
        ,"GLOBAL_ATTRIBUTE8"
        ,"GLOBAL_ATTRIBUTE9"
        ,"GLOBAL_ATTRIBUTE10"
        ,"GLOBAL_ATTRIBUTE11"
        ,"GLOBAL_ATTRIBUTE12"
        ,"GLOBAL_ATTRIBUTE13"
        ,"GLOBAL_ATTRIBUTE14"
        ,"GLOBAL_ATTRIBUTE15"
        ,"GLOBAL_ATTRIBUTE16"
        ,"GLOBAL_ATTRIBUTE17"
        ,"GLOBAL_ATTRIBUTE18"
        ,"GLOBAL_ATTRIBUTE19"
        ,"GLOBAL_ATTRIBUTE20"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"CREATED_BY"
        ,"CREATION_DATE"
        ,"ENTERED_BY"
        ,"TP_HEADER_ID"
        ,"ECE_TP_LOCATION_CODE"
        ,"OBJECT_VERSION_NUMBER"
        ,"LEGAL_ADDRESS_FLAG"
        ,"TIMEZONE_CODE"
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
    FROM "HSTG"."HSTG_EBS_HR_LOCATIONS" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
