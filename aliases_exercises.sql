use employees;

select concat(last_name, ' ', first_name) as full_name from employees as emplo group by last_name, first_name limit 10
select birth_date as DOB from employees;

select concat(emp_no, ' - ', last_name, ', ' , first_name) as full_name, birth_date as DOB from employees group by emp_no,last_name, first_name, birth_date limit 10;



# 1. Create a new file named aliases_exercises.sql.
# 2. Use the employees database.
# 3. Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
# 4. Add the date of birth for each employee as 'DOB' to the query.
# 5. Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
# The final result should look like this:
# +-----------------------------+------------+
# | full_name                   | DOB        |
# +-----------------------------+------------+
# | 10001 - Facello, Georgi     | 1953-09-02 |
# | 10002 - Simmel, Bezalel     | 1964-06-02 |
# | 10003 - Bamford, Parto      | 1959-12-03 |
# | 10004 - Koblick, Chirstian  | 1954-05-01 |
# | 10005 - Maliniak, Kyoichi   | 1955-01-21 |
# | 10006 - Preusig, Anneke     | 1953-04-20 |
# | 10007 - Zielinski, Tzvetan  | 1957-05-23 |
# | 10008 - Kalloufi, Saniya    | 1958-02-19 |
# | 10009 - Peac, Sumant        | 1952-04-19 |
# | 10010 - Piveteau, Duangkaew | 1963-06-01 |
# +-----------------------------+------------+
# 10 rows in set (0.00 sec)