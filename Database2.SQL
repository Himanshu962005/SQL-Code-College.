CREATE DATABASE Himanshu2;
USE Himanshu2;
CREATE TABLE Employee (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
deptid VARCHAR(30)
);
CREATE TABLE Salary (
salary_id INT PRIMARY KEY,
emp_id INT,
month VARCHAR(20),
working_days INT,
deptid VARCHAR(30),
gross DECIMAL(10,2),
incentive DECIMAL(10,2),
deduction DECIMAL(10,2),
net_salary DECIMAL(10,2),
CONSTRAINT fk_emp FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);
INSERT INTO employee VALUES (1, 'Himanshu', 'HR');
INSERT INTO employee VALUES (2, 'Divya', 'IT');
INSERT INTO employee VALUES (3, 'Prashant', 'Sales');
INSERT INTO employee VALUES (4, 'Laxmi', 'Finance');
INSERT INTO employee VALUES (5, 'Digesh', 'Marketing');
INSERT INTO salary VALUES (101, 1, 'January', 26, 'HR', 50000, 5000, 2000, 53000);
INSERT INTO salary VALUES (102, 2, 'January', 25, 'IT', 60000, 7000, 3000, 64000);
INSERT INTO salary VALUES (103, 3, 'January', 27, 'Sales', 45000, 4000, 1500, 47500);
INSERT INTO salary VALUES (104, 4, 'January', 26, 'Finance', 55000, 6000, 2500, 58500);
INSERT INTO salary VALUES (105, 5, 'January', 24, 'Marketing', 48000, 3000, 2000, 49000);
SELECT * FROM Salary;
SELECT e.emp_name, e.deptid, s.month, s.gross, s.net_salary
FROM Employee e
JOIN Salary s ON e.emp_id = s.emp_id;
UPDATE Salary
SET deptid = 'Sales'
WHERE salary_id = 102;
ALTER TABLE Salary
ADD COLUMN bonus DECIMAL(10,2);