
USE intern_filter;

-- 1. List distinct cities in alphabetical order
SELECT DISTINCT city
FROM customers
ORDER BY city;

-- 2. List distinct states
SELECT DISTINCT state
FROM customers
ORDER BY state;

-- 3. List distinct order statuses
SELECT DISTINCT status
FROM orders
ORDER BY status;

-- 4. List unique city and status combinations
SELECT DISTINCT city, status
FROM customers
ORDER BY city, status;
