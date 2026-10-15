USE intern_ecommerce;

CREATE TABLE demo_unique (
    id INT PRIMARY KEY,
    email VARCHAR(120) UNIQUE
);

INSERT INTO demo_unique (id, email)
VALUES (1, 'bhoomika@example.com');

SELECT * FROM demo_unique;

-- This duplicate email should fail:
INSERT INTO demo_unique (id, email)
VALUES (2, 'bhoomika@example.com');

DROP TABLE demo_unique;