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

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# FUNCTIONAL DEPENDENCIES

- EmployeeID -> EmployeeName, EmployeeEmail, JobTitle, Salary, HireDate, DepartmentCode
- EmployeeEmail -> EmployeeID, EmployeeName, JobTitle, Salary, HireDate, DepartmentCode
- DepartmentCode -> DepartmentName, LocationID
- LocationID -> City

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# 1NF
Already in that form.

- Each column stores a single value in every cell.
- There are no repeating groups or multivalued attributes.
- A primary key can be defined for the relation.

# 2NF
Already in that form.

- Already in 1NF
- The chosen primary key is EmployeeID, which is a single-attribute key
- It doesn't have a composite primary key

# 3NF

Problem:
The table contains transitive dependencies because some columns depend on other non-key columns, not directly on the primary key.

Relevant dependencies:
- DepartmentCode → DepartmentName, LocationID
- LocationID → City

This means that:
- DepartmentName and LocationID depend on DepartmentCode
- City depends on LocationID

Attributes such as DepartmentName and City are not directly dependent on EmployeeID, and this creates transitive dependencies and redundancy.

Decomposition:
To remove transitive dependencies, the table is decomposed into the following relations:

EMPLOYEE(
    EmployeeID,
    EmployeeName,
    EmployeeEmail,
    JobTitle,
    Salary,
    HireDate,
    DepartmentCode
)

DEPARTMENT(
    DepartmentCode,
    DepartmentName,
    LocationID
)

LOCATION(
    LocationID,
    City
)

Keys:
- EMPLOYEE: PK = EmployeeID, FK = DepartmentCode
- DEPARTMENT: PK = DepartmentCode, FK = LocationID
- LOCATION: PK = LocationID

Result:
Each relation now represents a single theme:
- EMPLOYEE stores employee data
- DEPARTMENT stores department data
- LOCATION stores location data

The transitive dependencies have been removed, so now it is in 3NF.