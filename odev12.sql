--dvdrental database

--1
SELECT COUNT(*) FROM film
WHERE length > 
(
	SELECT AVG(length) FROM film
);


--2
SELECT COUNT(*) FROM film
WHERE rental_rate = 
(
	SELECT MAX(rental_rate) FROM film
);


--3
SELECT COUNT(*) FROM film

WHERE rental_rate = 
(
	SELECT MIN(rental_rate) FROM film
)	
AND replacement_cost = 
 
(
	SELECT MIN(replacement_cost) FROM film
);


--4
SELECT customer.first_name, customer.last_name, COUNT(payment.amount) AS total_amount FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY customer.first_name, customer.last_name
ORDER BY total_amount DESC
LIMIT 10;
