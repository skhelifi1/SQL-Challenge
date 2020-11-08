DROP TABLE Titles;
CREATE TABLE Titles (
	title_id VARCHAR,
	title VARCHAR,
	PRIMARY KEY (title_id)
);
DROP TABLE Employees;
CREATE TABLE Employees (
	emp_no INTEGER,
	emp_title VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);
DROP TABLE Departments;
CREATE TABLE Departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);
DROP TABLE Salaries;
CREATE TABLE Salaries (
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
DROP TABLE Dept_manager;
CREATE TABLE Dept_manager (
	dept_no VARCHAR,
	emp_no Integer,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
DROP TABLE Dept_emp;
CREATE TABLE Dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);