USE intern_ecommerce;

CREATE TABLE demo_decimal (
    id INT,
    price DECIMAL(10, 2)
);

INSERT INTO demo_decimal (id, price)
VALUES
(1, 99.50),
(2, 149.75),
(3, 200.00);

SELECT * FROM demo_decimal;

SELECT SUM(price) AS total_price
FROM demo_decimal;

DROP TABLE demo_decimal;