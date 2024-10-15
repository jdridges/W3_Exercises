/*question 3: Find all actors whose last names contain the letters LI. This time, order the
rows by last name and first name, in that order.
+ Create a second version of this query that adds a count of the total
number of movies each actor has been in.*/

SELECT * 
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name;

SELECT actor.actor_id, first_name, last_name, COUNT(film_actor.film_id) AS 'Number of Movies' 
FROM actor
LEFT JOIN film_actor ON actor.actor_id = film_actor.actor_id
WHERE last_name LIKE '%LI%'
GROUP BY actor.actor_id, actor.first_name, actor.last_name
ORDER BY last_name, first_name;


