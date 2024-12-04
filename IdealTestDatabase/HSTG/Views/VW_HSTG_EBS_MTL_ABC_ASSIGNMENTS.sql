﻿

CREATE VIEW "HSTG"."VW_HSTG_EBS_MTL_ABC_ASSIGNMENTS"
AS


    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Email:       composer@one51.com.au
    Date:        2/11/2022 1:26:21 pm
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    
    SELECT TOP 10 * FROM  "HSTG"."VW_HSTG_EBS_MTL_ABC_ASSIGNMENTS"();
    
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-11-02    ONE51 COMPOSER    THIS IS AN AUTO GENERATED SCRIPT FROM ONE51 COMPOSER
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */


    SELECT
        "INVENTORY_ITEM_ID"
        ,"ASSIGNMENT_GROUP_ID"
        ,"ABC_CLASS_ID"
        ,"LAST_UPDATE_DATE"
        ,"LAST_UPDATED_BY"
        ,"CREATION_DATE"
        ,"CREATED_BY"
        ,"REQUEST_ID"
        ,"PROGRAM_APPLICATION_ID"
        ,"PROGRAM_ID"
        ,"PROGRAM_UPDATE_DATE"
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
    FROM "HSTG"."HSTG_EBS_MTL_ABC_ASSIGNMENTS" H
    WHERE "META_CURRENT_RECORD_INDICATOR"= 'Y'
