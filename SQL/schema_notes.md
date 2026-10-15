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