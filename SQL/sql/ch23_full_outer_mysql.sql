-- MySQL has no FULL OUTER JOIN; emulate it with LEFT JOIN and RIGHT JOIN.
USE intern_joins;

SELECT c.customer_name, o.order_id, o.amount
FROM customers_j c
LEFT JOIN orders_j o
    ON c.customer_id = o.customer_id

UNION

SELECT c.customer_name, o.order_id, o.amount
FROM customers_j c
RIGHT JOIN orders_j o
    ON c.customer_id = o.customer_id
ORDER BY order_id;

USE intern_joins;

-- CROSS JOIN: count all customer-order combinations
SELECT COUNT(*) AS total_combinations
FROM customers_j
CROSS JOIN orders_j;


USE intern_joins;

-- Find customers who have never placed an order
SELECT
    c.customer_id,
    c.customer_name
FROM customers_j c
LEFT JOIN orders_j o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

USE intern_joins;

-- 1. INNER JOIN: Match customers with their orders
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM customers_j c
INNER JOIN orders_j o
    ON c.customer_id = o.customer_id;

    USE intern_joins;

-- 2. LEFT JOIN: Show all customers, including those without orders
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM customers_j c
LEFT JOIN orders_j o
    ON c.customer_id = o.customer_id;