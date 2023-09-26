SELECT*
FROM actor;

SELECT first_name, last_name
FROM actor;

-- add specificity to our query
--WHERE CLUASE
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- LIKE clause
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'Wahlberg';


--WILDCARD  %
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'W%';

--single letter wildcard(underscore)_
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'C%';

--
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE 'C____%';

--comparing operators
-- >
-- <
-- >=
-- <=
-- != not equal
-- <> not equal

SELECT*
FROM payment;

-- frind all payments > 5$
SELECT customer_id, amount
FROM payment
WHERE amount > 5;

-- ordering based on amount
SELECT customer_id
FROM payment
WHERE amount > 5
ORDER BY amount DESC

--conjunctions AND and  OR operators
SELECT customer_id, amount
FROM payment
WHERE amount > 5 OR customer_id = 3
ORDER BY amount DESC;

-- aggregator
--sum, average, count, min, max
SELECT SUM(amount) AS highest_amount
FROM payment
WHERE amount > 0 ;

SELECT MIN(amount) AS smallest_amount
FROM payment
WHERE amount > 0 ;

--distint
SELECT DISTINCT customer_id
FROM payment
WHERE amount > 5;

SELECT COUNT(DISTINCT customer_id)
FROM payment
WHERE amount > 5

-- GROUP BY 
SELECT customer_id , SUM(amount)
FROM payment
WHERE amount > 0
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- HAVING CLAUSE
SELECT customer_id, SUM(amount)
FROM payment
WHERE  amount > 0
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;

--EXTRA STUFF    
SELECT customer_id, SUM(amount)
FROM payment
WHERE  amount > 0
GROUP BY customer_id
HAVING SUM(amount) > 50
ORDER BY SUM(amount) DESC
LIMIT 3
OFFSET 1

--