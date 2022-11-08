-- drop tables if they exist
drop table if exists department cascade;
drop table if exists titles cascade;
drop table if exists employees cascade;
drop table if exists salaries;
drop table if exists department_employee;
drop table if exists department_manager;

-- create tables
CREATE TABLE department (
    dept_no varchar(4) primary key  NOT NULL,
    dept_name varchar(30)  NOT NULL
);

CREATE TABLE titles (
    title_id varchar(5) primary key   NOT NULL,
    title varchar(30)   NOT NULL
);

CREATE TABLE employees (
    emp_no int primary key   NOT NULL,
    emp_title_id varchar(5)   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    sex varchar(1)   NOT NULL,
    hire_date date   NOT NULL,
	foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE salaries (
    -- salary_id int   NOT NULL,
    emp_no int primary key  NOT NULL,
    salary int   NOT NULL,
	foreign key (emp_no) references employees(emp_no)	
);

CREATE TABLE department_employee (
    -- dept_emp_id int   NOT NULL,
    emp_no int   NOT NULL,
    dept_no varchar(4)   NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references department(dept_no)
);

CREATE TABLE department_manager (
    -- dept_mgr_id int   NOT NULL,
    dept_no varchar(4) NOT NULL,
    emp_no int  NOT NULL,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references department(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

-- view tables
select * from department;
select * from titles;
select * from employees;
select * from salaries;
select * from department_employee;
select * from department_manager;