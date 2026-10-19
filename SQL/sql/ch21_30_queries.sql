USE intern_filter;

-- 1. Show all customers
SELECT * FROM customers;

-- 2. Show all orders
SELECT * FROM orders;

-- 3. Display customer names and cities
SELECT customer_name, city FROM customers;

-- 4. Find active customers
SELECT * FROM customers WHERE status = 'active';

-- 5. Find orders above 2000
SELECT * FROM orders WHERE amount > 2000;

-- 6. Sort orders from highest amount to lowest
SELECT order_id, amount FROM orders ORDER BY amount DESC;

-- 7. Show the five highest-value orders
SELECT order_id, amount FROM orders ORDER BY amount DESC LIMIT 5;

-- 8. List unique customer cities
SELECT DISTINCT city FROM customers;

-- 9. Give columns aliases
SELECT order_id AS id, amount AS inr FROM orders;

-- 10. Find orders between 500 and 1000
SELECT order_id, amount
FROM orders
WHERE amount BETWEEN 500 AND 1000;

-- 11. Find orders with delivered or shipped status
SELECT order_id, status
FROM orders
WHERE status IN ('delivered', 'shipped');

-- 12. Find customers in Pune or Bengaluru
SELECT customer_name, city
FROM customers
WHERE city IN ('Pune', 'Bengaluru');

-- 13. Find names starting with A
SELECT customer_name
FROM customers
WHERE customer_name LIKE 'A%';

-- 14. Find names ending with a
SELECT customer_name
FROM customers
WHERE customer_name LIKE '%a';

-- 15. Find order statuses ending with ed
SELECT order_id, status
FROM orders
WHERE status LIKE '%ed';