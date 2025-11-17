CREATE TABLE customer
(
	id smallint,
	name varchar(15),
	age tinyint,
	city varchar(15),
	dor date
)
INSERT INTO  customer VALUES(101,'alex', 35, 'hyd','2020-10-05'),
							(102,'sam', 28, 'delhi','2021-12-12'),
							(103,'alen', 19, 'mumbai','2022-03-23'),
							(104, 'max', 14, 'noida','2024-04-12'),
							(105, 'king',21, 'pune', '2022-03-23')
SELECT * FROM customer
INSERT INTO customer(id, name, city, DOR) VALUES (106,'jones','uk','2020-03-23')
INSERT INTO customer(id,name,dor)VALUES(107,'blake','2017-05-16')
INSERT INTO customer(id,name,age)VALUES(108,'clark',24)
INSERT INTO customer(id,name, city,dor) VALUES(109,'martin','england','2021-09-23')
INSERT INTO customer(id,name,age,city,dor)VALUES(110,'scott',30,'uk','2024-09-28')
SELECT * FROM customer

SELECT * FROM customer WHERE id = 103
SELECT * FROM customer WHERE name = 'sam'
SELECT * FROM customer WHERE age >20
SELECT * FROM customer WHERE dor > '2020-01-01'
SELECT * FROM customer WHERE dor < '2020-01-01'
SELECT * FROM customer WHERE city = 'mumbai'
SELECT * FROM customer WHERE city != 'mumbai'
select * from customer where id IN(101,102,103,104)
select * from customer where city IN('mumbai','uk','pune')
select * from customer where city NOT IN('mumbai','pune')
select * from customer where dor BETWEEN '2020-01-01' AND '2020-12-01' 
SELECT * FROM customer WHERE dor NOT BETWEEN '2020-01-01' AND '2020-12-01'
SELECT * FROM customer WHERE age BETWEEN 20 AND 30
SELECT * FROM customer WHERE city IN('pune','mumbai') AND age BETWEEN 20 AND 30 AND dor NOT BETWEEN '2020-01-01' AND '2020-12-01' 
SELECT * FROM customer WHERE name LIKE 'S%'
SELECT * 
FROM customer
WHERE name LIKE '%E'
SELECT *
FROM customer 
WHERE  name LIKE '%A%'
SELECT * FROM customer WHERE name LIKE '__A%'
SELECT * FROM customer WHERE NAME LIKE '_____'
SELECT * FROM customer WHERE NAME LIKE'[A,E,I,O,U]%'
SELECT * FROM customer WHERE NAME LIKE '[A-P]%'
SELECT * FROM customer WHERE age IS NULL
SELECT * FROM customer WHERE city IS NOT NULL



