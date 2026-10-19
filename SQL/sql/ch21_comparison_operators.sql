USE intern_filter;

-- 1. Orders with amount less than or equal to 1000
SELECT order_id, amount
FROM orders
WHERE amount <= 1000;

-- 2. Orders from August 1, 2025 onwards
SELECT order_id, order_date
FROM orders
WHERE order_date >= '2025-08-01';

-- 3. Orders whose status is not delivered
SELECT order_id, status
FROM orders
WHERE status <> 'delivered';

-- 4. Orders belonging to customer 1
SELECT order_id, customer_id
FROM orders
WHERE customer_id = 1;

-- 5. Orders with amount from 799 up to, but not including, 1000
SELECT order_id, amount
FROM orders
WHERE amount >= 799 AND amount < 1000;

-- 6. Assignment: orders whose amount is not 799
SELECT order_id, amount
FROM orders
WHERE amount <> 799;