
USE intern_ecommerce;

CREATE TABLE demo_int (
    id INT,
    quantity INT
);

INSERT INTO demo_int (id, quantity)
VALUES
(1, 10),
(2, 25);

SELECT * FROM demo_int;

DROP TABLE demo_int;