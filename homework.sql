create table departments (
	dept_no varchar(30) Not null,
	dept_name varchar(30) not null

);

create table titles (
	emp_no varchar(30) Not null,
	title varchar(30) not null,
	from_date varchar(30) Not null,
	to_date varchar(30) Not null

);

create table employees (
	emp_no varchar(30) Not null,
	birth_date varchar(30) not null,
	first_name varchar(30) Not null,
	last_name varchar(30) Not null,
	gender varchar(30) Not null,
	hire_date varchar(30) Not null

);

create table dept_manager (
	dept_no varchar(30) Not null,
	emp_no varchar(30) not null,
	from_date varchar(30) Not null,
	to_date varchar(30) Not null

);

create table dept_employees (
	emp_no varchar(30) not null,
	dept_no varchar(30) Not null,
	from_date varchar(30) Not null,
	to_date varchar(30) Not null

);

create table salaries (
	emp_no varchar(30) not null,
	salary varchar(30) Not null,
	from_date varchar(30) Not null,
	to_date varchar(30) Not null

);
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

select first_name,last_name 
from employees
where "hire_date" between '1986-01-01' and '1986-12-31';


select employees.emp_no, employees.last_name, employees.first_name,
dept_manager.dept_no, dept_manager.from_date, dept_manager.to_date,
departments.dept_name
from employees
inner join dept_manager on employees.emp_no=dept_manager.emp_no
inner join departments on dept_manager.dept_no=departments.dept_no;


select employees.emp_no, employees.last_name, employees.first_name,
dept_employees.dept_no, 
departments.dept_name
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no;

select employees.last_name, employees.first_name
From Employees
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

select employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no
where dept_name = 'Sales';

select employees.emp_no, employees.last_name, employees.first_name,
departments.dept_name
from employees
inner join dept_employees on employees.emp_no=dept_employees.emp_no
inner join departments on dept_employees.dept_no=departments.dept_no
where dept_name = 'Sales' or dept_name='Development';

Select last_name, count(*)
from employees
group by last_name order by last_name desc;






