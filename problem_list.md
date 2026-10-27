# Orders Data Cleaning - Problem List

1. Extra spaces in customer names and cities.
2. Inconsistent capitalization in names, cities, categories, and status.
3. Invalid categories: Furniture and Toys.
4. Amount is stored as text and contains N/A.
5. Missing units for O106.
6. Mixed and invalid dates.
7. Duplicate order ID: O102.
8. Inconsistent status capitalization such as delivered and Delivered.
9. Units = 0 for O111, which violates the rule that units must be at least 1.
10. O110 is an outlier with 1000 units and amount 150000.