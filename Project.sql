-- DDL
CREATE DATABASE EmployeePayrollSystem;
USE EmployeePayrollSystem;

CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Position VARCHAR(50),
    Date_of_Hire DATE,
    Address VARCHAR(255),
    Phone_Number VARCHAR(15)
);

CREATE TABLE Salary (
    Salary_ID INT PRIMARY KEY,
    Employee_ID INT,
    Base_Salary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2),
    Overtime_Pay DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Payroll (
    Payroll_ID INT PRIMARY KEY,
    Employee_ID INT,
    Pay_Period VARCHAR(20),
    Total_Pay DECIMAL(10, 2),
    Date_Processed DATE,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- DML
-- Employee Data
INSERT INTO Employee (Employee_ID, Name, Department, Position, Date_of_Hire, Address, Phone_Number)
VALUES 
(1, 'John Doe', 'HR', 'Manager', '2020-01-15', '123 Main St, City', '555-1234'),
(2, 'Jane Smith', 'Finance', 'Analyst', '2021-07-01', '456 Elm St, City', '555-5678'),
(3, 'Michael Johnson', 'Engineering', 'Developer', '2019-03-21', '789 Oak St, City', '555-8765'),
(4, 'Emily Davis', 'Marketing', 'Coordinator', '2022-06-12', '101 Pine St, City', '555-4321'),
(5, 'Daniel Martinez', 'Sales', 'Representative', '2018-10-25', '202 Birch St, City', '555-2345'),
(6, 'Sarah Wilson', 'HR', 'Recruiter', '2020-05-30', '303 Maple St, City', '555-3456'),
(7, 'David Lee', 'IT', 'Support Technician', '2021-09-18', '404 Cedar St, City', '555-4567'),
(8, 'Sophia Taylor', 'Finance', 'Analyst', '2021-02-22', '505 Walnut St, City', '555-5679'),
(9, 'James Brown', 'Sales', 'Manager', '2017-01-10', '606 Cherry St, City', '555-6789'),
(10, 'Isabella White', 'Marketing', 'Assistant', '2019-11-11', '707 Oak St, City', '555-7890'),
(11, 'Mason Harris', 'Engineering', 'Technician', '2022-03-14', '808 Pine St, City', '555-8901'),
(12, 'Charlotte Clark', 'HR', 'Manager', '2020-07-13', '909 Maple St, City', '555-9012'),
(13, 'Elijah Lewis', 'Sales', 'Representative', '2021-04-19', '1010 Birch St, City', '555-0123'),
(14, 'Amelia Allen', 'Marketing', 'Coordinator', '2022-02-01', '1111 Walnut St, City', '555-1239'),
(15, 'Lucas Young', 'Engineering', 'Developer', '2020-08-29', '1212 Cedar St, City', '555-2340'),
(16, 'Aria King', 'Finance', 'Analyst', '2021-01-01', '1313 Cherry St, City', '555-3451'),
(17, 'Liam Scott', 'Sales', 'Manager', '2018-04-15', '1414 Pine St, City', '555-4562'),
(18, 'Evelyn Adams', 'IT', 'Support Technician', '2019-05-12', '1515 Maple St, City', '555-5673'),
(19, 'Benjamin Baker', 'HR', 'Recruiter', '2021-06-10', '1616 Birch St, City', '555-6784'),
(20, 'Ella Nelson', 'Engineering', 'Developer', '2019-02-04', '1717 Oak St, City', '555-7892');

-- Salary Data
INSERT INTO Salary (Salary_ID, Employee_ID, Base_Salary, Bonus, Overtime_Pay, Deductions)
VALUES 
(1, 1, 5000.00, 500.00, 200.00, 150.00),
(2, 2, 4000.00, 400.00, 100.00, 120.00),
(3, 3, 4500.00, 450.00, 150.00, 130.00),
(4, 4, 3800.00, 380.00, 120.00, 100.00),
(5, 5, 4200.00, 420.00, 110.00, 110.00),
(6, 6, 4600.00, 460.00, 130.00, 140.00),
(7, 7, 4900.00, 490.00, 140.00, 160.00),
(8, 8, 4100.00, 410.00, 110.00, 120.00),
(9, 9, 5200.00, 520.00, 150.00, 170.00),
(10, 10, 4600.00, 460.00, 120.00, 130.00),
(11, 11, 5300.00, 530.00, 160.00, 180.00),
(12, 12, 4500.00, 450.00, 130.00, 140.00),
(13, 13, 4000.00, 400.00, 100.00, 120.00),
(14, 14, 4200.00, 420.00, 110.00, 130.00),
(15, 15, 4900.00, 490.00, 140.00, 160.00),
(16, 16, 4700.00, 470.00, 130.00, 150.00),
(17, 17, 4600.00, 460.00, 120.00, 140.00),
(18, 18, 5200.00, 520.00, 150.00, 170.00),
(19, 19, 5000.00, 500.00, 130.00, 150.00),
(20, 20, 4400.00, 440.00, 120.00, 130.00);

-- Payroll Data
INSERT INTO Payroll (Payroll_ID, Employee_ID, Pay_Period, Total_Pay, Date_Processed)
VALUES
(1, 1, '2024-01', 5550.00, '2024-01-31'),
(2, 2, '2024-01', 5260.00, '2024-01-31'),
(3, 3, '2024-01', 5300.00, '2024-01-31'),
(4, 4, '2024-01', 4880.00, '2024-01-31'),
(5, 5, '2024-01', 4620.00, '2024-01-31'),
(6, 6, '2024-01', 5350.00, '2024-01-31'),
(7, 7, '2024-01', 5550.00, '2024-01-31'),
(8, 8, '2024-01', 5300.00, '2024-01-31'),
(9, 9, '2024-01', 5700.00, '2024-01-31'),
(10, 10, '2024-01', 5200.00, '2024-01-31'),
(11, 11, '2024-01', 5900.00, '2024-01-31'),
(12, 12, '2024-01', 5300.00, '2024-01-31'),
(13, 13, '2024-01', 5320.00, '2024-01-31'),
(14, 14, '2024-01', 5120.00, '2024-01-31'),
(15, 15, '2024-01', 5500.00, '2024-01-31'),
(16, 16, '2024-01', 5300.00, '2024-01-31'),
(17, 17, '2024-01', 5150.00, '2024-01-31'),
(18, 18, '2024-01', 5300.00, '2024-01-31'),
(19, 19, '2024-01', 5400.00, '2024-01-31'),
(20, 20, '2024-01', 5100.00, '2024-01-31');

-- Creating Views
-- Manager's View
CREATE VIEW manager_view AS
SELECT e.Employee_ID, e.Name, e.Department, e.Position, 
       s.Base_Salary, s.Bonus, s.Overtime_Pay, s.Deductions, 
       (s.Base_Salary + s.Bonus + s.Overtime_Pay - s.Deductions) AS Total_Pay
FROM Employee e
JOIN Salary s ON e.Employee_ID = s.Employee_ID;

-- HR View
CREATE VIEW hr_view AS
SELECT e.Employee_ID, e.Name, e.Department, e.Position, e.Date_of_Hire, e.Address, e.Phone_Number,
       s.Base_Salary, s.Bonus, s.Overtime_Pay, p.Total_Pay, p.Date_Processed
FROM Employee e
JOIN Salary s ON e.Employee_ID = s.Employee_ID
JOIN Payroll p ON e.Employee_ID = p.Employee_ID;

-- View for Manager
SELECT * FROM manager_view;

-- View for HR
SELECT * FROM hr_view;

-- Data Query
-- To calculate the total pay for the employee with ID of 1
SELECT e.Employee_ID, e.Name, 
       (s.Base_Salary + s.Bonus + s.Overtime_Pay - s.Deductions) AS Total_Pay
FROM Employee e
JOIN Salary s ON e.Employee_ID = s.Employee_ID
WHERE e.Employee_ID = 1;  

-- To update the payroll for a employee with ID of 1 for a December, 2024
UPDATE Payroll
SET Total_Pay = 5500
WHERE Employee_ID = 1 AND Pay_Period = '2024-12';
 
-- TCL
-- To ensure that payroll updates happen as a single transaction (so either all changes are made, or none), we use Transaction
START TRANSACTION;

-- Insert a new employee (ID 21, as 1-20 are already in use)
INSERT INTO Employee (Employee_ID, Name, Department, Position, Date_of_Hire, Address, Phone_Number)
VALUES (21, 'Alex Carter', 'Marketing', 'Content Specialist', '2024-01-10', '1234 Elm St, City', '555-1111');

-- Update an existing employee's position (Employee with ID 10)
UPDATE Employee
SET Position = 'Lead Marketing Assistant'
WHERE Employee_ID = 10;  -- Employee with ID 10 (Isabella White)

-- If no errors, commit the transaction
COMMIT;

-- If an error occurs, roll back the transaction
ROLLBACK;
