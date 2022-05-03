USE employees;

SELECT emp_no, first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY last_name, first_name;
# SELECT * FROM employees WHERE first_name = 'Irena' OR 'Vidya' AND first_name = 'Maya';
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY first_name;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE ('%q%');

SELECT * FROM employees WHERE last_name LIKE '%E' OR last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%E' AND last_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

