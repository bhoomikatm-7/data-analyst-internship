# Assignment 13: E-commerce Database Schema Note

## 1. CUSTOMERS
- customer_id — Primary Key (PK)
- customer_name
- email
- city
- state
- signup_date
- is_active
- notes

## 2. PRODUCTS
- product_id — Primary Key (PK)
- product_name
- category
- price
- stock_qty
- created_at

## 3. ORDERS
- order_id — Primary Key (PK)
- customer_id — Foreign Key (FK), references customers.customer_id
- order_date
- status
- shipped_at

## 4. ORDER_ITEMS
- order_item_id — Primary Key (PK)
- order_id — Foreign Key (FK), references orders.order_id
- product_id — Foreign Key (FK), references products.product_id
- quantity
- unit_price

## Relationships

1. CUSTOMERS (1) ---- (N) ORDERS
2. ORDERS (1) ---- (N) ORDER_ITEMS
3. PRODUCTS (1) ---- (N) ORDER_ITEMS
4. ORDERS (M) ---- (N) PRODUCTS through ORDER_ITEMS

## Key Definitions

- Primary Key (PK): Uniquely identifies each row in a table.
- Foreign Key (FK): Connects a table to another table.
- One-to-Many (1:N): One record can be related to many records.
- Many-to-Many (M:N): Many records in one table can relate to many records in another table.

## Conclusion

The e-commerce database uses four tables to manage customers, products, orders, and order items. Primary keys identify records, while foreign keys maintain relationships between tables.