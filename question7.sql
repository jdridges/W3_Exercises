/*question 7:Perhaps we were too hasty in changing GROUCHO to HARPO. It turns out
that GROUCHO was the correct name after all! In a single query: if the first
name of the actor is currently HARPO, change it to GROUCHO. Then write a
query to verify your change.*/

UPDATE actor
SET first_name= 'GROUCHO', last_name='WILLIAMS'
WHERE first_name= 'HARPO' AND last_name= 'WILLIAMS';

SELECT *
FROM actor
WHERE first_name= 'GROUCHO' AND last_name= 'WILLIAMS';
