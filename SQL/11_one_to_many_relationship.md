# Assignment 11: One-to-Many Relationship

## Explanation

When customers are joined to orders and then to order_items, one output row represents one order item belonging to an order placed by a customer.

## Grain

The grain of the joined result is one row per order item.

## Example

If a customer places one order containing three different order items, the joined result may contain three rows for that order.

## SQL Example

SELECT
    c.customer_name,
    o.order_id,
    oi.order_item_id,
    oi.product_id,
    oi.quantity
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id;

## Conclusion

Joining one-to-many tables can produce multiple rows for one customer or order. Therefore, the grain must be understood before calculating counts or totals.