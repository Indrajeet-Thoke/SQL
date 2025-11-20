SELECT * FROM EMP

SELECT DEPTNO, JOB, SUM(SAL) AS TOT
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB)
ORDER BY DEPTNO ASC

SELECT DEPTNO, JOB, SUM(SAL) AS TOT
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO ASC, JOB ASC

CREATE TABLE PersonDetails (
    AadharNo BIGINT PRIMARY KEY,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Region VARCHAR(100)
)
INSERT INTO PersonDetails (AadharNo, Name, Gender, DateOfBirth, Address, City, State, Region) VALUES
(901122334411, 'Rahul Sharma', 'Male', '1998-05-12', 'MG Road', 'Mumbai', 'Maharashtra', 'West'),
(901122334412, 'Priya Verma', 'Female', '1995-09-23', 'Sector 15', 'Pune', 'Maharashtra', 'West'),
(901122334413, 'Amit Singh', 'Male', '1992-11-02', 'Civil Lines', 'Delhi', 'Delhi', 'North'),
(901122334414, 'Sneha Patil', 'Female', '1999-03-14', 'FC Road', 'Nagpur', 'Maharashtra', 'West'),
(901122334415, 'Karan Mehta', 'Male', '1990-07-07', 'Ring Road', 'Surat', 'Gujarat', 'West'),
(901122334416, 'Riya Gupta', 'Female', '1997-01-19', 'Rajendra Nagar', 'Indore', 'Madhya Pradesh', 'Central'),
(901122334417, 'Sunil Kumar', 'Male', '1988-12-25', 'Lal Chowk', 'Srinagar', 'Jammu & Kashmir', 'North'),
(901122334418, 'Neha Joshi', 'Female', '1996-06-30', 'Camp Area', 'Pune', 'Maharashtra', 'West'),
(901122334419, 'Arjun Reddy', 'Male', '1994-08-05', 'Banjara Hills', 'Hyderabad', 'Telangana', 'South'),
(901122334420, 'Pooja Rao', 'Female', '1993-04-11', 'Church Street', 'Bengaluru', 'Karnataka', 'South'),
(901122334421, 'Rohit Kulkarni', 'Male', '1997-02-22', 'Shaniwar Peth', 'Pune', 'Maharashtra', 'West'),
(901122334422, 'Nidhi Sharma', 'Female', '1998-09-15', 'Gandhi Nagar', 'Jaipur', 'Rajasthan', 'North'),
(901122334423, 'Manoj Yadav', 'Male', '1991-05-20', 'Kankarbagh', 'Patna', 'Bihar', 'East'),
(901122334424, 'Ishita Shah', 'Female', '1999-10-03', 'Navrangpura', 'Ahmedabad', 'Gujarat', 'West'),
(901122334425, 'Suresh Pillai', 'Male', '1987-03-11', 'Marine Drive', 'Kochi', 'Kerala', 'South'),
(901122334426, 'Anjali Nair', 'Female', '1995-12-09', 'Kakkanad', 'Kochi', 'Kerala', 'South'),
(901122334427, 'Vikram Singh', 'Male', '1989-04-04', 'Hazaratganj', 'Lucknow', 'Uttar Pradesh', 'North'),
(901122334428, 'Shreya Shetty', 'Female', '1998-07-19', 'MG Road', 'Mangaluru', 'Karnataka', 'South'),
(901122334429, 'Rajesh Kumar', 'Male', '1993-01-08', 'Sector 22', 'Chandigarh', 'Chandigarh', 'North'),
(901122334430, 'Megha Jain', 'Female', '1996-06-06', 'Civil Lines', 'Bhopal', 'Madhya Pradesh', 'Central'),
(901122334431, 'Aakash Thakur', 'Male', '1992-08-17', 'Rampur Road', 'Dehradun', 'Uttarakhand', 'North'),
(901122334432, 'Shruti Mishra', 'Female', '1997-02-27', 'Aliganj', 'Lucknow', 'Uttar Pradesh', 'North'),
(901122334433, 'Harsh Patel', 'Male', '1994-03-29', 'SG Highway', 'Ahmedabad', 'Gujarat', 'West'),
(901122334434, 'Divya Soni', 'Female', '1999-11-14', 'Malviya Nagar', 'Delhi', 'Delhi', 'North'),
(901122334435, 'Ankit Prasad', 'Male', '1991-09-09', 'Park Street', 'Kolkata', 'West Bengal', 'East'),
(901122334436, 'Kavita Kaur', 'Female', '1998-08-13', 'Model Town', 'Ludhiana', 'Punjab', 'North'),
(901122334437, 'Sanjay Gupta', 'Male', '1986-12-18', 'Gomti Nagar', 'Lucknow', 'Uttar Pradesh', 'North'),
(901122334438, 'Aarohi Desai', 'Female', '1996-05-01', 'Athwa Lines', 'Surat', 'Gujarat', 'West'),
(901122334439, 'Naveen Reddy', 'Male', '1993-10-21', 'Ameerpet', 'Hyderabad', 'Telangana', 'South'),
(901122334440, 'Tanya Kapoor', 'Female', '1997-02-14', 'Sector 18', 'Noida', 'Uttar Pradesh', 'North'),
(901122334441, 'Gaurav Jain', 'Male', '1995-06-03', 'MI Road', 'Jaipur', 'Rajasthan', 'North'),
(901122334442, 'Ritika Malhotra', 'Female', '1998-01-22', 'Model Town', 'Delhi', 'Delhi', 'North'),
(901122334443, 'Deepak Singh', 'Male', '1990-07-27', 'Gariahat', 'Kolkata', 'West Bengal', 'East'),
(901122334444, 'Simran Ahuja', 'Female', '1996-11-09', 'Andheri West', 'Mumbai', 'Maharashtra', 'West'),
(901122334445, 'Yash Saxena', 'Male', '1994-04-15', 'Wakad', 'Pune', 'Maharashtra', 'West'),
(901122334446, 'Pallavi More', 'Female', '1999-12-03', 'Kamothe', 'Navi Mumbai', 'Maharashtra', 'West'),
(901122334447, 'Abhinav Shukla', 'Male', '1992-02-11', 'Rajpur Road', 'Dehradun', 'Uttarakhand', 'North'),
(901122334448, 'Janhavi Kulkarni', 'Female', '1997-05-10', 'Sadashiv Peth', 'Pune', 'Maharashtra', 'West'),
(901122334449, 'Mahesh Rao', 'Male', '1989-09-07', 'Jayanagar', 'Bengaluru', 'Karnataka', 'South'),
(901122334450, 'Aditi Chavan', 'Female', '1998-03-18', 'Colaba', 'Mumbai', 'Maharashtra', 'West'),
(901122334451, 'Vivek Pandey', 'Male', '1993-06-28', 'Dharampeth', 'Nagpur', 'Maharashtra', 'West'),
(901122334452, 'Sonali Gawande', 'Female', '1996-07-17', 'Pratap Nagar', 'Nagpur', 'Maharashtra', 'West'),
(901122334453, 'Ashish Raj', 'Male', '1994-11-24', 'Boring Road', 'Patna', 'Bihar', 'East'),
(901122334454, 'Komal Shinde', 'Female', '1999-01-05', 'Shivaji Nagar', 'Pune', 'Maharashtra', 'West'),
(901122334455, 'Ramesh Pawar', 'Male', '1988-05-29', 'Kalwa', 'Thane', 'Maharashtra', 'West'),
(901122334456, 'Shalini Gupta', 'Female', '1997-02-28', 'Arihant Colony', 'Indore', 'Madhya Pradesh', 'Central'),
(901122334457, 'Ajay Kumar', 'Male', '1992-09-13', 'Sector 62', 'Noida', 'Uttar Pradesh', 'North'),
(901122334458, 'Payal Tiwari', 'Female', '1996-10-30', 'Vijay Nagar', 'Indore', 'Madhya Pradesh', 'Central'),
(901122334459, 'Nikhil Sharma', 'Male', '1993-03-08', 'Madhapur', 'Hyderabad', 'Telangana', 'South'),
(901122334460, 'Mansi Lodha', 'Female', '1998-06-14', 'Race Course Road', 'Bengaluru', 'Karnataka', 'South')

