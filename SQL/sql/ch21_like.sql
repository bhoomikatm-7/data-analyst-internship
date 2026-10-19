USE intern_filter;

-- 1. Names starting with A (prefix)
SELECT customer_name
FROM customers
WHERE customer_name LIKE 'A%'
ORDER BY customer_name;

-- 2. Names ending with a (suffix)
SELECT customer_name
FROM customers
WHERE customer_name LIKE '%a'
ORDER BY customer_name;

-- 3. Names containing "na"
SELECT customer_name
FROM customers
WHERE customer_name LIKE '%na%'
ORDER BY customer_name;

-- 4. Cities ending with "uru"
SELECT customer_name, city
FROM customers
WHERE city LIKE '%uru';

-- 5. Exclude customer names starting with P
SELECT customer_name
FROM customers
WHERE customer_name NOT LIKE 'P%'
ORDER BY customer_name;

-- 6. Orders with statuses ending in "ed"
SELECT order_id, status
FROM orders
WHERE status LIKE '%ed'
ORDER BY order_id;