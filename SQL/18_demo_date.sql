USE intern_ecommerce;

CREATE TABLE demo_date (
    order_id INT,
    order_date DATE
);

INSERT INTO demo_date (order_id, order_date)
VALUES
(1, '2025-06-15'),
(2, '2026-01-10'),
(3, '2025-12-25');

SELECT *
FROM demo_date
ORDER BY order_date;