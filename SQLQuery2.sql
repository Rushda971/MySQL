/* 1. Basic SELECT & WHERE
employees table me se sabhi employees ka name aur salary select karo jinki salary 50000 se zyada hai.
products table me se wo products select karo jinka name 'Book' ya 'Pen' hai.
customers table me se un customers ka data fetch karo jinki email NOT NULL hai.

2. LIKE & Wildcards
students table me se un students ka name select karo jo "A" se start hote hain.
orders table me se un orders ka number fetch karo jisme "2023" kahin bhi present ho.
cities table me se un cities ka name select karo jo "pur" pe end hote hain.

3. AND / OR Conditions
employees table me se un employees ko fetch karo jinki department = 'IT' AND salary > 60000 hai.
products table me se wo products select karo jinka category = 'Electronics' OR price < 1000 hai.

4. INSERT INTO SELECT
old_employees table me se sabhi employees ko former_employees table me copy karo jinki resigned_date IS NOT NULL hai.*/


/*Mixed SQL Practice Questions
Table Reference

Assume ye tables hain:

employees

emp_id	name	department	salary	join_date	email	status
1	Aman	IT	50000	2022-01-10	aman@gmail.com
	Active
2	Riya	HR	45000	2021-03-15	riya@yahoo.com
	Active
3	Rahul	IT	60000	2020-07-01	NULL	Resigned
4	Priya	Finance	55000	2019-05-21	priya@gmail.com
	Active
5	Ankit	IT	70000	2018-11-30	ankit@outlook.com
	Resigned

departments

dept_id	dept_name
1	IT
2	HR
3	Finance
4	Marketing
Mixed Questions
Select all unique department names from employees table in alphabetical order.
Fetch all employees whose name starts with 'A' and email is NOT NULL.
List all employees from IT or Finance department whose salary > 55000.
Insert into a new table high_salary_employees all employees with salary > 60000 using INSERT INTO … SELECT.
Update salary by 10% for employees whose status = 'Active' AND department = 'IT'.
Delete all employees whose status = 'Resigned' OR email IS NULL.
Add a new column bonus to the employees table of type DECIMAL(10,2).
Select employees whose name contains 'ri' using LIKE wildcard.
From employees table, select name, department, salary of employees and order them by salary descending.
Fetch all employees whose join_date is before 2021 and department is not HR.
Select all employees with distinct salaries.
Update the status to 'Inactive' for employees whose email IS NULL.
Delete employees whose salary < 50000 or department = 'HR'.
Select employees from IT department whose name ends with 'k'.
Insert all employees with status = 'Active' AND salary > 50000 into active_high_salary table.*/