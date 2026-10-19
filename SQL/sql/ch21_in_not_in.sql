USE intern_filter;

-- 1. Customers in Pune or Bengaluru
SELECT customer_name, city
FROM customers
WHERE city IN ('Pune', 'Bengaluru')
ORDER BY city, customer_name;

-- 2. Exclude cancelled and pending orders
SELECT order_id, status
FROM orders
WHERE status NOT IN ('cancelled', 'pending')
ORDER BY order_id;

-- 3. Orders with pending or shipped status
SELECT order_id, status
FROM orders
WHERE status IN ('pending', 'shipped')
ORDER BY order_id;

-- 4. Specific order IDs
SELECT order_id, amount
FROM orders
WHERE order_id IN (101, 105, 109);

-- 5. Customers outside Pune and Kochi
SELECT customer_name, city
FROM customers
WHERE city NOT IN ('Pune', 'Kochi')
ORDER BY customer_name;

-- 6. Assignment: Delivered and shipped orders
SELECT order_id, status
FROM orders
WHERE status IN ('delivered', 'shipped')
ORDER BY order_id;