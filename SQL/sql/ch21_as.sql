USE intern_filter;

-- 1. Give customer_name the alias name
SELECT customer_name AS name
FROM customers;

-- 2. Give order_id the alias id
-- and amount the alias inr
SELECT order_id AS id, amount AS inr
FROM orders;

-- 3. Give amount a more descriptive alias
SELECT amount AS order_amount
FROM orders;

-- 4. Calculate amount with 18% GST
SELECT amount * 1.18 AS amount_with_gst
FROM orders;