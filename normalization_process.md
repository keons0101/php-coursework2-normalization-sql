- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# RAW DATASET

EMPLOYEE_RAW(
    EmployeeID,
    EmployeeName,
    EmployeeEmail,
    JobTitle,
    Salary,
    HireDate,
    DepartmentCode,
    DepartmentName,
    LocationID,
    City
)

This raw dataset stores employee information in a single table, and it mixes attributes about employees, departments, and locations.
Department and location data are stored repeatedly for multiple employees, so the table contains redundancy and may cause update, insertion, and deletion anomalies.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# CANDIDATE KEYS

Possible candidate keys for EMPLOYEE_RAW are:

- EmployeeID
- EmployeeEmail

Both attributes can uniquely identify an employee record.
EmployeeID is chosen as the primary key because it is more permanent and easier to manage than EmployeeEmail.