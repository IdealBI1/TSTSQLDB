CREATE PROCEDURE [HSTG].[TRUNCATE_HSTG_CA_INTRAN] 
AS 
BEGIN


    SET NOCOUNT ON;
    /* ---------------------------------------------------------------------------------
    Overview:
    ---------
    
    Author:      ONE51 CONSULTING
    Date:        22/12/2022
    Jira Task:   NA
    Confluence:  NA
    
    Notes:				
    -----------
    
    EXEC "HSTG"."TRUNCATE_HSTG_CA_INTRAN";
    

    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-22    SYAMJITH		    The procedure truncates HSTG.HSTG_CA_INTRAN as part of year end process
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */
	       
    
    BEGIN TRY

	TRUNCATE TABLE HSTG.HSTG_CA_INTRAN	

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
