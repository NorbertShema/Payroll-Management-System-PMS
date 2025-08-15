DROP TABLE Payroll_History
DROP TABLE Leave_Request;
DROP TABLE Employee_Benefits_XREF;
DROP TABLE Benefit_Plan;
DROP TABLE Payroll;
DROP TABLE Pay_Period;
DROP TABLE Attendance;
DROP TABLE Employee;

-- Create Employee Table
CREATE TABLE Employee (
     Employee_ID	INT IDENTITY(1,1) PRIMARY KEY
    ,First_Name		VARCHAR(50)
    ,Last_Name		VARCHAR(50)
    ,Department		VARCHAR(100)
    ,Hire_Date		DATE
);

-- Create Attendance Table
CREATE TABLE Attendance (
     Attendance_ID	INT IDENTITY(1,1) PRIMARY KEY
	,Employee_ID	INT REFERENCES Employee (Employee_ID)
    ,TimeDate		DATE
    ,CurrentStatus	VARCHAR(20)
    ,Hours_Worked	DECIMAL(5,2)   
);

-- Create Pay_Period Table
CREATE TABLE Pay_Period (
     Pay_Period_ID	INT IDENTITY(1,1) PRIMARY KEY
    ,StartDate		DATE
    ,End_Date		DATE
    ,Period_Name	VARCHAR(50)
    ,CurrentStatus	VARCHAR(20)
);

-- Create Payroll Table
CREATE TABLE Payroll (
     Payroll_ID		INT IDENTITY(1,1) PRIMARY KEY
	,Employee_ID	INT REFERENCES Employee (Employee_ID)
	,Pay_Period_ID	INT REFERENCES Pay_Period(Pay_Period_ID)
    ,Total_Earnings				 DECIMAL(10,2)
    ,Total_Deductions			 DECIMAL(10,2)
);

-- Create Benefit_Plan Table
CREATE TABLE Benefit_Plan (
     Benefit_ID				INT IDENTITY(1,1) PRIMARY KEY
    ,Benefit_Name			VARCHAR(100)
    ,Coverage_Type			VARCHAR(50)
    ,Employer_Covered		DECIMAL(5,2)
    ,Employee_Covered		DECIMAL(5,2)
	,Employee_ID	INT REFERENCES Employee (Employee_ID)
	,Enrollment_Date		DATE
	,CurrentStatus			VARCHAR(20)

);

-- Create Employee_Benefits_XREF
CREATE TABLE Employee_Benefits_XREF (
     EB_ID			INT IDENTITY(1,1) PRIMARY KEY
	,Employee_ID	INT REFERENCES Employee (Employee_ID)
	,Benefit_ID	INT REFERENCES Benefit_Plan(Benefit_ID)
	,Enrollment_Date	DATE
    ,CurrentStatus		VARCHAR(20)  
);

-- Create Leave_Request Table
CREATE TABLE Leave_Request (
     Leave_Request_ID	INT IDENTITY(1,1) PRIMARY KEY
    ,Employee_ID	INT REFERENCES Employee (Employee_ID)
    ,StartDate			DATE
    ,End_Date			DATE
    ,CurrentStatus		VARCHAR(20)
    
);
--create Payroll_History Table
CREATE TABLE Payroll_History (
     History_ID        INT IDENTITY(1,1) PRIMARY KEY
    ,Payroll_ID        INT NOT NULL
    ,Employee_ID       INT NOT NULL
    ,Pay_Period_ID     INT NOT NULL
    ,Old_Earnings      DECIMAL(10,2)
    ,New_Earnings      DECIMAL(10,2)
    ,Old_Deductions    DECIMAL(10,2)
    ,New_Deductions    DECIMAL(10,2)
    ,Change_Date       DATETIME DEFAULT GETDATE()
    ,Changed_By        VARCHAR(100) -- Username or system ID of the person updating
);