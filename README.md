# sql-challenge


This repository contains data analysis for multiple CSV files containing information about a random company's staff. The CSV includes data on the following info:

- Departments
- Department employees
- Department managers
- Employee salaries
- Employee titles

This repository includes three parts: Data Modeling, Data Engineering, and Data Analysis.

Data Modeling: 

This repo includes a PNG file of the table schema built using 6 CSV files. In this table schema, the primary keys are dept_no and emp_no. 

Data Engineering:

The SQL code used to create this table schema was imported into a database on PG Admin called “employee_dp. " 

Data Analysis

With the database built, I wrote SQL queries to answer eight questions to builed tables on PG admin. The questions are listed below:

        1.  List the employee number, last name, first name, sex, and salary of each employee.

        2. List the first name, last name, and hire date for the employees hired in 1986.

        3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

        4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

        5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
        
        6. List each employee in the Sales department, including their employee number, last name, and first name.

        7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

        8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each previous name).

Note: 
    I consulted a tutor for this project to help me with parts of schema.sql and query.sql. I also looked at stack overflow to help me write the code for the line  ‘AND last_name LIKE 'B%'





