--Creatiom of a stored procedure to insert into Employee table

CREATE PROCEDURE InsertEmployee
    @First_Name VARCHAR(50),
    @Last_Name VARCHAR(50),
    @Department VARCHAR(100),
    @Hire_Date DATE
AS
BEGIN
    -- Begin transaction for error handling
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert statement
        INSERT INTO Employee (First_Name, Last_Name, Department, Hire_Date)
        VALUES (@First_Name, @Last_Name, @Department, @Hire_Date);

        -- Commit the transaction if successful
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback transaction in case of an error
        ROLLBACK TRANSACTION;

        -- Throw the error to the caller
        THROW;
    END CATCH
END;

 --Execution of the stored procedure.
EXEC InsertEmployee
    @First_Name = 'Jane',
    @Last_Name = 'Smith',
    @Department = 'Marketing',
    @Hire_Date = '2024-11-15';

	