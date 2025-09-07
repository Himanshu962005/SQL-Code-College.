CREATE DATABASE Himanshu;
USE Himanshu;
CREATE TABLE Employee (
eid INT PRIMARY KEY,        -- employee id (unique).
ename VARCHAR(50) NOT NULL, -- employee name.
edesignation VARCHAR(50),   -- job title.
edoj DATE,                  -- date of joining.
edob DATE,                  -- date of birth.
eaddress VARCHAR(100),      -- address.
salary DECIMAL(10,2),       -- salary with 2 decimals.
econtact VARCHAR(10)        -- contact number.
);
INSERT INTO Employee (eid, ename, edesignation, edoj, edob, eaddress, salary, econtact) VALUES
(1, 'Himanshu', 'Software Developer', '2025-06-09', '2005-06-09', 'Raipur', 100000, '7000195809'),
(2, 'Divya', 'Data Analyst', '2023-02-15', '2003-09-05', 'Delhi', 42000, '7723928140'),
(3, 'Prashant', 'AI Manager', '2021-11-03', '2002-12-20', 'Jaipur', 65000, '9981047884'),
(4, 'Laxmi', 'UI/UX Designer', '2022-09-09', '2005-01-08', 'Mumbai', 39000, '9109408192'),
(5, 'Digesh', 'Web Developer', '2024-07-01', '2006-03-11', 'Nagpur', 15000, '6268769845');
DELETE FROM employee WHERE eid = 4;
UPDATE employee
SET ename = 'Gojo'
WHERE eid = 3;
ALTER TABLE employee
ADD email VARCHAR(100);
UPDATE employee SET email = 'valthimanshu@gmail.com' WHERE eid = 1;
UPDATE employee SET email = 'neha.analyst@gmail.com' WHERE eid = 2;
UPDATE employee SET email = 'hari.manager@gmail.com' WHERE eid = 3;
UPDATE employee SET email = 'priya.design@gmail.com' WHERE eid = 4;
UPDATE employee SET email = 'kabir.intern@gmail.com' WHERE eid = 5;
SELECT * FROM employee;