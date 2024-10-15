/*Question 2:  You need to find the ID number, first name, and last name of an actor,
where the only thing you know about him is his first name, Joe.
+ Create an additional query to find all the movies that Joe has been in.*/

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'Joe';

SELECT film.title
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Joe';