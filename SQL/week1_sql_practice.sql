
mysql> CREATE DATABASE intern_ecommerce;
Query OK, 1 row affected (0.12 sec)

mysql>
mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| intern_ecommerce   |
| internship_db      |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.36 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY,
    ->     customer_name VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (1.88 sec)

mysql>
mysql> SHOW TABLES;
+----------------------------+
| Tables_in_intern_ecommerce |
+----------------------------+
| customers                  |
+----------------------------+
1 row in set (0.24 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> INSERT INTO customers (customer_id, customer_name)
    -> VALUES
    -> (1, 'Anita Sharma'),
    -> (2, 'Rahul Mehta'),
    -> (3, 'Sara Joseph'),
    -> (4, 'Vikram Kumar');
Query OK, 4 rows affected (0.53 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT * FROM customers;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           1 | Anita Sharma  |
|           2 | Rahul Mehta   |
|           3 | Sara Joseph   |
|           4 | Vikram Kumar  |
+-------------+---------------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT customer_name
    -> FROM customers;
+---------------+
| customer_name |
+---------------+
| Anita Sharma  |
| Rahul Mehta   |
| Sara Joseph   |
| Vikram Kumar  |
+---------------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM customers
    -> WHERE customer_id > 2;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           3 | Sara Joseph   |
|           4 | Vikram Kumar  |
+-------------+---------------+
2 rows in set (0.06 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT COUNT(*) AS total_customers
    -> FROM customers;
+-----------------+
| total_customers |
+-----------------+
|               4 |
+-----------------+
1 row in set (0.17 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM customers
    -> ORDER BY customer_name ASC;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           1 | Anita Sharma  |
|           2 | Rahul Mehta   |
|           3 | Sara Joseph   |
|           4 | Vikram Kumar  |
+-------------+---------------+
4 rows in set (0.06 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM customers
    -> WHERE customer_name = 'Rahul Mehta';
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           2 | Rahul Mehta   |
+-------------+---------------+
1 row in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM customers
    -> WHERE customer_id >= 3;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           3 | Sara Joseph   |
|           4 | Vikram Kumar  |
+-------------+---------------+
2 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> UPDATE customers
    -> SET customer_name = 'Rahul Sharma'
    -> WHERE customer_id = 2;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>
mysql> SELECT *
    -> FROM customers;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           1 | Anita Sharma  |
|           2 | Rahul Sharma  |
|           3 | Sara Joseph   |
|           4 | Vikram Kumar  |
+-------------+---------------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> DELETE FROM customers
    -> WHERE customer_id = 4;
Query OK, 1 row affected (0.06 sec)

mysql>
mysql> SELECT *
    -> FROM customers;
+-------------+---------------+
| customer_id | customer_name |
+-------------+---------------+
|           1 | Anita Sharma  |
|           2 | Rahul Sharma  |
|           3 | Sara Joseph   |
+-------------+---------------+
3 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> CREATE TABLE products (
    ->     product_id INT PRIMARY KEY,
    ->     product_name VARCHAR(100) NOT NULL,
    ->     price DECIMAL(10,2) NOT NULL
    -> );
Query OK, 0 rows affected (1.00 sec)

mysql>
mysql> SHOW TABLES;
+----------------------------+
| Tables_in_intern_ecommerce |
+----------------------------+
| customers                  |
| products                   |
+----------------------------+
2 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> INSERT INTO products (product_id, product_name, price)
    -> VALUES
    -> (1, 'Pen', 10.00),
    -> (2, 'Notebook', 45.00),
    -> (3, 'Stapler', 80.00),
    -> (4, 'Marker', 25.00);
Query OK, 4 rows affected (0.13 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT * FROM products;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          1 | Pen          | 10.00 |
|          2 | Notebook     | 45.00 |
|          3 | Stapler      | 80.00 |
|          4 | Marker       | 25.00 |
+------------+--------------+-------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM products
    -> ORDER BY price DESC;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          3 | Stapler      | 80.00 |
|          2 | Notebook     | 45.00 |
|          4 | Marker       | 25.00 |
|          1 | Pen          | 10.00 |
+------------+--------------+-------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM products
    -> ORDER BY price DESC;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          3 | Stapler      | 80.00 |
|          2 | Notebook     | 45.00 |
|          4 | Marker       | 25.00 |
|          1 | Pen          | 10.00 |
+------------+--------------+-------+
4 rows in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT COUNT(*) AS total_products
    -> FROM products;
+----------------+
| total_products |
+----------------+
|              4 |
+----------------+
1 row in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM products
    -> ORDER BY price ASC
    -> LIMIT 1;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          1 | Pen          | 10.00 |
+------------+--------------+-------+
1 row in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT *
    -> FROM products
    -> WHERE price > 20;
+------------+--------------+-------+
| product_id | product_name | price |
+------------+--------------+-------+
|          2 | Notebook     | 45.00 |
|          3 | Stapler      | 80.00 |
|          4 | Marker       | 25.00 |
+------------+--------------+-------+
3 rows in set (0.07 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT AVG(price) AS average_price
    -> FROM products;
+---------------+
| average_price |
+---------------+
|     40.000000 |
+---------------+
1 row in set (0.06 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT MAX(price) AS highest_price
    -> FROM products;
+---------------+
| highest_price |
+---------------+
|         80.00 |
+---------------+
1 row in set (0.04 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT MIN(price) AS lowest_price
    -> FROM products;
+--------------+
| lowest_price |
+--------------+
|        10.00 |
+--------------+
1 row in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT SUM(price) AS total_price
    -> FROM products;
+-------------+
| total_price |
+-------------+
|      160.00 |
+-------------+
1 row in set (0.00 sec)

mysql> USE intern_ecommerce;
Database changed
mysql>
mysql> SELECT
    ->     COUNT(*) AS total_products,
    ->     AVG(price) AS average_price,
    ->     MIN(price) AS lowest_price,
    ->     MAX(price) AS highest_price
    -> FROM products;
+----------------+---------------+--------------+---------------+
| total_products | average_price | lowest_price | highest_price |
+----------------+---------------+--------------+---------------+
|              4 |     40.000000 |        10.00 |         80.00 |
+----------------+---------------+--------------+---------------+
1 row in set (0.00 sec)

mysql>