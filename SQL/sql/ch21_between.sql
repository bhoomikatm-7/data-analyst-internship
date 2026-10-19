USE intern_filter;

-- 1. Orders with amount between 500 and 1000
SELECT order_id, amount
FROM orders
WHERE amount BETWEEN 500 AND 1000;

-- 2. Orders placed in July 2025
SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '2025-07-01' AND '2025-07-31';

-- 3. Orders for customers with IDs from 4 to 6
SELECT order_id, customer_id
FROM orders
WHERE customer_id BETWEEN 4 AND 6;

-- 4. Rewrite BETWEEN using comparison operators
SELECT order_id, amount
FROM orders
WHERE amount >= 1000 AND amount <= 2500;

-- 5. Customers who signed up in March 2025
SELECT customer_name, signup_date
FROM customers
WHERE signup_date BETWEEN '2025-03-01' AND '2025-03-31';