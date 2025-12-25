--1]Display employee name and salary with RANK() based on salary in descending order
SELECT EMPNO, ENAME, SAL,
RANK() OVER (ORDER BY SAL DESC) AS RNK
FROM EMP
--2]Display employee name, salary, and DENSE_RANK() based on salary (highest salary = rank 1).
SELECT ENAME, SAL, 
DENSE_RANK() OVER(ORDER BY SAL DESC) AS RNK
FROM EMP
--3]Assign a unique ROW_NUMBER() to each employee ordered by salary in descending order.
SELECT ENAME, SAL,
ROW_NUMBER() OVER (ORDER BY SAL  DESC) AS RNK
FROM EMP
--4]Show the salary ranking within each department using RANK() with PARTITION BY.
SELECT ENAME, SAL, EMPNO, DEPTNO,
RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS RNK
FROM EMP
--5]Show the salary ranking within each job role using DENSE_RANK() with PARTITION BY.
SELECT ENAME, DEPTNO, SAL,JOB,
DENSE_RANK() OVER(PARTITION BY JOB ORDER BY SAL DESC) AS RNK 
FROM EMP
--6]Show the employee with the highest salary in each department using RANK.
WITH E
AS
(
	SELECT ENAME, DEPTNO, SAL,
	RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS RNK
	FROM EMP
)
SELECT ENAME, DEPTNO, SAL
FROM E
WHERE RNK = 1
--7]Show the employee(s) having the 2nd highest salary using DENSE_RANK.
WITH E
AS
(
	SELECT ENAME, JOB,SAL,
	DENSE_RANK()OVER(ORDER BY SAL DESC) AS RNK
	FROM EMP
)
SELECT ENAME, JOB, SAL
FROM E
WHERE RNK = 2
--8]Show the employee(s) having the 3rd highest salary using RANK.
WITH E
AS 
(
	SELECT ENAME, JOB,SAL,
	RANK() OVER(ORDER BY SAL DESC) AS RNK
	FROM EMP
)
SELECT * FROM E 
WHERE RNK = 3
--9]Using ROW_NUMBER, list the top 5 employees earning highest salaries.
WITH E
AS
(
	SELECT ENAME, JOB, SAL,
	ROW_NUMBER() OVER(ORDER BY SAL DESC) AS RNK
	FROM EMP
)
SELECT * 
	FROM E
		WHERE RNK <=5 
--10]Using ROW_NUMBER, identify duplicate employee names (assuming duplicates exist).
WITH E
AS 
(
	SELECT ENAME,EMPNO,JOB, SAL,
	ROW_NUMBER()OVER(PARTITION BY ENAME ORDER BY EMPNO) AS RNK
	FROM EMP
)
SELECT *
FROM E
WHERE RNK >1
--11]Display employee name, salary, and show ROW_NUMBER, RANK, and DENSE_RANK together to compare results.
SELECT ENAME,SAL,
ROW_NUMBER()OVER(ORDER BY SAL DESC) AS ROW_NUM_RNK,
RANK()OVER(ORDER BY SAL DESC) AS RNK,
DENSE_RANK()OVER(ORDER BY SAL DESC) AS DENSE_RNK
FROM EMP
--12]Create a CTE to find employees whose salary is higher than the average salary.
