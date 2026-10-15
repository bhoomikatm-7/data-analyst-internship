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