use employees;

select *
from employees
where hire_date in (
    select hire_date
    from employees
    where emp_no = 101010
    );

select titles.title
from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    )
group by titles.title;

select employees.first_name, employees.last_name
from employees
where employees.gender = 'F'
and employees.emp_no in (
    select emp_no
    from dept_manager
    where to_date > curdate()
    );

select departments.dept_name
from departments
where dept_no in (
    select dept_no
    from dept_manager
    where emp_no in (
        select emp_no
        from employees
        where gender = 'F'
        )
    and to_date > curdate()
    );

select employees.first_name, employees.last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary = (select max(salary) from salaries)
    );