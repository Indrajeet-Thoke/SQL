SELECT * FROM EMP
/*1]Write an SQL query to assign a unique row number to each employee ordered by salary in descending order.*/
SELECT ENAME,JOB, SAL,
ROW_NUMBER()OVER(ORDER BY SAL DESC) AS ROW_NUM
FROM EMP
/*2]Display only the top 5 highest-paid employees using the ROW_NUMBER() function.*/
WITH E
AS 
(
	SELECT DEPTNO, ENAME, SAL,
	ROW_NUMBER() OVER(ORDER BY SAL DESC) AS ROW_NUM
	FROM EMP
)
SELECT DEPTNO, ENAME, SAL,ROW_NUM FROM E WHERE ROW_NUM <=5

/*3]Assign a unique row number to employees within each department, ordered by their salary (highest first).*/
SELECT DEPTNO, ENAME, SAL,
ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS DEPT_ROW
FROM EMP
/*4]Display the highest-paid employee in each department using ROW_NUMBER()*/
WITH E
AS
(
	SELECT DEPTNO, ENAME, SAL,
	ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL) AS RN
	FROM EMP
)
SELECT DEPTNO, ENAME, SAL, RN
FROM E
WHERE RN = 1
/*5]Assign row numbers to employees within each job role, ordered by their hire date (earliest first).*/
SELECT DEPTNO, ENAME, JOB, HIREDATE,
ROW_NUMBER()OVER(PARTITION BY JOB ORDER BY HIREDATE) AS JOB_ROW
FROM EMP
/*6]Display the second highest-paid employee in each department using the ROW_NUMBER() */
WITH E
AS
(
	SELECT ENAME, DEPTNO, SAL,
	ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL) AS ROW_NO
	FROM EMP
)
SELECT ENAME, DEPTNO, SAL, ROW_NO
FROM E
WHERE ROW_NO = 2

/*7]Give every employee a unique number based on their hire date (ascending) and show who joined first, second, third, etc. */
SELECT ENAME, JOB, HIREDATE,
ROW_NUMBER()OVER(ORDER BY HIREDATE ASC) AS ROW_NO
FROM EMP
/*8]Write a query to list employees in each department and assign row numbers based on salary in ascending order (lowest salary = 1).*/
SELECT ENAME, DEPTNO, SAL,
ROW_NUMBER() OVER(PARTITION BY DEPTNO ORDER BY SAL ASC) AS SALARY_ORDER
FROM EMP
/*9]Display the 3rd highest-paid employee overall using ROW_NUMBER().*/
WITH E
AS 
(
	SELECT ENAME, SAL, DEPTNO,JOB,
	ROW_NUMBER() OVER(ORDER BY SAL DESC) AS  RNK
	FROM EMP
)
SELECT ENAME, SAL, DEPTNO, JOB, RNK
FROM E 
WHERE RNK = 3

/*10]List all employees and assign a unique row number based on department number first and then salary descending.*/
SELECT ENAME, DEPTNO, JOB, SAL,
ROW_NUMBER()OVER(ORDER BY DEPTNO ASC, SAL DESC) AS DEPT_SALARY_ROW
FROM EMP