-- Primary Key
--primary key is coloum that has unique identity ,these values cannot be repeated and even cannot be null.
--where as primary key act as reference in another table.
--example:ids,emails,aadhar number and etc....

--Foreign Key
--these are the field that are not unique and can be null,unlike primary key.
--examples:name,address.

-----------------------------------------------------------------------------------------------------------------------

--Constraints:these are queries which improve accuracy in sql 
--
--types:

--UNIQUE CONSTRAINT: these


----------------------------------------------------------------------------------------------------------------------
--Difference between WHERE and HAVING
--where is command used as condition and having is used after grouping as condition (aggreagtion).
------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
--2.
CREATE TABLE STUDENTS(
ID INT PRIMARY KEY,
NAME VARCHAR(20),
AGE INT,
CITY VARCHAR(50),
);
SELECT * FROM STUDENTS;

--INSERT 5 RECORDS IN STUDENT
INSERT INTO STUDENTS Values
(1296,'eshika',19,'bhyander'),(1392,'rushda',19,'mira road'),(1396,'anuskha',19,'borivali'),(1404,'yanti',19,'dahisar'),(1405,'riya',19,'mumbai');

--query for displaying all student
SELECT * FROM STUDENTS;
--query for displaying student from mumbai
SELECT * FROM STUDENTS
where city ='mumbai';

---------------------------------------------------------------------------------------------------------------------------
--WHERE AND HAVING
/*CREATE TABLE ORDERS(
OREDERID INT,
CUSTOMERID INT,
AMOUNT DECIMAL
);

SELECT * FROM ORDERS;

INSERT INTO ORDERS VALUES
(),(),(),(),();

CREATE TABLE CUSTOMERS(
CUSTOMERID INT,
NAME VARCHAR(20),
CITY VARCHAR(40)
);
INSERT INTO ORDERS VALUES
(),(),(),(),();
SELECT * FROM CUSTOMERS;*/
---------------------------------------------------------------------------------------------------------------------
 --INNER JOIN 
 --left join
 --right join
 --full join
 -------------------------------------------------------------------------------------------------------------------
 --SECOND HIGHEST SALARY IN EMPLOYEE TABLE --indexing

 ---------------------------------------------------------------------------------------------------------------------
 CREATE DATABASE company_db;
 USE company_db;
 CREATE TABLE Employee (
    emp_id INT PRIMARY KEY ,
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    date_of_joining DATE,
    salary DECIMAL(10,2)
);
INSERT INTO Employee (emp_name, department, date_of_joining, salary)
VALUES 
('Rahul Sharma', 'IT', '2022-05-10', 55000.00),
('Priya Mehta', 'HR', '2021-03-15', 48000.00),
('Amit Verma', 'Finance', '2020-11-20', 62000.00);
DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY IDENTITY(1,1),
    emp_name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    date_of_joining DATE,
    salary DECIMAL(10,2)
);
INSERT INTO Employee (emp_name, department, date_of_joining, salary)
VALUES 
('Rahul Sharma', 'IT', '2022-05-10', 55000.00),
('Priya Mehta', 'HR', '2021-03-15', 48000.00);
SELECT * FROM Employee;
INSERT INTO Employee (emp_name, department, date_of_joining, salary)
VALUES 
('Neha Kapoor', 'Marketing', '2023-01-12', 45000.00),
('Rohit Singh', 'IT', '2022-07-25', 60000.00),
('Anjali Desai', 'Finance', '2021-09-30', 52000.00),
('Karan Patel', 'Sales', '2020-06-18', 47000.00)
SELECT * FROM Employee;

---FINDING SECOND HIGHEST SALARY
SELECT * FROM EMPLOYEE
ORDER BY SALARY desc;

