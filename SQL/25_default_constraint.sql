USE intern_ecommerce;

CREATE TABLE demo_default (
    id INT PRIMARY KEY,
    status VARCHAR(20) DEFAULT 'pending'
);

INSERT INTO demo_default (id)
VALUES (1);

SELECT * FROM demo_default;

DROP TABLE demo_default;