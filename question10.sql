/*question 10:How many copies of the film HUNCHBACK IMPOSSIBLE exist in the
system?*/
SELECT COUNT(*) AS 'Number OF copies'
FROM inventory
WHERE film_id= (SELECT film_id FROM film WHERE title = 'HUNCHBACK IMPOSSIBLE');
