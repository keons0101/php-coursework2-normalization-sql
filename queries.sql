-- LOCATION: example query 1
SELECT * FROM LOCATION;

-- LOCATION: example query 2
SELECT * 
FROM LOCATION
WHERE City = 'Vancouver';

-- DEPARTMENT: example query 1
SELECT * FROM DEPARTMENT;

-- DEPARTMENT: example query 2
SELECT DepartmentCode, DepartmentName, LocationID
FROM DEPARTMENT
WHERE LocationID = 'L001';

-- EMPLOYEE: example query 1
SELECT * FROM EMPLOYEE;

-- EMPLOYEE: example query 2
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
WHERE EmployeeName LIKE '%n' AND LENGTH(EmployeeName) <= 12;

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

--------------------------------------------------------------------------------

-- 6. Min & Max Salary
SELECT 
    MIN(Salary) AS MinimumSalary,
    MAX(Salary) AS MaximumSalary
FROM EMPLOYEE;

--------------------------------------------------------------------------------

-- 7. Earliest & Latest Hire Date
SELECT 
    MIN(HireDate) AS EarliestHireDate,
    MAX(HireDate) AS LatestHireDate
FROM EMPLOYEE;

--------------------------------------------------------------------------------

-- 8. Employee Count per Department
SELECT 
    DEPARTMENT.DepartmentName,
    COUNT(EMPLOYEE.EmployeeID) AS EmployeeCount
FROM DEPARTMENT
JOIN EMPLOYEE
    ON DEPARTMENT.DepartmentCode = EMPLOYEE.DepartmentCode
GROUP BY DEPARTMENT.DepartmentName
ORDER BY DEPARTMENT.DepartmentName ASC;

--------------------------------------------------------------------------------

-- 9. Average Salary per Department
SELECT 
    DEPARTMENT.DepartmentName,
    AVG(EMPLOYEE.Salary) AS AverageSalary
FROM DEPARTMENT
JOIN EMPLOYEE
    ON DEPARTMENT.DepartmentCode = EMPLOYEE.DepartmentCode
GROUP BY DEPARTMENT.DepartmentName
ORDER BY DEPARTMENT.DepartmentName ASC;

--------------------------------------------------------------------------------

-- 10. High Salary Departments
SELECT 
    DEPARTMENT.DepartmentName,
    SUM(EMPLOYEE.Salary) AS TotalDepartmentSalary
FROM DEPARTMENT
JOIN EMPLOYEE
    ON DEPARTMENT.DepartmentCode = EMPLOYEE.DepartmentCode
GROUP BY DEPARTMENT.DepartmentName
HAVING SUM(EMPLOYEE.Salary) > 150000
ORDER BY TotalDepartmentSalary DESC;

--------------------------------------------------------------------------------

-- 11. Employees in a Location
SELECT 
    EMPLOYEE.EmployeeID,
    EMPLOYEE.EmployeeName,
    EMPLOYEE.JobTitle,
    DEPARTMENT.DepartmentName,
    LOCATION.City
FROM EMPLOYEE
JOIN DEPARTMENT
    ON EMPLOYEE.DepartmentCode = DEPARTMENT.DepartmentCode
JOIN LOCATION
    ON DEPARTMENT.LocationID = LOCATION.LocationID
WHERE LOCATION.City = 'Vancouver'
ORDER BY EMPLOYEE.EmployeeName ASC;

--------------------------------------------------------------------------------

-- 12. Total Salary by Department and Job Title
SELECT 
    DEPARTMENT.DepartmentName,
    EMPLOYEE.JobTitle,
    SUM(EMPLOYEE.Salary) AS TotalSalary
FROM EMPLOYEE
JOIN DEPARTMENT
    ON EMPLOYEE.DepartmentCode = DEPARTMENT.DepartmentCode
GROUP BY DEPARTMENT.DepartmentName, EMPLOYEE.JobTitle
ORDER BY DEPARTMENT.DepartmentName ASC, EMPLOYEE.JobTitle ASC;

--------------------------------------------------------------------------------