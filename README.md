# php-coursework2-normalization-sql

This project shows the normalization of a raw employee dataset into 3NF and the SQL implementation of the final database design.

## Files

- normalization_process.md
  Shows the normalization process step by step, including candidate keys, functional dependencies, and the final relations.

- schema.sql
  Creates the tables.

- data.sql 
  Inserts the sample data.

- queries.sql
  Includes the example SELECT queries and the 12 required queries.

- exported_database.sql 
  Final database export with structure and data.

## Tables

The final database has 3 tables:

- LOCATION
- DEPARTMENT
- EMPLOYEE

Each department belongs to a location, and each employee belongs to a department.

## How to run it

1. Create or select a database in MySQL or phpMyAdmin.
2. Run schema.sql
3. Run data.sql
4. Run queries.sql

## Summary

The original dataset stored employee, department, and location information in one table, which caused redundancy and possible anomalies.

After normalization, the data was separated into 3 tables:
- EMPLOYEE
- DEPARTMENT
- LOCATION

This helped remove transitive dependencies and made the design cleaner and more organized.