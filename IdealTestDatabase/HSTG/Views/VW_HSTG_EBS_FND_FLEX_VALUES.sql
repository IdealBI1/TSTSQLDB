CREATE VIEW "HSTG"."VW_HSTG_EBS_FND_FLEX_VALUES" 

AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        4/05/2022 6:47:17 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_FND_FLEX_VALUES"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-05-04    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "FLEX_VALUE_SET_ID"
        ,"FLEX_VALUE_ID"
        ,"FLEX_VALUE"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"LAST_UPDATE_LOGIN"
        ,"ENABLED_FLAG"
        ,"SUMMARY_FLAG"
        ,"START_DATE_ACTIVE"
        ,"END_DATE_ACTIVE"
        ,"PARENT_FLEX_VALUE_LOW"
        ,"PARENT_FLEX_VALUE_HIGH"
        ,"STRUCTURED_HIERARCHY_LEVEL"
        ,"HIERARCHY_LEVEL"
        ,"COMPILED_VALUE_ATTRIBUTES"
        ,"VALUE_CATEGORY"
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
        ,"ATTRIBUTE21"
        ,"ATTRIBUTE22"
        ,"ATTRIBUTE23"
        ,"ATTRIBUTE24"
        ,"ATTRIBUTE25"
        ,"ATTRIBUTE26"
        ,"ATTRIBUTE27"
        ,"ATTRIBUTE28"
        ,"ATTRIBUTE29"
        ,"ATTRIBUTE30"
        ,"ATTRIBUTE31"
        ,"ATTRIBUTE32"
        ,"ATTRIBUTE33"
        ,"ATTRIBUTE34"
        ,"ATTRIBUTE35"
        ,"ATTRIBUTE36"
        ,"ATTRIBUTE37"
        ,"ATTRIBUTE38"
        ,"ATTRIBUTE39"
        ,"ATTRIBUTE40"
        ,"ATTRIBUTE41"
        ,"ATTRIBUTE42"
        ,"ATTRIBUTE43"
        ,"ATTRIBUTE44"
        ,"ATTRIBUTE45"
        ,"ATTRIBUTE46"
        ,"ATTRIBUTE47"
        ,"ATTRIBUTE48"
        ,"ATTRIBUTE49"
        ,"ATTRIBUTE50"
        ,"ATTRIBUTE_SORT_ORDER"
        ,"OMD_INSERT_DATETIME"
        ,"OMD_FILE_NAME"
        ,"OMD_HASH_FULL_RECORD"
        ,"OMD_IS_RECORD_DELETED"
        ,"OMD_CURRENT_RECORD_INDICATOR"
        ,'EBS'  "OMD_RECORD_SOURCE"
    FROM "HSTG"."HSTG_EBS_FND_FLEX_VALUES" H
    WHERE OMD_CURRENT_RECORD_INDICATOR= 'Y'
