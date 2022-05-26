use employees;

CREATE TEMPORARY TABLE kalpana_1827.employees_with_departments AS
SELECT emp_no, first_name, last_name, dept_no, dept_name
FROM employees
JOIN dept_emp USING(emp_no)
JOIN departments USING(dept_no)
LIMIT 100;

use kalpana_1827;
select * from employees_with_departments;
alter table employees_with_departments add last_name varchar
