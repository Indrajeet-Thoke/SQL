SELECT *  FROM EMP
/*1]Rank all employees based on their salary, where the highest salary gets rank 1.*/
SELECT EMPNO, ENAME, SAL,
RANK() OVER (ORDER BY SAL DESC) AS RNK
FROM EMP
/*2]Assign a dense rank to employees based on salary within each department. */
SELECT EMPNO, ENAME, DEPTNO,
DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
FROM EMP
/*3] Rank employees according to their hire date, where the earliest hire gets rank 1. */
SELECT DEPTNO, ENAME,HIREDATE,
RANK() OVER(ORDER BY HIREDATE ASC) AS EXP
FROM EMP
/*4] Rank employees by salary within their job role. */
SELECT EMPNO,DEPTNO,ENAME,JOB ,SAL,
RANK() OVER( PARTITION BY JOB ORDER BY SAL DESC ) AS HIGH_SAL
FROM EMP
/*5]Find employees who share the same salary rank in the same department (use DENSE_RANK)*/
SELECT ENAME, DEPTNO, SAL,
DENSE_RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL ASC) AS JOB_SAL_RANK
FROM EMP

/*6]Display only the top 3 highest-paid employees (using RANK)*/
WITH E
AS 
(
	SELECT ENAME, JOB, DEPTNO, SAL,
	RANK() OVER (ORDER BY SAL DESC) AS TOP_SAL
	FROM EMP
)
SELECT ENAME, SAL, TOP_SAL FROM E WHERE TOP_SAL<=3

/*7]Compare RANK() and DENSE_RANK() for employees based on salary  */
SELECT ENAME, SAL,
RANK() OVER(ORDER BY SAL DESC) AS RANK_SAL,
DENSE_RANK() OVER(ORDER BY SAL DESC) AS DENSE_RANK_SAL
FROM EMP

/*8]Find the highest-paid employee in each department */
SELECT DEPTNO, ENAME, SAL,
RANK() OVER(PARTITION BY DEPTNO ORDER BY SAL) AS RANK
FROM EMP

/*9]Rank employees based on salary and hire date (salary first, then hire date)*/
SELECT ENAME, SAL, HIREDATE,
RANK()OVER(ORDER BY SAL DESC, HIREDATE ASC) AS SAL_HIRE_RANK
FROM EMP

/*10]Find the 2nd highest salary in each department using DENSE_RANK*/
WITH E
AS
(
	SELECT ENAME, DEPTNO, SAL,
	DENSE_RANK()OVER(PARTITION BY DEPTNO ORDER BY SAL DESC) AS RANK
	FROM EMP
)
SELECT ENAME,DEPTNO, SAL, RANK FROM E WHERE RANK = 2

