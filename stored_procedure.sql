CREATE PROCEDURE InsertEmployee
    @First_Name  VARCHAR(50),
    @Last_Name   VARCHAR(50),
    @Department  VARCHAR(100),
    @Hire_Date   DATE
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        INSERT INTO Employee (First_Name, Last_Name, Department, Hire_Date)
        VALUES (@First_Name, @Last_Name, @Department, @Hire_Date);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;

-- Execution
EXEC InsertEmployee
    @First_Name = 'Jane',
    @Last_Name  = 'Smith',
    @Department = 'Marketing',
    @Hire_Date  = '2024-11-15';
