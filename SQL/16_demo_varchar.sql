USE intern_ecommerce;

CREATE TABLE demo_varchar (
    id INT,
    name VARCHAR(100)
);

INSERT INTO demo_varchar (id, name)
VALUES (1, 'Bhoomika');

SELECT * FROM demo_varchar;

SELECT CHAR_LENGTH(name) AS name_length
FROM demo_varchar;

DROP TABLE demo_varchar;