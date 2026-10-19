USE intern_filter;

-- 1. Count all customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Count all orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 3. Calculate the average order amount
SELECT AVG(amount) AS average_order_amount
FROM orders;

-- 4. Find the highest order amount
SELECT MAX(amount) AS highest_order_amount
FROM orders;

-- 5. Find the lowest order amount
SELECT MIN(amount) AS lowest_order_amount
FROM orders;

-- 6. Calculate the total order amount
SELECT SUM(amount) AS total_order_amount
FROM orders;
USE intern_filter;

-- 160. Total sales across all order lines
SELECT SUM(qty * unit_price) AS total_sales
FROM order_lines;

-- 161. Total sales excluding cancelled orders
SELECT SUM(ol.qty * ol.unit_price) AS total_sales_excluding_cancelled
FROM order_lines ol
JOIN orders o ON o.order_id = ol.order_id
WHERE o.status <> 'cancelled';

-- 162. Sales by category
SELECT p.category,
       SUM(ol.qty * ol.unit_price) AS category_sales
FROM order_lines ol
JOIN products p ON p.product_id = ol.product_id
GROUP BY p.category;

-- 163. Average order value excluding cancelled orders
SELECT AVG(order_total) AS average_order_value
FROM (
    SELECT o.order_id,
           SUM(ol.qty * ol.unit_price) AS order_total
    FROM orders o
    JOIN order_lines ol ON ol.order_id = o.order_id
    WHERE o.status <> 'cancelled'
    GROUP BY o.order_id
) AS order_totals;

-- 164. Cities with delivered sales of at least 1500
SELECT c.city,
       SUM(ol.qty * ol.unit_price) AS delivered_sales
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
JOIN order_lines ol ON ol.order_id = o.order_id
WHERE o.status = 'delivered'
GROUP BY c.city
HAVING SUM(ol.qty * ol.unit_price) >= 1500;