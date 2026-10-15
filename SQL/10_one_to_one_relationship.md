# Assignment 10: One-to-One Relationship

## Schema Diagram

CUSTOMERS                 PROFILES
+----------------+        +----------------+
| PK customer_id | 1 ---- 1 | PK profile_id  |
| customer_name |        | FK customer_id |
+----------------+        | GSTIN          |
                           +----------------+

## SQL Query

SELECT
    c.customer_name,
    p.gstin
FROM customers c
LEFT JOIN profiles p
    ON c.customer_id = p.customer_id;

## Explanation

1. A one-to-one relationship means one customer has at most one profile.
2. The customer_id in profiles references the customer_id in customers.
3. GSTIN is stored in the profiles table.
4. LEFT JOIN returns all customers, including customers without a profile.
5. If a customer has no profile, the GSTIN value will be NULL.