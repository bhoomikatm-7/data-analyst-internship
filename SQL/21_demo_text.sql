USE intern_ecommerce;

CREATE TABLE demo_text (
    id INT,
    customer_note TEXT
);

INSERT INTO demo_text (id, customer_note)
VALUES (1, 'Customer requested delivery after 5 PM.');

SELECT * FROM demo_text;

DROP TABLE demo_text;