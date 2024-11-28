--query to display first_name, last_name as First name, Last name

SELECT 
    first_name AS "first name",
    last_name AS "last name"
FROM employees e ;

--Unique department id from employees table
SELECT DISTINCT department_id
	FROM employees e ;

--All employees details from employee table order by first_name descending 
SELECT *
	FROM 	employees e 
		ORDER BY first_name DESC;
	
--Query to get names, salary, PF of all employees
SELECT first_name, last_name, salary, (0.12 * salary) AS 'PF'
	FROM employees e ;
	
--Total salaries payable to employees
SELECT SUM (salary)
	FROM employees e ;

--Maximum and Minimum Salary from employees table
SELECT MAX (salary),
		MIN (salary)
			FROM 	employees e ;
		
--Average Salary and Number of Employees from employee table
SELECT ROUND (AVG(salary), 2),
		 COUNT (employee_id)
			FROM employees e ;
		
--Number of employees working with the company
SELECT DISTINCT COUNT (employee_id)
	FROM employees e ;

-- Number of jobs available in the employees table
SELECT DISTINCT COUNT (job_id)
	FROM employees e ;

--First name from employees table in upper case
SELECT UPPER (first_name)
	FROM employees e ;

--First three characters of first name 
SELECT SUBSTR(first_name, 1, 3)
FROM employees;

	
	
			