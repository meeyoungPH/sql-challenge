# SQL Challenge
In this project, data from multiple CSV files are imported into SQL tables to answer questions using queries against employee information. Data are then imported into a Jupyter Notebook for visualization using pandas and matplotlib. Synthesis of this data involves data modeling, data engineering, and data analysis. 

## Tools and Libraries
* Postgres/PGAdmin4
* SQL
* sqlalchemy
* pandas
* matplotlib

## Datasets Converted to SQL Tables
1. [Departments][def1]
2. [Employees by Department][def2]
3. [Managers by Department][def3]
4. [Employees][def4]
5. [Salaries][def5]
6. [Titles][def6]

## Entity-Relationship Diagram

![ERD][def7]

## Questions answered using SQL queries
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Import SQL data into Pandas using SQL Alchemy for data visualization
After setting a connection to the Postgresql database using SQL Alchemy, data are stored to a dataframe. Matplotlib is used to plot the salary distribution in a histogram and the average salary by title in a bar chart.
### Salary distribution
The distribution of the salary is heavily stacked with people making exactly $40,000, which is an unlikely scenario in a real company. This data is likely manufactured.
![Salary distribution histogram][def8]
### Average salary by title
The average salaries of the employees per title fall between $48,535 - $58,550 - these averages are heavily skewed by the abnormal salary distribution.
![Salary distribution histogram][def9]

[def1]: employeeSQL/data/departments.csv
[def2]: employeeSQL/data/dept_emp.csv
[def3]: employeeSQL/data/dept_manager.csv
[def4]: employeeSQL/data/employees.csv
[def5]: employeeSQL/data/salaries.csv
[def6]: employeeSQL/data/titles.csv
[def7]: employeeSQL/erd.png
[def8]: employeeSQL/output/salary_histogram.png
[def9]: employeeSQL/output/avg_salary_by_title.png