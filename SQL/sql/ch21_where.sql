
USE intern_filter;

-- 1. Active customers
SELECT customer_id, customer_name, status
FROM customers
WHERE status = 'active';

-- 2. Orders with amount above 2000
SELECT order_id, amount
FROM orders
WHERE amount > 2000;

-- 3. Cancelled orders
SELECT order_id, status, amount
FROM orders
WHERE status = 'cancelled';

-- 4. Customers in Karnataka
SELECT customer_name, city, state
FROM customers
WHERE state = 'Karnataka';

-- 5. Delivered orders with amount of at least 1000
SELECT order_id, amount
FROM orders
WHERE status = 'delivered' AND amount >= 1000;
