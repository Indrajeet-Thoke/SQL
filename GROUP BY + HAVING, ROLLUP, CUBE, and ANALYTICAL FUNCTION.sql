--##GROUP BY 
--1 Find total salary in each department.
SELECT SUM(SAL) AS TOT_SAL
FROM EMP
GROUP BY DEPTNO
--2 Find number of employees in each job role.
SELECT COUNT(*) AS EMP_COUNT 
FROM EMP
GROUP BY JOB
--3 Find average salary in each department where avg salary > 2000.
SELECT DEPTNO, AVG(SAL) AS AVERAGE_SAL 
FROM EMP
GROUP BY DEPTNO
--4 Find departments where more than 3 employees work.
SELECT DEPTNO, COUNT(*) AS EMP_COUNT
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)> 3


--## HAVING Clause Questions

--1 Show all job roles where MAX salary is above 3000.
SELECT JOB, MAX(SAL) AS MAX_SAL 
FROM EMP
GROUP BY JOB
HAVING MAX(SAL) > 3000
--2 Find department numbers where SUM of commission is not null.
SELECT DEPTNO, SUM(COMM) AS TOTAL_COMM
FROM EMP
GROUP BY DEPTNO
HAVING SUM(COMM) IS NOT NULL


-- ROLLUP Questions
--1 Department-wise total salary + grand total.
SELECT DEPTNO, SUM(SAL) AS TOTAL_SAL
FROM EMP
GROUP BY ROLLUP(DEPTNO)
--2 Job-wise and department-wise totals including subtotals.
SELECT DEPTNO, JOB, SUM(SAL) AS TOTAL_SAL
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB)


-- CUBE Questions
--1 All possible combinations of DEPTNO & JOB totals.
SELECT DEPTNO, JOB, SUM(SAL) AS TOTAL_SAL
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
--2 Total salary across each dimension (DEPTNO, JOB) and grand total.
SELECT DEPTNO, JOB, SUM(SAL)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)

-- ANALYTICAL FUNCTION (WINDOW FUNCTION) QUESTIONS

--1 Rank employees by salary (highest first).
SELECT ENAME, SAL,
				RANK()OVER(ORDER BY SAL DESC)
FROM EMP
--2 Department-wise rank of employees by salary.
SELECT DEPTNO, SAL,
				RANK()OVER(PARTITION BY DEPTNO ORDER BY SAL DESC ) AS DEPTNO_RANK
FROM EMP
--3 Running total of salary (cumulative sum).
SELECT ENAME, SAL, 
			SUM(SAL) OVER (ORDER BY SAL) AS RUNNING_SAL
FROM EMP
--4 Find average salary in each department (without grouping).
SELECT DEPTNO, AVG(SAL)
				OVER(ORDER BY SAL) AS AVERAGE_SAL
FROM EMP