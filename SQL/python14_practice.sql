mysql> SELECT VERSION();
+-----------+
| VERSION() |
+-----------+
| 8.0.46    |
+-----------+
1 row in set (0.12 sec)

2.

             E-COMMERCE DATABASE SCHEMA
             =========================

+--------------------------+
|        CUSTOMERS         |
+--------------------------+
| PK  customer_id          |
|     customer_name        |
|     email                |
|     city                 |
|     state                |
|     signup_date          |
+--------------------------+
             |
             | 1 : N
             v
+--------------------------+
|          ORDERS          |
+--------------------------+
| PK  order_id             |
| FK  customer_id          |
|     order_date           |
|     status               |
|     shipped_at           |
+--------------------------+
             |
             | 1 : N
             v
+--------------------------+       +--------------------------+
|       ORDER_ITEMS        |       |         PRODUCTS         |
+--------------------------+       +--------------------------+
| PK  order_item_id        |       | PK  product_id           |
| FK  order_id             |       |     product_name         |
| FK  product_id  ---------------->|     category             |
|     quantity             |       |     price                |
|     unit_price           |       |     stock_qty            |
+--------------------------+       +--------------------------+

RELATIONSHIPS
-------------
1. CUSTOMERS (1) ---- (N) ORDERS
2. ORDERS (1) -------- (N) ORDER_ITEMS
3. PRODUCTS (1) ------ (N) ORDER_ITEMS
4. ORDERS (M) -------- (N) PRODUCTS
   The many-to-many relationship is implemented through ORDER_ITEMS.

KEY:
PK = Primary Key
FK = Foreign Key
1:N = One-to-Many
M:N = Many-to-Many

3.

mysql> CREATE DATABASE IF NOT EXISTS practice_db;
Query OK, 1 row affected (1.32 sec)

mysql> USE practice_db;
Database changed
mysql>
mysql> CREATE TABLE students (
    ->     student_id INT PRIMARY KEY,
    ->     student_name VARCHAR(100),
    ->     course VARCHAR(50)
    -> );
Query OK, 0 rows affected (5.90 sec)

mysql>
mysql> INSERT INTO students (student_id, student_name, course)
    -> VALUES
    -> (1, 'Bhoomika', 'MCA'),
    -> (2, 'Ananya', 'BCA');
Query OK, 2 rows affected (2.54 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT * FROM students;
+------------+--------------+--------+
| student_id | student_name | course |
+------------+--------------+--------+
|          1 | Bhoomika     | MCA    |
|          2 | Ananya       | BCA    |
+------------+--------------+--------+
2 rows in set (0.32 sec)

4.

# Assignment 4: Customer Records

| customer_id | customer_name | email                  | city      |
|-------------|---------------|------------------------|-----------|
| 1           | Bhoomika      | bhoomika@example.com   | Bangalore |
| 2           | Ananya        | ananya@example.com     | Mysore    |
| 3           | Rahul         | rahul@example.com      | Hubballi  |

## Answers

1. Number of customer records (data rows): 3
2. Number of columns: 4
3. Each row represents one customer.
4. Each column represents one attribute of a customer.


5.

# Assignment 5: Order Items Columns

## Columns Required to Calculate Line Total

| Column Name | Data Type | Purpose |
|-------------|-----------|---------|
| quantity | INT | Stores the number of units ordered |
| unit_price | DECIMAL(10,2) | Stores the price per unit |

## Formula

Line Total = quantity * unit_price

## Example

Quantity = 3
Unit Price = 250.00

Line Total = 3 * 250.00 = 750.00

## Explanation

1. quantity uses INT because it stores whole numbers.
2. unit_price uses DECIMAL(10,2) because prices require accurate decimal values.
3. Multiplying quantity by unit_price gives the total cost of that order item.
