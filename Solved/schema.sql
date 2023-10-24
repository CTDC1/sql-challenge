--- Creating Tables

-- creating department table with department ID number and name
CREATE TABLE departments (
    dept_no varchar(4) NOT null PRIMARY KEY,
    dept_name varchar(40) NOT null
);

CREATE TABLE titles (
    title_id varchar(5) NOT null PRIMARY KEY,
    titsle varchar(40) NOT null
);
-- creating an employees table with ID number, name, birth date, hire date, sex
CREATE TABLE employees (
    emp_no INT NOT null PRIMARY KEY,
    emp_title_id varchar(5) NOT null,
    birth_date date NOT null,
    first_name varchar(16) NOT null,
    last_name varchar(16) NOT null,
    sex varchar (1) NOT null,
    hire_date date NOT null,
    Foreign KEY (emp_title_id) References titles(title_id)
);

-- Creating Department Employees table with employee ID number and department ID number
CREATE TABLE dept_emp (
    emp_no INT NOT null,
    dept_no varchar(4) NOT null,
    primary key(emp_no, dept_no),
    Foreign KEY(emp_no) References employees(emp_no),
    Foreign KEY(dept_no) References departments(dept_no)
);

-- creating department manager table with their department ID number and Employee ID number
CREATE TABLE dept_manager(
    dept_no varchar(4) NOT null,
    emp_no INT NOT null,
    primary key(dept_no, emp_no),
    Foreign KEY(emp_no) References employees(emp_no),
    Foreign KEY(dept_no) References departments(dept_no)
);


-- creating a salaries table with the employee ID numbers and their salaries
CREATE TABLE salaries (
    emp_no INT NOT null,
    salary INT NOT null,
    Primary key(emp_no, salary),
    Foreign KEY(emp_no) References employees(emp_no)
);