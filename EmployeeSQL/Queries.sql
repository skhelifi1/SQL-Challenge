--List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees 
INNER JOIN salaries 
ON (employees.emp_no=salaries.emp_no);

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date Between '1986/01/01' AND '1986/12/31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT employees.emp_no, last_name, first_name, departments.dept_no, dept_name
FROM employees INNER JOIN dept_manager
ON (dept_manager.emp_no=employees.emp_no)
INNER JOIN departments 
ON (departments.dept_no=dept_manager.dept_no) 
WHERE emp_title='m0001';

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, last_name, first_name, dept_name 
FROM employees INNER JOIN dept_emp
ON (employees.emp_no=dept_emp.emp_no)
INNER JOIN departments
ON (departments.dept_no=dept_emp.dept_no);

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."