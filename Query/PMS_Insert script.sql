-- Insert into Employee
INSERT INTO Employee (First_Name, Last_Name, Department, Hire_Date)
VALUES
('Norbert', 'Shema', 'Engineering', '2020-01-15'),
('Laura', 'Ishimwe', 'HR', '2019-11-25');

-- Insert into Attendance
INSERT INTO Attendance (Employee_ID, TimeDate, CurrentStatus, Hours_Worked)
VALUES
(1, '2024-12-01', 'Present', 8.0),
(2, '2024-12-01', 'Sick Leave', 0.0);

-- Insert into Pay_Period
INSERT INTO Pay_Period (StartDate, End_Date, Period_Name, CurrentStatus)
VALUES
('2024-11-01', '2024-11-15', 'Pay Period 1', 'Closed'),
('2024-11-16', '2024-11-30', 'Pay Period 2', 'Closed');

-- Insert into Payroll
INSERT INTO Payroll (Employee_ID, Pay_Period_ID, Total_Earnings, Total_Deductions)
VALUES
(1, 1, 3000.00, 250.00),
(2, 2, 2800.00, 200.00);

-- Insert into Benefit_Plan
INSERT INTO Benefit_Plan (Benefit_Name, Coverage_Type, Employer_Covered, Employee_Covered, Employee_ID, Enrollment_Date, CurrentStatus)
VALUES
('Health Insurance', 'Full Coverage', 500.00, 100.00, 1, '2024-01-01', 'Active'),
('Dental Insurance', 'Partial Coverage', 200.00, 50.00, 2, '2024-03-15', 'Active');

-- Insert into Employee_Benefits_XREF
INSERT INTO Employee_Benefits_XREF (Employee_ID, Benefit_ID, Enrollment_Date, CurrentStatus)
VALUES
(1, 1, '2024-01-01', 'Active'),
(2, 2, '2024-03-15', 'Active');

-- Insert into Leave_Request
INSERT INTO Leave_Request (Employee_ID, StartDate, End_Date, CurrentStatus)
VALUES
(1, '2020-01-15', '2024-12-10', 'Approved'),
(2, '2019-11-25', '2024-12-05', 'Pending');