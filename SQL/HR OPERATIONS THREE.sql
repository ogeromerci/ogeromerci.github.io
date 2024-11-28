-- Number of jobs available in the employees table
SELECT e.job_id AS 'jobs',
       j.job_title AS 'Job Title',
       COUNT(e.job_id) AS 'number of jobs'
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id 
GROUP BY e.job_id, j.job_title 
ORDER BY COUNT(e.job_id);

--Total salaries payable to employees
SELECT SUM (salary) AS 'Total salary'
FROM employees e ;
	
--Minimum Salary from employees table
SELECT MIN (salary) AS 'Minimum salary'
FROM 	employees e ;
	
--Maximum salary of an employee working as a programmer
SELECT MAX (salary) AS 'Maximum salary'
FROM employees e 
WHERE job_id = 'IT_PROG' ;

--Average Salary and number of employees working the department 90
SELECT ROUND (AVG (salary), 2) AS 'Average Salary', 
              COUNT (job_id) AS 'Number of employees'
FROM employees e 
WHERE department_id = 90;

--Highest, lowest, sum, average salary of all employees
SELECT MAX (salary) AS 'Maximum salary', 
	   MIN (salary) AS 'Minimum salary',
	   SUM (salary) AS 'Total salary',
	   ROUND (AVG (salary), 2) AS 'Salary Average'
FROM employees e ;

--Number of employees with the same job
SELECT DISTINCT job_id , COUNT (employee_id) AS 'number of employees'
FROM employees e 
GROUP BY job_id 
ORDER BY COUNT(job_id) DESC;

--Difference between the highest and lowest salaries
SELECT MAX (salary)-MIN (salary) AS 'Difference in salary'
FROM employees e ;

--Manager ID and the salary of the lowest paid employee for that manager
SELECT manager_id, 
	   MIN (salary) AS 'Low salary'
FROM employees e 
GROUP BY manager_id ;

--Department id and the total salary payable in each department
SELECT department_id,
       SUM (salary) AS 'Summation of salaries'
FROM employees e 
GROUP BY department_id ;

--Average salary for each job_id excluding programmer
SELECT AVG(salary) AS 'Average Salary',
      job_id
FROM employees e 
WHERE job_id != 'IT_PROG'
GROUP BY job_id ;
       

--Total salary, Maximum, Minumum, Average Salary of all employees (Job Id wise) for department 90 only
SELECT SUM (salary) AS 'Total salary',
	   MAX (salary) AS 'Maximum salary', 
	   MIN (salary) AS 'Minimum salary',
	   ROUND (AVG (salary), 2) AS 'Salary Average',
	   job_id 
FROM employees e 
WHERE department_id = 90
GROUP BY job_id;

--Job id and maximum salary of employees where maximum salaries is greater than or equal to $4000
SELECT job_id,
       MAX (salary) AS 'maximum salary'
FROM employees e 
GROUP BY job_id 
HAVING MAX(salary)>= 4000;

--Average Salary for all departments employing more than 10 employees
SELECT ROUND (AVG(salary), 2) AS 'Average salary',
       department_id
FROM employees e 
GROUP BY department_id 
HAVING department_id > 90;

--PRACTICE 
SELECT d.department_name AS 'DEPARTMENT'
        residence.ADDRESSES
FROM department d
JOIN (SELECT 
      CONCAT (l.location_id,', ', l.street_adress,',',l.city,',',l.state_province,',',c.country_name) AS 'ADDRESSES',
      l.location_id
    FROM countries c
    JOIN locations l
    ON c.country_id = l.country_id) residence
  ON residence.location_id = d.location_id
 ORDER BY department_name ASC;
      
      
      



 
