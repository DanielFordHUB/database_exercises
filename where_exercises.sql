use employees;
select first_name, last_name
from employees
where first_name in ('irene', 'vidya', 'maya');
-- 731 rows returned
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