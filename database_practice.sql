use sakila;
# select statements
#1
	#A
select *
FROM actor;

	#B
select last_name
FROM actor;

	#C
SELECT
	film_id,
    title,
    release_year
FROM film;

#2
	#A
SELECT 
	count(distinct(last_name))
FROM actor;

    #B
    
    
    #C
    
#3 WHERE clause
	#A
SELECT
	title,
    description,
    rating,
    length
FROM film
	WHERE length > 180;
    
    #B
SELECT
	payment_id, 
    amount,
    payment_date
from payment
	where payment_date >= 2005-05-27;
    
    #C 
    #D 
    #E 
    #F 
    #G
    
    
select
	concat(first_name, ' ', last_name)
from actor
where last_name like 'a%'
	and first_name not like '%a';
