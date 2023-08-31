--create a table for each csv

--Departments table 

DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(30),
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from public.departments 

-- Employees table

DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from public.employees

DROP TABLE dept_emp

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL
);uyyy

select * from public.dept_emp

-- Dept_managers table

DROP TABLE dept_manager

CREATE TABLE dept_manager (
 dept_no VARCHAR (10) not null,
 emp_no INT not null);

select * from public.dept_manager

-- Salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL);

select * from public.salaries


--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	emp_no INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from public.titles


