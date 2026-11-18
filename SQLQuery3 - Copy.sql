CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    DeptID INT,
    Salary INT,
    ManagerID INT
);
INSERT INTO Employees VALUES
(1, 'Ali', 101, 30000, NULL),
(2, 'Sara', 102, 40000, 1),
(3, 'John', 101, 25000, 1),
(4, 'Aman', 103, 50000, 2),
(5, 'Zoya', 102, 60000, 2);

CREATE TABLE Departments (
    DeptID INT,
    DeptName VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID INT,
    EmpID INT,
    Budget INT
);

INSERT INTO Projects VALUES
(1, 1, 100000),
(2, 2, 200000),
(3, 3, 150000),
(4, 5, 300000);

SELECT * FROM Employees;
SELECT * FROM Projects;
--join 
/* SQL mein JOIN ka use hota hai multiple tables ko combine karne ke liye —
jab data alag-alag tables mein stored ho, lekin unmein relation ho. */

--inner join
/* INNER JOIN = sirf common (matching) data dikhata hai
Matlab:
Agar 2 tables mein koi value match nahi karti → woh output mein nahi aayegi ❌ */

--syntax
/*SELECT column_names
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column*/

SELECT * from Employees
SELect * from projects;

--Inner join 
-- Employees + Projects (sirf matching)
select Employees.EmpID,Projects.ProjectID
from Employees
INNER JOIN Projects
ON Employees.EmpID=Projects.EmpID;

--JOIN Multiple Tables
----------------------------------------------------------------------------------------------------------------------
INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

SELECT * from Employees
SELect * from projects;
SELECT * FROM Departments;

--------------------------remaining---------------------------------------------------------------------------------
--left join

--LEFT JOIN = Left table ka sab data + right table ka matching data
-- Agar match nahi mila → right side NULL aayega

/*SELECT column_names
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;*/

--left side ka sarah data and right side ka matching data show karta hai--left table se meine name liya aur aur rights se 
--se budget name shows hona compulsory hai even if bughet nhi hai i.e null

select Employees.EmpID,Projects.Budget
from Employees
left join Projects
on Employees.EmpID=Projects.EmpID;

--ORDER BY(yeh data ko ascending order mei show karegya based on empid)
select Employees.EmpID,Projects.Budget
from Employees
left join Projects
on Employees.EmpID=Projects.EmpID
order by Employees.EmpID;

-- is null (agar null values jo show karna hai )
select Employees.EmpID,Projects.Budget
from Employees
left join Projects
on Employees.EmpID=Projects.EmpID
where Projects.Budget is null;

--right join
/*👉 RIGHT JOIN = Right table ka sab data + left ka matching data
👉 Agar match nahi mila → left side NULL aayega*/
SELECT * from Employees
SELect * from projects;
SELECT * FROM Departments;

select Employees.EmpID,Projects.Budget
from Employees
right join Projects
on Employees.EmpID=Projects.EmpID;

--full join
select Employees.EmpID,Projects.Budget
from Employees
full join Projects
on Employees.EmpID=Projects.EmpID;

--cross join

--self join

--union - removes duplicate(rowa)
--where clause and oeder clause should be in same order .
--datatype in both the table must be same.

--syntax:
/*SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;*/





-----------------------------------------------------------------------------------------------------------------------

/* 🟢 LEVEL 1 (Basics + BETWEEN)

1️⃣ Employees jinka salary 20000 se 50000 ke beech hai

2️⃣ Employees jinka salary NOT BETWEEN 30000 AND 60000

3️⃣ Employees jinka name 'A' se start hota hai*/

/*LEVEL 2 (JOIN)



5️⃣ LEFT JOIN
👉 Sab employees + unka department (even if missing)

6️⃣ RIGHT JOIN
👉 Sab departments + employees (even if no employee)*/

/*LEVEL 3 (ADVANCED JOIN)

7️⃣ CROSS JOIN
👉 Har employee with every department */

/*LEVEL 4 (SELF JOIN 🔥)

8️⃣ Employee aur uska manager ka naam dikhana

👉 Hint:

Employees table ko 2 baar use kar */
------------------------------------------

/*LEVEL 5 (Subquery + IN / EXISTS)

9️⃣ Employees jinpe projects assigned hai (IN use karo)

10️⃣ Same question EXISTS se karo*/
------------------------------------------------------------------------------------------------
/*LEVEL 6 (Real Business Logic)

11️⃣ Employees jinka salary department ke average salary se zyada hai*/