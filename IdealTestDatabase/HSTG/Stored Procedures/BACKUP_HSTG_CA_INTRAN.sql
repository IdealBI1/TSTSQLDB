CREATE PROCEDURE [HSTG].[BACKUP_HSTG_CA_INTRAN] 
(@Year varchar(4))
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
    
    EXEC "HSTG"."BACKUP_HSTG_CA_INTRAN";
    
    Source                   Destination             
    ---------------------    ---------------------- 
    HSTG.HSTG_CA_INTRAN		 HSTG_CA_INTRAN_<Year>
    
    Change History:
    ---------------	
    Date          Who               Details       
    ----------    --------------    ----------------------------------------------------
    2022-12-22    SYAMJITH		    The procedure backs up HSTG_CA_INTRAN to HSTG_CA_INTRAN_<Year>, the <Year> accepted as input parameter
    ----------    --------------    ----------------------------------------------------
    ------------------------------------------------------------------------------------
    */
	       
    
    BEGIN TRY

	DECLARE @SQL NVARCHAR(1000)  
	SET @SQL = 'DROP TABLE IF EXISTS HSTG.HSTG_CA_INTRAN_' +@Year
	print @sql
	EXEC sp_executesql @SQL, N'@Year CHAR(4)', @Year = @Year  
    
        /* Perform backup */
	SET @SQL = 'SELECT * INTO HSTG.HSTG_CA_INTRAN_' + @Year + ' FROM [HSTG].[HSTG_CA_INTRAN]'  
	print @sql
	EXEC sp_executesql @SQL, N'@Year CHAR(4)', @Year = @Year 
		

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
