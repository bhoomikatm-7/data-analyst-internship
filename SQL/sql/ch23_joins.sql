CREATE DATABASE IF NOT EXISTS intern_joins;
USE intern_joins;

DROP TABLE IF EXISTS orders_j;
DROP TABLE IF EXISTS customers_j;

CREATE TABLE customers_j (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(40)
);

CREATE TABLE orders_j (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO customers_j VALUES
(1, 'Anita'),
(2, 'Rahul'),
(3, 'Sneha'),
(4, 'Vikram');

INSERT INTO orders_j VALUES
(101, 1, 1200.00),
(102, 2, 800.00),
(103, 1, 500.00),
(104, 5, 700.00);

-- 1. INNER JOIN: matching customers and orders
SELECT c.customer_name, o.order_id, o.amount
FROM customers_j c
INNER JOIN orders_j o
ON c.customer_id = o.customer_id;

-- 2. LEFT JOIN: all customers, including those without orders
SELECT c.customer_name, o.order_id
FROM customers_j c
LEFT JOIN orders_j o
ON c.customer_id = o.customer_id;

-- 3. RIGHT JOIN: all orders, including those without matching customers
SELECT c.customer_name, o.order_id
FROM customers_j c
RIGHT JOIN orders_j o
ON c.customer_id = o.customer_id;

-- 4. FULL OUTER JOIN emulation in MySQL
SELECT c.customer_name, o.order_id
FROM customers_j c
LEFT JOIN orders_j o
ON c.customer_id = o.customer_id

UNION

SELECT c.customer_name, o.order_id
FROM customers_j c
RIGHT JOIN orders_j o
ON c.customer_id = o.customer_id;

-- 5. CROSS JOIN: count all combinations
SELECT COUNT(*) AS total_combinations
FROM customers_j
CROSS JOIN orders_j;
-- 6. CROSS JOIN: display all combinations
SELECT c.customer_name, o.order_id
FROM customers_j c
CROSS JOIN orders_j o;

-- 7. Customers who have no orders
SELECT c.customer_id, c.customer_name
FROM customers_j c
LEFT JOIN orders_j o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 8. Orphan orders: orders without a matching customer
SELECT o.order_id, o.customer_id, o.amount
FROM orders_j o
LEFT JOIN customers_j c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

-- 9. SELF JOIN: Employee, manager, and grand-manager
SELECT
    e.staff_name AS emp,
    m.staff_name AS mgr,
    gm.staff_name AS grand_mgr
FROM staff_j e
JOIN staff_j m
    ON e.manager_id = m.staff_id
JOIN staff_j gm
    ON m.manager_id = gm.staff_id
WHERE e.staff_name = 'Chetan';


-- 10. Find products that have never been sold
SELECT
    p.product_id,
    p.product_name,
    p.category
FROM products_j p
LEFT JOIN items_j i
    ON p.product_id = i.product_id
WHERE i.item_id IS NULL;

USE intern_joins;

-- 3. RIGHT JOIN: Show all orders, including those without matching customers
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.amount
FROM customers_j c
RIGHT JOIN orders_j o
    ON c.customer_id = o.customer_id;

    USE intern_joins;

-- 4. SELF JOIN: Find an employee, manager, and grand-manager
SELECT
    e.staff_name AS emp,
    m.staff_name AS mgr,
    gm.staff_name AS grand_mgr
FROM staff_j e
JOIN staff_j m
    ON e.manager_id = m.staff_id
JOIN staff_j gm
    ON m.manager_id = gm.staff_id
WHERE e.staff_name = 'Chetan';

USE intern_joins;

-- 5. Find products that have never been sold
SELECT
    p.product_id,
    p.product_name,
    p.category
FROM products_j p
LEFT JOIN items_j i
    ON p.product_id = i.product_id
WHERE i.item_id IS NULL;

USE intern_joins;

-- 6. Find customers who bought a Mouse
SELECT DISTINCT
    c.customer_name,
    p.product_name
FROM customers_j c
INNER JOIN orders_j o
    ON c.customer_id = o.customer_id
INNER JOIN items_j i
    ON o.order_id = i.order_id
INNER JOIN products_j p
    ON i.product_id = p.product_id
WHERE p.product_name = 'Mouse';

USE intern_joins;

-- 7. Find orders without a matching customer
SELECT
    o.order_id,
    o.customer_id,
    o.amount
FROM orders_j o
LEFT JOIN customers_j c
    ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

USE intern_joins;

-- 8. FULL OUTER JOIN emulation: include unmatched customers and orders
SELECT
    c.customer_name,
    o.order_id,
    o.amount
FROM customers_j c
LEFT JOIN orders_j o
    ON c.customer_id = o.customer_id

UNION

SELECT
    c.customer_name,
    o.order_id,
    o.amount
FROM customers_j c
RIGHT JOIN orders_j o
    ON c.customer_id = o.customer_id
ORDER BY order_id;