USE employees;

SELECT emp_no, first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY last_name, first_name;
# SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' AND first_name = 'Maya';
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY first_name;
SELECT * FROM employees WHERE (gender = 'M') AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;
SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE ('%q%');

SELECT * FROM employees WHERE last_name LIKE '%E' OR last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


# Function Exercises
SELECT CONCAT (first_name, ' ', last_name) AS 'Full Name' FROM employees WHERE last_name LIKE '%E' OR last_name LIKE 'e%';

select * from employees where day (birth_date) = 25 and month (birth_date) = 12 and year (hire_date) > 1989 and year (hire_date) < 2000;

select emp_no, datediff(now(), hire_date) as 'DAYS WORKED' from employees where (year(hire_date) > 1989 AND YEAR(hire_date) < 2000) and (day(birth_date) = 25 and month(birth_date) = 12) order by birth_date asc, hire_date desc ;

