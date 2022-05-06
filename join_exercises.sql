use employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department
# along with the name of the current manager for that department.
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+

select departments.dept_name as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees
         join dept_manager on employees.emp_no = dept_manager.emp_no
         join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > curdate() order by `Department Name`;

# Find the name of all departments currently managed by women.
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+

select departments.dept_name as 'Department Name',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
from employees
         join dept_manager on employees.emp_no = dept_manager.emp_no
         join departments on departments.dept_no = dept_manager.dept_no
where dept_manager.to_date > curdate() and employees.gender = 'F' order by `Department Name`;

# Find the current titles of employees currently working in the Customer Service department.
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

# select titles.title as 'title',
#        count(*) from employees as 'Total'
# from employees
#         join titles on employees.emp_no = titles.emp_no;

select titles.title as 'title',
       count(employees.emp_no)
from titles
    join employees on employees.emp_no = titles.emp_no
    join dept_emp on employees.emp_no = dept_emp.emp_no
    join departments on dept_emp.dept_no = departments.dept_no
where titles.to_date > curdate() and departments.dept_name = 'Customer Service' and dept_emp.to_date > curdate()
group by titles.title;


# SELECT columns
# FROM table_a as A
#          JOIN table_b as B ON A.id = B.fk_id;

# Find the current salary of all current managers.
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+

select departments.dept_name as 'Department Name',
#        dept_manager.emp_no as 'Department Manager',
       concat(employees.first_name, ' ', employees.last_name) as 'Department Manager',
#        dept_manager.emp_no as 'Department Manager',
       salaries.salary as 'Salary'
from employees
    join dept_manager on employees.emp_no = dept_manager.emp_no
#     join employees on dept_manager.emp_no = employees.emp_no
    join salaries on dept_manager.emp_no = salaries.emp_no
    join departments on dept_manager.dept_no = departments.dept_no
where dept_manager.to_date > curdate() and salaries.to_date > curdate();

# select departments.dept_name as 'Department Name',
#        dept_manager.emp_no as 'Department Manager',
# #        concat(employees.first_name, ' ', employees.last_name) as 'Department Manager',
# #        dept_manager.emp_no as 'Department Manager',
#        salaries.salary as 'Salary'
# from employees
#     join dept_manager on employees.emp_no = dept_manager.emp_no
# #     join employees on dept_manager.emp_no = employees.emp_no
#     join salaries on dept_manager.emp_no = salaries.emp_no
#     join departments on dept_manager.dept_no = departments.dept_no
# where dept_manager.to_date > curdate();

# select departments.dept_name as 'Department Name',
#        concat(employees.first_name, ' ', employees.last_name) as 'Department Manager',
# #        dept_manager.emp_no as 'Department Manager',
#        salaries.salary as 'Salary'
# from dept_manager
#     join departments on dept_manager.dept_no = departments.dept_no
#     join employees on dept_manager.emp_no = employees.emp_no
#     join salaries on dept_manager.emp_no = salaries.emp_no
# where dept_manager.to_date > curdate();

# SELECT columns
# FROM table_a as A
#          JOIN table_b as B ON A.id = B.fk_id;


# Bonus Find the names of all current employees, their department name, and their current manager's name .
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total

select concat(employees.first_name, ' ', employees.last_name),
       departments.dept_name as Department,
       concat(employees2.first_name, ' ', employees2.last_name) as Manager
from employees
    join dept_emp on employees.emp_no = dept_emp.emp_no
    join departments on dept_emp.dept_no = departments.dept_no
    join dept_manager on dept_emp.dept_no = dept_manager.dept_no
    join employees employees2 on employees2.emp_no = dept_manager.emp_no
where dept_emp.to_date > curdate() and dept_manager.to_date > curdate();