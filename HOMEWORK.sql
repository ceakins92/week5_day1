-- How man actors are there with
-- the last name Wahlberg?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2

-- How many payments were made between
-- $3.99 and $5.99?
SELECT count(amount) AS payments
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 5,607

-- What film does the store have
-- the most of?
SELECT film_id, count(inventory_id)
FROM inventory
GROUP BY film_id;
-- Answer: There are 72 films that have 8 copies, tied for most

-- How many customers have the
-- last name William?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
-- Answer: 0 Matching customers, but there is 1 'Williams'

-- What store employee (id) sold the most rentals?
SELECT staff_id, count(rental_id)
FROM rental
GROUP BY staff_id;
-- Answer: Mike (ID1) sold more rentals

-- How many different district names are there?
SELECT district, count(address_id)
FROM address
GROUP BY district;
-- Answer: 378 districts

-- What film has the most actors in it?
SELECT film_id, count(actor_id)
FROM film_actor
GROUP BY film_id;
-- Answer: Film 508, Lambs Cincinatti has 15 actors

-- How many customers have a last name ending with 'es'?
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es'; 
-- Answer: 13

-- How many payment amounts had a number of rentals above 250
-- for customers with ids between 380-430?
SELECT amount, count(customer_id)
FROM payment
GROUP BY amount;
-- Answer: 9

-- How many rating categories are there and which has
-- the most movies?
SELECT rating, count(film_id)
FROM film
GROUP BY rating;
-- Answer: 5 categories, category PG-13 has the most movies
