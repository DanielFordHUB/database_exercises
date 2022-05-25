-- Q1 querry that returns all [EMPLOYEES, DEPT #, START DATE, END DATE]
-- 			NEW COLUMN [IS_CURRENT_EMPLOYEE] RETURNS 1 IF CURRENT AND 0 IF NOT

USE employees;

select 
	to_date
FROM
	dept_emp 
WHERE to_date > now();

select 
	first_name,
    last_name,
    dept_no,
    from_date,
    to_date ,
		if(to_date > now(), TRUE, FALSE) AS is_current_employee
from dept_emp
join employees using(emp_no)
order by is_current_employee;

-- Return ALL HISTORIC EMPLOYEE NAMES, and a new column [ALPHA_GROUP] that returns [A-H], [I-Q], or [R-Z] depending on FIRST LETTER of LAST NAME

SELECT
	first_name,
    last_name,
		case
			when last_name like 'a%' or last_name like 'b%' or last_name like 'c%' or last_name like 'd%' or last_name like 'e%' or last_name like 'f%' or last_name like 'g%' or last_name like 'h%' THEN 'A-H'
			when last_name like 'i%' or last_name like 'j%' or last_name like 'k%' or last_name like 'l%' or last_name like 'm%' or last_name like 'n%' or last_name like 'o%' or last_name like 'p%' or last_name like 'q%' THEN 'I-Q'
			when last_name like 'r%' or last_name like 's%' or last_name like 't%' or last_name like 'u%' or last_name like 'v%' or last_name like 'w%' or last_name like 'x%' or last_name like 'y%' or last_name like 'z%' THEN 'R-Z'
            else null
		end as alpha_group
from employees
order by last_name;

-- count employees born in each decade
select
	count(case when birth_date like '195%' then 1950 else null end) as '1950\'s',
	count(case when birth_date like '196%' then 1960 else null end) as '1960\'s',
	count(case when birth_date like '197%' then 1970 else null end) as '1970\'s',
	count(case when birth_date like '198%' then 1980 else null end) as '1980\'s',
    count(case when birth_date like '199%' then 1990 else null end) as '1990\'s'
FROM employees;


-- current AVG SALARY for: R&D, SALES & MARKETING, PROD & QM, FINANCE & HR, CUSTOMER SERVICE

SELECT

FROM SALARIES
JOIN