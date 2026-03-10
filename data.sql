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