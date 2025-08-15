# Payroll Management System (PMS)

![Database](https://img.shields.io/badge/Database-SQL%20Server-blue)
![ERD](https://img.shields.io/badge/ERD-Diagrams-success)
![Project](https://img.shields.io/badge/Project-University%20Course%20Work-orange)

## 📌 Overview
The **Payroll Management System (PMS)** is a database-driven solution designed to automate and streamline payroll operations for organizations.  
It ensures **accuracy** in wage calculations, **compliance** with tax laws, and **efficiency** in managing employee data, benefits, attendance, and payroll history.

---

## 🎯 Objectives
- Automate wage calculations based on attendance, salary grade, deductions, and bonuses.
- Provide detailed salary slips and reports.
- Ensure tax compliance and regulatory adherence.
- Maintain payroll history for audits and future reference.
- Support HR, Payroll, and Accounting departments with accurate reporting.

---

## 👥 Users
- **HR Department** – Manage employee data, benefits, and payroll.
- **Accounting Department** – Track payroll expenses and taxes.
- **Management** – Generate payroll and financial reports.
- **Employees** – Access pay slips and payroll history through self-service.

---

## 📂 Features
- Employee Payroll Calculation
- Personal Information Management
- Benefits & Insurance Tracking
- Leave & Attendance Management
- Payroll Change History Logging
- Business Queries for Insights

---

## 🗄 Database Design

### **Entities**
- Employee
- Attendance
- Payroll
- Pay Period
- Benefit Plan
- Employee Benefits XREF
- Leave Request
- Payroll History

### **Relationships**
- One-to-many between `Employee` and `Attendance`
- Many-to-many between `Employee` and `Benefit Plan`
- One-to-many between `Payroll` and `Payroll History`
- One-to-one between `Payroll` and `Pay Period`

---

## 📊 ER Diagrams

**Conceptual ERD (C-ERD)**
![Conceptual ERD](assets/conceptual_erd.png)

**Physical ERD (P-ERD)**
![Physical ERD](assets/physical_erd.png)

---

## 💻 SQL Scripts

All SQL scripts can be found inside the [`sql_scripts`](./sql_scripts) folder.

- `create_tables.sql` – Creates all required tables.
- `insert_data.sql` – Inserts sample data.
- `stored_procedure.sql` – Contains reusable stored procedure.
- `trigger.sql` – Contains trigger for payroll update history.
- `business_query.sql` – Business query to find employees with >5 hours worked and active benefits.

---
