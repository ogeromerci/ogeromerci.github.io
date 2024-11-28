--Display first_name, last_name and salary for all employees whose salary is not in the range $10,000 through $15000		
SELECT first_name, last_name, salary
	FROM employees
		WHERE salary NOT BETWEEN 10000 AND 15000;

--Display the first_name, last_name and department_id of all employees in department 30 0r 100 ascdening alphabetical order by department_id
SELECT first_name, last_name, department_id
	FROM employees e
		WHERE department_id = 30 OR department_id = 100
			ORDER BY department_id ASC;
	
--Display first_name, last_name and salary for all employees whose salary is not in the range $10,000 through $15000 and in department 30 0r 100	
SELECT first_name, last_name, salary 
	FROM employees e 
		WHERE salary NOT BETWEEN 10000 AND 15000  AND
			department_id = 30 OR department_id = 100;
		
--Display first_name of all employees that have both "b" and "c" in first_name
SELECT first_name
	FROM employees e 
		WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';
	
--Display last name, job, salary of all employees whose job is that of a programmer or a shipping clerk and whose salary is not equal to $4500, $10,000 or $15,000
SELECT last_name, job_id, salary
	FROM employees e 
		WHERE job_id = 'IT_PROG'  OR job_id  = 'SH_CLERK'
		AND 
		 	salary IS NOT = $4500 OR salary = $10,000 OR salary = $15,000;
		 
--Display last names of employees whose names have exactly six characters
SELECT last_name
	FROM employees e 
		WHERE last_name LIKE '______';
		
--Display the last names of employees having "e" as the third character
SELECT last_name
	FROM employees e 
		WHERE last_name LIKE '__e%';

--Display jobs/designation available 
SELECT DISTINCT job_id
	FROM employees e ;

--Display first name, last name, salary and PF
SELECT first_name, last_name, salary, (0.15*salary) AS 'PF'
	FROM employees e ;
	