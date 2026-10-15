USE intern_ecommerce;

CREATE TABLE demo_check (
    id INT PRIMARY KEY,
    quantity INT CHECK (quantity > 0)
);

INSERT INTO demo_check (id, quantity)
VALUES (1, 5);

SELECT * FROM demo_check;
