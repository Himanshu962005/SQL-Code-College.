CREATE DATABASE Himanshu3;
USE Himanshu3;
CREATE TABLE Employees (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);
INSERT INTO Employees (name, department, salary) VALUES
('Himanshu', 'IT', 50000),
('Prashant', 'HR', 45000),
('Divya', 'IT', 60000),
('Laxmi', 'Finance', 55000);
CREATE VIEW It_Employees AS
SELECT name, salary
FROM Employees
WHERE department = 'IT';
SELECT * FROM It_Employees;
