# Assignment 9: Composite Keys

## Same Product Twice in One Order

ShopEase may allow the same product to appear twice in one order if the two entries represent different options, customizations, or prices. In this case, each order line needs a separate identifier or a composite key that distinguishes the lines.

If the same product is ordered multiple times with no differences, ShopEase can store it as one row and increase the quantity.

## Key Design

1. Separate order lines: Use order_id, product_id, and a line identifier or another attribute to distinguish each line.
2. One row per product per order: Use a composite key consisting of order_id and product_id.

## Conclusion

The key design depends on whether duplicate product lines are allowed. A composite key (order_id, product_id) works when each product appears only once per order. If duplicate lines are allowed, an additional line identifier is needed.