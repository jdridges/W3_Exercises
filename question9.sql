/*question 9:List each film and the number of actors who are listed for that film. Use
tables film_actor and film. Use inner join.*/
SELECT film.title, COUNT(film_actor.actor_id) AS 'number of actors' 
FROM film
INNER JOIN film_actor ON film.film_id= film_actor.film_id
GROUP BY title;