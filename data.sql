INSERT INTO LOCATION (LocationID, City) VALUES
('L001', 'Vancouver'),
('L002', 'Burnaby'),
('L003', 'Surrey'),
('L004', 'Richmond');

INSERT INTO DEPARTMENT (DepartmentCode, DepartmentName, LocationID) VALUES
('D001', 'Human Resources', 'L001'),
('D002', 'Finance', 'L001'),
('D003', 'IT Support', 'L002'),
('D004', 'Marketing', 'L003'),
('D005', 'Sales', 'L004'),
('D006', 'Operations', 'L002');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, EmployeeEmail, JobTitle, Salary, HireDate, DepartmentCode) VALUES
('E001', 'Alice Johnson', 'alice.johnson@company.com', 'HR Specialist', 52000.00, '2021-03-15', 'D001'),
('E002', 'Brian Smith', 'brian.smith@company.com', 'HR Assistant', 47000.00, '2022-07-10', 'D001'),
('E003', 'Catherine Lee', 'catherine.lee@company.com', 'Financial Analyst', 68000.00, '2020-01-20', 'D002'),
('E004', 'David Brown', 'david.brown@company.com', 'Accountant', 61000.00, '2019-11-05', 'D002'),
('E005', 'Emma Wilson', 'emma.wilson@company.com', 'IT Support Specialist', 58000.00, '2023-02-12', 'D003'),
('E006', 'Frank Miller', 'frank.miller@company.com', 'System Administrator', 75000.00, '2021-09-18', 'D003'),
('E007', 'Grace Taylor', 'grace.taylor@company.com', 'Marketing Coordinator', 54000.00, '2022-05-25', 'D004'),
('E008', 'Henry Anderson', 'henry.anderson@company.com', 'Marketing Manager', 72000.00, '2020-08-30', 'D004'),
('E009', 'Isabella Thomas', 'isabella.thomas@company.com', 'Sales Representative', 50000.00, '2023-06-14', 'D005'),
('E010', 'Jack White', 'jack.white@company.com', 'Sales Representative', 51000.00, '2022-04-01', 'D005'),
('E011', 'Karen Harris', 'karen.harris@company.com', 'Sales Manager', 78000.00, '2018-12-11', 'D005'),
('E012', 'Liam Martin', 'liam.martin@company.com', 'Operations Coordinator', 56000.00, '2021-01-09', 'D006'),
('E013', 'Mia Thompson', 'mia.thompson@company.com', 'Operations Manager', 80000.00, '2019-06-21', 'D006'),
('E014', 'Noah Garcia', 'noah.garcia@company.com', 'HR Specialist', 53000.00, '2024-01-17', 'D001'),
('E015', 'Olivia Martinez', 'olivia.martinez@company.com', 'Financial Analyst', 69000.00, '2023-09-03', 'D002'),
('E016', 'Paul Robinson', 'paul.robinson@company.com', 'IT Support Specialist', 59000.00, '2024-02-28', 'D003'),
('E017', 'Queen Davis', 'queen.davis@company.com', 'Marketing Coordinator', 55000.00, '2021-07-19', 'D004'),
('E018', 'Ryan Clark', 'ryan.clark@company.com', 'Sales Representative', 49500.00, '2020-10-07', 'D005'),
('E019', 'Sophia Lewis', 'sophia.lewis@company.com', 'Operations Coordinator', 57000.00, '2022-11-23', 'D006'),
('E020', 'Thomas Walker', 'thomas.walker@company.com', 'System Administrator', 77000.00, '2023-04-16', 'D003');