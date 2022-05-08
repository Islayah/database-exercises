use employees;

select distinct title from titles;

select last_name from employees where last_name like 'E%' and last_name like '%e' group by last_name order by last_name;

select last_name, first_name from employees where last_name like 'E%' and last_name like '%e' group by last_name, first_name;

select last_name from employees where last_name like '%q%' and last_name not like '%qu%' group by last_name;

select last_name, count(last_name) from employees where last_name like '%q%' and last_name not like '%qu%' group by last_name order by last_name;


# 7. Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
#     441 M
#     268 F
# I guess this is working. Cannot get the count for M and F to display at the same time. This can be fixed im thinking. *****************************************
SELECT gender, count(*) FROM employees WHERE (gender = 'M') AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');
SELECT gender, count(*) FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' group by gender;
select gender, count(*) from employees where (gender = 'F') and (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');

# Correct code from walk through by Ry
SELECT gender, count(*) FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') GROUP BY gender;
select count(*), gender from employees where (first_name= 'Irena' or first_name = 'Vidya' or first_name = 'Maya') group by gender;