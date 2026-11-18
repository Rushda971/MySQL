--Datatype in sql
--numbers:ids(int),money(decimal)~used for more precise or accuracy
--text:(varchar)emails,passwords
--date and time:DATE → date of birth, joining date
	--TIMESTAMP / DATETIME → record kab create/update hua
--Boolean
--BOOLEAN → true/false (active/inactive)

--CREATE OR REPLACE VIEW



create table student (
id int primary key,
firstname varchar(20),
lastname varchar(20),
dep varchar(20) );

insert into student
values (1392,'rushda','khan','cs')
select * from student;

insert into student
values (1393,'riya','sha','bfa'),(1475,'tina','dubey','bms')
select * from student;

insert into student (id,firstname,lastname)
values (5990,'priya','sharma')
select * from student;

--add col
alter table student
add address varchar(20);
--directly insert nhi kar sakte hai
insert into student(address)
values('bhyander'),('miraroad'),('andheri'),('dahisar')

--updating values
select * from student;
update student
set address='bhyander'
where id=1392

select * from student;
update student
set address='miraroad'
where id=1393

select * from student;
update student
set address='dahisar'
where id=1457

select * from student;
insert into student
values (1404,'yanti','nagaraj','cs','dahisar'),(1396,'anushka','chaubey','cs','borivali')

select * from student;
select distinct dep from student;
select * from student;
select distinct * from student;
select * from student;
select distinct dep,address from student;
select * from student;
select * from student
where id=1392;
select * from student;
select * from student
where address ='miraroad';
select * from student
where id <5990;
select * from student
where id > 1400;
select * from student
where id >= 1500;
select * from student
where id <= 1400;
select * from student
where id <> 1300;
select * from student
order by id;
select * from student
order by address;
select * from student
order by lastname;
select * from student
order by lastname asc;
select * from student
order by lastname desc;
select * from student
order by lastname asc,firstname desc;

select * from student
where dep= 'cs' or dep='bms';

select * from student
where dep= 'cs'and address like '%b' or dep='bms';

select * from student
where dep= 'cs'or address like '%b' or dep='bms';

select * from student;

select * from student
where dep='cs'  or address like 'd%';

select * from student
where dep='cs' and (address like 'd%' or address like 'b%');
select * from student;
--like %
select * from student; 

select * from student 
where dep='cs' and address like 'b%';

select * from student 
where dep='cs' and address like 'b%';

select * from student
where address like '%bhy%';

select * from student
where dep like 'b__';


select * from student
where dep like 'b_S';

--Combine wildcard 

-- _% iska mtlb hai one ya one zyada occurence after b
select * from student
where dep like 'b_%';

-- _ represents any no of character before m
select * from student
where dep like '_m%';

select * from student
where dep like '%';

--[] -yeh bracket ke andar saare char ko represent karta hai
select * from student
where dep like '[ a-d]%';

-- ^ yeh unho character ko include nhi karta hai joh bRACES MAIN HAI
select * from student
where firstname like '[^a-d]%'
select * from student; 
--{} yeh kisi characater ke specific occurence (continues) ko dekhta hai 
select * from student
where firstname like '%a{2}%';

select * from student
where firstname like 'a_%[a-h]';

select * from student
where firstname like 'b[aeiou]%r';
select * from student;

/* 
'b[aeiou]%r': starting with b and second word should be vowel and zero and any no of r
'_[^0-9]%[A-Z]':String ka

1st character: kuch bhi
2nd character: digit nahi hona chahiye
beech me: kuch bhi aa sakta hai
last character: uppercase letter (A–Z)


'_%[!aeiou]%':
String me kam se kam ek character aisa hona chahiye jo vowel na ho (i.e., non-vowel)
Aur string minimum 2 characters long honi chahiye (kyunki _ + baaki pattern)
*/

--AGGREGRATION FUNTION
--MIN
SELECT MIN(ID)
FROM STUDENT;

--ALIAS ~~ AS
--YEH ISLIYE USE KARTE HAI KYUKI AGGREGATION FUNCTION MEI COLUMN NAME SHOW NHI HOTA TAB NAMING KE LIYE ALIAS USE KARTE HAI
SELECT MIN(ID) AS MIN_ID
FROM STUDENT;

/*SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;*/

SELECT MIN(ID) AS MIN_ID,DEP
FROM STUDENT
GROUP BY DEP;
-- ISKA  MTLB HAI MIN ID KO PEHLE NAME KAREGYE THAN 
--DEP KO CATEGOERIRES KAREGYE THEN 
--MIN ID KO GROUP HUWE DEP KE MAIN ARRANGE KAREGYE 

--MAX
select max(id)
from student;

--max with alias
select max(id) as max_id
from student;

-- max with group by 
select max(id) as max_id,dep
from student
group by dep;

--sum
--Note: NULL values are ignored.
select sum(id)
from student;

--where clause
select sum(id)
from student
where dep='cs';

--use as alias
select sum(id) as student_ids
from student
where dep='cs';

--use sum with group by
select dep ,sum(id) as student_ids
from student
group by dep;


--business calculation
select sum(id*10)
from student;

--left join??

--avg
select avg(id)
from student;

--avg with where clause
select avg(id)
from student
where dep='cs';

--avg with alias
select avg(id) as avg_id
from student;

--Higher Than Average(used:show prices which is higher then avg)
select * from student
where id>(select avg(id) from student);

--with group by
select dep,avg(id) as student_id
from student
group by dep;

--count
--The behavior of COUNT() depends on the argument used within the parentheses:

--COUNT(*) - Counts the total number of rows in a table (including NULL values).
select count(*)
from student;

--COUNT(columnname) - Counts all non-null values in the column.
select count(dep)
from student;

--COUNT(DISTINCT columnname) - Counts only the unique, non-null values in the column.
select count(distinct dep)
from student;

--Add a WHERE Clause
--select count(0

--in (it is used instead of multiple or )- shorthand propertie
-- if used with (same result, but longer code):
select * from student
where dep in ('bms','cs') ;

--not in (it excludes that value that are not required)
select * from student
where dep not in ('cs');

--in(select)
--working:
/*1. sub query( pehle run hote hai)
	SELECT CustomerID FROM Orders
	- yeh list banate hai
	-101,103,105
 2. main query (phir yeh run hote hai)
	SELECT * FROM Customers
	WHERE CustomerID IN (101, 103, 105);
 then customer table and order table mein jo dono mei matching values hai woh dekte hai 


~~Trick
Subquery = list banata hai
IN = check karta hai ki value us list mein hai ya nahi
Use case = "matching data across tables"

--Advanced Understanding (Pro Level)
Yeh basically semi-join jaisa behave karta hai
	Internally DB aisa sochta hai:
"Match karo Customers aur Orders ko based on CustomerID"
"Sirf matching records lao"

++ Common Mistake

Agar subquery NULL return kare toh problem ho sakta hai
Isliye kabhi kabhi log EXISTS use karte hain (faster + safer)
*/

----------------------NEED PRACTICE----------------------------------------
-- not in (select) 

----------------------NEED PRACTICE----------------------------------------
--between
select * from student
where id between 1300 and 1600;

--not between (woh saare values show karta hai joh joh use range miain aate hai )
select * from student
where id not between 1300 and 1400;

--BETWEEN with IN

--joins
--inner join
--left join
--right join
--full join
--cross join