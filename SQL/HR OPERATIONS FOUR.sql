--Query to find the address (location_id), street_address, city, state, name of all employees
SELECT location_id, 
	   	street_address,
	   	city, 
	   	state_province,
	   	country_name
FROM locations l 
JOIN countries c ON l.country_id = c.country_id; 


--Query to find the names (first_name, last name) , department ID and the names of all employees
SELECT  first_name ,
        last_name ,
       CONCAT(first_name, ' ', last_name) AS Names,
       department_id 
FROM employees e ;

--Query to find employee_id, name(last_name) along with their manager_id, manager name (last_name)
SELECT employee_id, 
	    last_name AS 'Name',
	    manager_id,
	    last_name AS 'manager id'
FROM employees e ;


--Query to find the names (first_name, last_name) and the hire date of the employees who were hired after "Jones)"
WITH HiresAfterJones AS (
     SELECT hire_date
    FROM employees
    WHERE last_name = 'Jones'
)
SELECT first_name, 
       last_name,
       hire_date
FROM employees
WHERE hire_date > (SELECT hire_date FROM HiresAfterJones);


--Query to find the department name and number of employees of the department 
SELECT department_name, 
       COUNT(DISTINCT employee_id) AS number_employees_of_the_department
FROM department d 
JOIN employees e ON d.department_id = e.department_id
GROUP BY department_name ;

--Query to find employee ID, job title, number of dates between ending date and starting dates for all the jobs in department 90 from job history
SELECT e.employee_id,
       j.job_title,
       DATEDIFF(jh.end_date, jh.start_date) AS number_of_days
FROM job_history jh
JOIN employees e ON jh.employee_id = e.employee_id
JOIN jobs j ON j.job_id = e.employee_id ;

--Query to display department ID, department name, and manager`s first name
SELECT department_id ,
       department_name,
       manager_id
FROM department d ;
--JOIN employees e ON d.department_id = e.department_id ;

--Query to display department name, manager name and city
SELECT d.depart_name,
       l.city
FROM department d 
JOIN locations  ON d.location_id = l.location_id;


--JOIN employees m ON d.manager_id = m.employee_id
--JOIN locations l ON d.location_id = l.location_id;


--Query to show job title and average salary of employees
SELECT j.job_title,
       AVG(e.salary) AS 'Average Salary of Employees'
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id 
GROUP BY job_title;


--Query to display job title, employee name, difference between the salary of the emplyees and minimum salary for the job
SELECT job_title,
       CONCAT(first_name, ' ', last_name) AS Names,
       (salary - min_salary) AS 'Difference in salary'
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;


--Query to display the job history that was done by an employee who is currently drawing more than 10000 of the salary
WITH EmployeeGettingHighSalary AS (
    SELECT employee_id
    FROM employees
    WHERE salary > 10000
)
SELECT employee_id,
       start_date,
       end_date
FROM job_history jh
JOIN EmployeesGettingHighSalary ON jh.employee_id = eghs.employee_id;
