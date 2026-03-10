-- SELECT query example 1
SELECT * FROM LOCATION WHERE City = 'Vancouver';

-- SELECT query example 2
SELECT EmployeeName, JobTitle, Salary
FROM EMPLOYEE
WHERE DepartmentCode = 'D003';

--------------------------------------------------------------------------------

-- 1. Average and Total Salary
SELECT 
    AVG(Salary) AS AverageSalary,
    SUM(Salary) AS TotalSalary
FROM EMPLOYEE;

--------------------------------------------------------------------------------

-- 2. Count Employees in a Department
-- Choosing D003
SELECT 
    DepartmentCode,
    COUNT(*) AS EmployeeCount
FROM EMPLOYEE
WHERE DepartmentCode = 'D003'
GROUP BY DepartmentCode;

--------------------------------------------------------------------------------

-- 3. Name Pattern Search
SELECT 
    EmployeeID,
    EmployeeName,
    EmployeeEmail
FROM EMPLOYEE
WHERE EmployeeName LIKE 'A%' AND LENGTH(EmployeeName) >= 4;

--------------------------------------------------------------------------------

-- 4. Employees by Job Title
-- Choosing sales representative
SELECT 
    EmployeeID,
    EmployeeName,
    JobTitle,
    Salary
FROM EMPLOYEE
WHERE JobTitle = 'Sales Representative';

--------------------------------------------------------------------------------

-- 5. Employees Hired Between Two Dates
SELECT 
    EmployeeID,
    EmployeeName,
    HireDate,
    JobTitle
FROM EMPLOYEE
WHERE HireDate BETWEEN '2021-01-01' AND '2023-12-31'
ORDER BY EmployeeName ASC;