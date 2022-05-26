use employees;

SELECT DISTINCT last_name
FROM employees
ORDER by last_name DESC
LIMIT 10;

/* Zykh
Zyda
Zwicker
Zweizig
Zumaque
Zultner
Zucker
Zuberek
Zschoche
Zongker */

select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '____-12-25' and hire_date like '199%'
order by hire_date asc
limit 5;
/* First five employees hired in the 90's 
	Alselm Cappelo
    Utz Mandell
    Bouchung Schreiter
    Baocai Kushner
    Petter Stroustrup
    */

    select first_name, last_name, birth_date, hire_date
from employees
where birth_date like '____-12-25' and hire_date like '199%'
order by hire_date asc
limit 5 offset 50;
/* page 10 of 5 per page employee names
	cristophe baca
    moie birsak
    chikako ibel
    shounak jansen
    zhigen boisser
    */
