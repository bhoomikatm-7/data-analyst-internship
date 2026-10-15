USE intern_ecommerce;

SELECT COUNT(*) AS active_customers
FROM customers
WHERE is_active = 1;

SELECT COUNT(*) AS inactive_customers
FROM customers
WHERE is_active = 0;