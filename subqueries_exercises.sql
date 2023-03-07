USE employees;

SELECT *
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);


SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
        INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
             INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
    WHERE dept_manager.to_date = '9999-01-01'
      AND employees.gender = 'F'
);

