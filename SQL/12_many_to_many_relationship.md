# Assignment 12: Many-to-Many Relationship

## Schema Diagram

CUSTOMERS
    |
    | 1 : N
    v
ORDERS
    |
    | 1 : N
    v
ORDER_ITEMS
    ^
    | N : 1
    |
PRODUCTS

## Relationships

1. One customer can place many orders.
   CUSTOMERS (1) ---- (N) ORDERS

2. One order can contain many order items.
   ORDERS (1) ---- (N) ORDER_ITEMS

3. One product can appear in many order items.
   PRODUCTS (1) ---- (N) ORDER_ITEMS

4. One order can contain many products, and one product can appear in many orders.
   ORDERS (M) ---- (N) PRODUCTS

## How Many-to-Many Is Implemented

The many-to-many relationship between orders and products is implemented through the junction table named order_items.

The order_items table contains:
- order_id (Foreign Key)
- product_id (Foreign Key)
- quantity
- unit_price

## Conclusion

A junction table converts a many-to-many relationship into two one-to-many relationships.