SELECT * FROM PersonDetails
--1]Write a query to find the count of people in each State and City, and also show subtotals for each State and a grand total.
SELECT STATE, CITY, COUNT(*) AS TOTALPEOPLE
FROM PersonDetails
GROUP BY ROLLUP(STATE, CITY)
--2]Write a query to get the number of people by Region ? State, including subtotals for each Region and a grand total.
SELECT * FROM PersonDetails
SELECT STATE ,REGION, COUNT(*) AS NUMBER_OF_PEOPLE
FROM PersonDetails
GROUP BY ROLLUP(STATE, REGION)
--3]Write a query to display the Gender-wise count inside each State, and show the total count per State and the final overall total.
SELECT * FROM PersonDetails
SELECT STATE, GENDER, COUNT(*) AS TOTAL_PEOPLE
FROM PersonDetails
GROUP BY ROLLUP(STATE, GENDER)

--4]Write a query to get the count of people by State and Gender, including all combinations (totals by State, totals by Gender, and overall total).
SELECT STATE, GENDER, COUNT(*) AS TOTALPEOPLE
FROM PersonDetails
GROUP BY CUBE(STATE, GENDER)
--5]Write a query to find the number of people in every Region, State, and City, including all subtotal combinations.
SELECT STATE, REGION, CITY, COUNT(*) AS TOTALPEOPLE
FROM PersonDetails
GROUP BY  CUBE(STATE, REGION, CITY)
--6] Write a query to show the total number of people based on Gender and Region, including every possible subtotal.
SELECT GENDER, REGION, COUNT(*) AS TOTALPEOPLE
FROM PersonDetails
GROUP BY CUBE(GENDER, REGION)