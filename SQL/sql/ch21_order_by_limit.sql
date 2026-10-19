
USE intern_filter;

-- 1. List all orders from highest amount to lowest
SELECT order_id, amount
FROM orders
ORDER BY amount DESC;

-- 2. Show the top 5 orders by amount
SELECT order_id, amount
FROM orders
ORDER BY amount DESC
LIMIT 5;

-- 3. Show the two smallest orders
SELECT order_id, amount
FROM orders
ORDER BY amount ASC
LIMIT 2;

-- 4. List the first 4 customers alphabetically
SELECT customer_name
FROM customers
ORDER BY customer_name ASC
LIMIT 4;

-- 5. Show the two most recent orders
SELECT order_id, order_date
FROM orders
ORDER BY order_date DESC
LIMIT 2;
