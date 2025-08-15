CREATE TRIGGER Payroll_Update
ON Payroll
AFTER UPDATE
AS
BEGIN
    INSERT INTO Payroll_History (
        Payroll_ID,
        Employee_ID,
        Pay_Period_ID,
        Old_Earnings,
        New_Earnings,
        Old_Deductions,
        New_Deductions,
        Change_Date,
        Changed_By
    )
    SELECT 
        d.Payroll_ID,
        d.Employee_ID,
        d.Pay_Period_ID,
        d.Total_Earnings AS Old_Earnings,
        i.Total_Earnings AS New_Earnings,
        d.Total_Deductions AS Old_Deductions,
        i.Total_Deductions AS New_Deductions,
        GETDATE(),
        SYSTEM_USER
    FROM Deleted d
    INNER JOIN Inserted i ON d.Payroll_ID = i.Payroll_ID;
END;
