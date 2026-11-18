CREATE TABLE Students_A (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Students_B (
    id INT,
    name VARCHAR(50),
    city VARCHAR(50)
);


INSERT INTO Students_A VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Neha', 'Delhi'),
(3, 'Raj', 'Pune');

INSERT INTO Students_B VALUES
(3, 'Raj', 'Pune'),
(4, 'Simran', 'Jaipur'),
(5, 'Karan', 'Mumbai');


------------------------------UNION--------------------------------------------------------------------------------

SELECT * FROM Students_A
UNION
SELECT * FROM Students_B;

--with order by
SELECT * FROM Students_A
UNION
SELECT * FROM Students_B
ORDER BY city;

--with order by
SELECT * FROM Students_A
where city='Mumbai'
UNION
SELECT * FROM Students_B
where city='Mumbai'
ORDER BY city;

----------------------------------UNION ALL-------------------------------------------------------------------

SELECT * FROM Students_A;
SELECT * FROM Students_B;

--union all
SELECT * FROM Students_A
UNION ALL
SELECT * FROM Students_B;

--with order by
SELECT * FROM Students_A
UNION ALL
SELECT * FROM Students_B
ORDER BY city;

--with order by
SELECT * FROM Students_A
where city='Mumbai'
UNION ALL
SELECT * FROM Students_B
where city='Mumbai'
ORDER BY city;

--ADDITIONAL
/*👉 UNION = filter lagta hai (slow)
👉 UNION ALL = direct jodta hai (fast)*

UNION ALL – Kab use karte hain?

👉 Jab tumhe poora data chahiye (duplicate bhi)

💡 Use cases:
Logs / transactions (repeat hona normal hai)
Sales data (same product multiple baar bikta hai)
Performance fast chahiye
*/

--HAVING 
--👉 WHERE = group banne se pehle filter
--👉 HAVING = group banne ke baad filter 

