-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
    e.emp_no, 
    e.last_name,
    e.first_name,
    e.sex,
    s.salary
FROM employees AS e
JOIN salaries as s
USING (emp_no);


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT
    last_name,
    first_name,
    hire_date
FROM employees
WHERE EXTRACT('year' from hire_date) = '1986';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM employees as e
JOIN dept_manager
Using (emp_no)

JOIN departments as d
USING (dept_no);


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.first_name,
    e.last_name
    
FROM employees AS e
JOIN dept_emp
USING (emp_no)

JOIN departments AS d
USING (dept_no);


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT
    e.first_name,
    e.last_name,
    e.sex
FROM employees as e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    d.dept_no,
    d.dept_name
FROM employees AS e
JOIN dept_emp
USING (emp_no)

JOIN departments AS d
USING (dept_no)
WHERE dept_name = 'Sales';
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM employees as e
JOIN dept_emp
USING (emp_no)

JOIN departments as d
USING (dept_no)
WHERE dept_name = 'Sales' 
OR dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT 
    last_name,
    COUNT (last_name) as last_name_count
     
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC; 

