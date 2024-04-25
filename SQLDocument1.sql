-- Question 1 -- Completed
select count(last_name)
from actor
where last_name = 'Wahlberg'
--Returns 2

-- Question 2 -- Questioned
select count(amount)
from payment
where amount between 3.99 and 5.99
--Returns 5602

-- Question 3 -- Questioned
SELECT film_id,count(film_id)
FROM inventory
GROUP BY film_id
order by count desc 
--Returns 193 with 8

-- Question 4 -- Completed
select count(name)
from customer
where name Like '%William'
-- Returns 0

--Question 5 -- Completed
select staff_id,count(rental_id)
from rental
group by staff_id
order by count desc
-- Returns 1-8040

--Question 6 -- completed
select count(distinct district)
from address
-- returns 378

--Question 7 -- completed
select film_id,count(distinct actor_id)
from film_actor
group by film_id 
order by count desc
-- Returns 508-15

--Question 8 -- Questioned
select count(name)
from customer
where name like '%es'

select *
from customer

--Question 9 -- Questioned
SELECT amount, customer_id, count(rental_id)
FROM payment
WHERE amount BETWEEN 4.99 AND 5.99 AND customer_id BETWEEN 380 AND 430
GROUP BY amount, customer_id
having count(rental_id) > 250


--Question 10 -- Questioned
select count(distinct film_id) as movie_count,rating
from film
group by rating 
order by movie_count desc
limit 1
-- Returns 223 - PG-13