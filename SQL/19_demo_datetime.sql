USE intern_ecommerce;

CREATE TABLE demo_datetime (
    id INT,
    created_at DATETIME
);

INSERT INTO demo_datetime (id, created_at)
VALUES (1, NOW());

SELECT * FROM demo_datetime;

DROP TABLE demo_datetime;