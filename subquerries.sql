use employees;

#current employees w/ same hire date as 101010
select *
from employees
JOIN dept_emp de using (emp_no)
where de.to_date >now() and hire_date = (select hire_date from employees where emp_no = 101010
0);

select first_name, last_name, hire_date
from employees
join dept_emp using(emp_no) 
where hire_date In (select hire_date
from employees
where emp_no = 101010)
and hire_date = now();

#2 - ALL TITLES ever held by by ALL CURRENT employees with FIRST NAME AAMOD 
-- -------------------- correct
select *
from employees
where first_name = "aamod";

select emp_no
from employees
where first_name = "aamod";

select * from titles
where emp_no in (select emp_no
from employees
where first_name = "aamod")
and to_date > now();


#3 how many employees are no longer working for the company

select count(distinct emp_no)
from dept_emp
where to_date < now();
-- incorrect ^^^^^^^^^^^^^
select count(*) from employees -- --------------- correct answer
where emp_no not in (
select emp_no from dept_emp where to_date > now());


#4 current FEMALE DEPT MANAGERS
select * 
	from employees
		where gender = 'F';
        
select * 
	from dept_manager
    where emp_no in (select emp_no 
	from employees
		where gender = 'F')
        and to_date > now();
        
        
select *, first_name, last_name
from employees
where emp_no in (select emp_no 
	from dept_manager
    where emp_no in (select emp_no 
	from employees
		where gender = 'F')
        and to_date > now());
/* isamu legleitner
	karsten sigstam
    leon dasSarma
    hilary kambil */

#5 all employees whose current salary is higher than overall historic avg
select avg(salary) #AVG SALARY SUBQUERY
from salaries;

select * from salaries # SALARY GREATER THAN AVG SUBQUERY
where salary > (select avg(salary)
from salaries); 

select *
from employees
where emp_no in (select emp_no from salaries
where salary > (select avg(salary)
from salaries));



#6 how many current salaries are within 1 standard deviation of the current highest salary?
select count(*) as total, 
(count(*)/(select count(*)from salaries
where to_date > now())* 100) as percent_of_total
from salaries
where salary > (select max(salary) - stddev(s.salary)
from salaries as s)
and to_date > now();
#78

#BONUS 1
#ALL DEPT THAT CURRENTLY HAVE FEMALE MANAGERS



#BONUS 2
# NAME OF EMPLOYEE WITH HIGHEST SALARY



#BONUS 3
#DEPT NAME OF EMPLOYEE WITH HIGHEST SALARY
