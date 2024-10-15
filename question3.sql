#question 3: Find all actors whose last name contain letters GEN
SELECT * 
FROM actor
WHERE last_name LIKE '%GEN%';