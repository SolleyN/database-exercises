USE employees;

SELECT departments.dept_name  AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01';


SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
 JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';


SELECT titles.title, COUNT(*) AS 'Total'
FROM titles
 JOIN employees ON titles.emp_no = employees.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_emp.to_date = '9999-01-01' AND departments.dept_name = 'Customer Service'
GROUP BY titles.title;

SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
         JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee', departments.dept_name AS 'Department', CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
FROM employees
         JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
         JOIN departments ON dept_emp.dept_no = departments.dept_no
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees AS managers ON dept_manager.emp_no = managers.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01';

