-- data analysis
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date >= '1/1/1986'::date
and hire_date <=  '12/31/1986'::date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from department_manager as dm
inner join department as d on
dm.dept_no = d.dept_no
inner join employees as e on
dm.emp_no = e.emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee as de
inner join employees as e on 
de.emp_no = e.emp_no
inner join department as d on
de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee as de
inner join employees as e on
de.emp_no = e.emp_no
inner join department as d on
de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee as de
inner join employees as e on
de.emp_no = e.emp_no
inner join department as d on
de.dept_no = d.dept_no
where dept_name in ('Sales', 'Development');

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc;