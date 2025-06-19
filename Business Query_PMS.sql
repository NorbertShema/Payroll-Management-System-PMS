-- Business Query

SELECT 
    e.Employee_ID AS EmployeeID,
    CONCAT(e.First_Name, ' ', e.Last_Name) AS EmployeeName,
    SUM(a.Hours_Worked) AS TotalHoursWorked
FROM 
    Attendance a
INNER JOIN 
    Employee e ON a.Employee_ID = e.Employee_ID
INNER JOIN 
    Benefit_Plan b ON e.Employee_ID = b.Employee_ID
WHERE 
    b.CurrentStatus = 'Active'
GROUP BY 
    e.Employee_ID, e.First_Name, e.Last_Name
HAVING 
    SUM(a.Hours_Worked) > 5.0;
