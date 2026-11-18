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

--Employees + Departments (sirf matching)

SELECT Departments.DeptID,Employees.EmpID
from Employees
inner join Departments
on Employees.DeptID=Departments.DeptID;











-----------------------------------------------------------------------------------------------------------------------

/* 🟢 LEVEL 1 (Basics + BETWEEN)

1️⃣ Employees jinka salary 20000 se 50000 ke beech hai

2️⃣ Employees jinka salary NOT BETWEEN 30000 AND 60000

3️⃣ Employees jinka name 'A' se start hota hai*/

/*LEVEL 2 (JOIN)

4️⃣ INNER JOIN
👉 Employees + Departments (sirf matching)

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