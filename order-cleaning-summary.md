# CAMPUS STORE — ORDER CLEANING SUMMARY

Source: orders_messy.csv

Raw rows: 15

Clean rows: 6

Dropped / removed:
- Duplicate order ID: O102
- Invalid category: Furniture (O105), Toys (O108)
- Missing/zero units: O106, O111
- Missing amount: O103
- Invalid dates: O104, O114
- Outlier: O110 (1000 units, amount 150000)

Cleaning rules applied:
- Trimmed spaces from names and cities
- Converted names, cities, categories, and status to title case
- Converted units and amount to numeric
- Converted order dates to valid datetime values
- Removed duplicate order IDs
- Removed invalid categories
- Removed missing/invalid units
- Removed missing/invalid amounts
- Removed invalid dates
- Removed the flagged outlier
- Reset the index

Validation:
- Unique order IDs: True
- Valid categories: True
- Valid units: True
- Valid amounts: True
- Valid dates: True

Output file: orders_clean.csv