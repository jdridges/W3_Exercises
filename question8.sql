/*question 8:Use JOIN to display the total amount rung up by each staff member in
August of 2005, using tables staff and payment.*/
SELECT staff.staff_id, staff.first_name, staff.last_name, SUM(payment.amount) AS 'Total Payment Amount'
FROM staff
JOIN payment ON staff.staff_id=payment.staff_id
WHERE payment_date >= '2005-08-01' AND payment_date< '2005-09-01'
GROUP BY staff.staff_id, staff.first_name, staff.last_name;
