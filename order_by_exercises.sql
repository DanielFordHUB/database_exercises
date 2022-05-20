use employees;
select first_name, last_name
from employees
where first_name in ('irene', 'vidya', 'maya')
order by first_name;
-- 731 rows returned
-- first name on list retuned is Irene Radhakrishnan
-- last name on list returned is Vidya Simmen


use employees;
select first_name, last_name
from employees
where first_name in ('irene', 'vidya', 'maya')
order by first_name, last_name;
-- first row returned Vidya Awdeh
-- last row returned Irene Trumbly


use employees;
select first_name, last_name
from employees
where first_name in ('irene', 'vidya', 'maya')
order by last_name, first_name;
-- returned same as above question (#3)


use employees;
select first_name, last_name, emp_no
from employees
where last_name like 'e%e'
order by emp_no;
-- 899 employees with names starting and enging in "E" 
-- first employee Ramzi Erde #10021
-- last employee tadahiro erde #499648


use employees;
select first_name, last_name, hire_date
from employees
where last_name like 'e%e'
order by hire_date desc;
-- 899 employees
-- newest Teiji Eldridge 1999-11-27
-- oldest Sergi Erde 1985-02-02


select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '____-12-25' and hire_date like '199%'
order by birth_date asc, hire_date desc;
-- oldest employee hired last is tremaine eugenio 


-- ----------------------------------------------------------------------------------------------------------------------------------------------------------
-- 🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽rest of where exercise 🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽🔽
select first_name
from employees
where first_name = 'irene' or 'vidya' or 'maya';
-- used OR instead of IN
-- error returned
-- used = and then OR seperating name
-- returned 263 instances of irene


select first_name
from employees
where first_name = 'irene' or 'vidya' or 'maya'
and gender in male;
-- error code 105
-- return for question


select first_name, last_name
from employees
where last_name like 'e%';
-- returned 1000 rows of employees with last name starting in execute


select first_name, last_name
from employees
where last_name like 'e%' or last_name like '%e';
-- returned 1000 rows of last name ENDING in E


select first_name, last_name
from employees
where last_name like 'e%' and last_name like '%e';
-- 899 employees last name start AND end with E 
-- 1000 employees have last name ending in E 


select first_name, last_name, hire_date
from employees
where hire_date like '199%';
-- 1000 employees hired in 1990's 


select first_name, last_name, birth_date
from employees
where birth_date like '____-12-25';
-- 842 employees hired on christmas


select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '____-12-25' and hire_date like '199%';
-- 362 employees born on christmas and hired in the 90's


select first_name, last_name
from employees
where last_name like '%q%';
-- 1000 employees with 'Q' in last name


select first_name, last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%';
-- 547 employees with 'Q' in the name, excluding'QU'

