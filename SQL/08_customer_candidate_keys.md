# Assignment 8: Candidate Keys for Customers

## Possible Candidate Keys

Candidate keys are columns that could uniquely identify each customer.

| Column | Why It Could Be a Candidate Key | Why It Might Fail in Real Data |
|--------|---------------------------------|--------------------------------|
| customer_id | Each customer receives a unique ID. | If IDs are assigned incorrectly, duplicate IDs may occur. |
| email | Email addresses are often unique for customers. | A customer may change their email, or duplicate emails may exist if uniqueness is not enforced. |
| phone | Phone numbers can help identify customers. | A family may share one phone number, or a customer may change their number. |

## Conclusion

customer_id is the most reliable primary key because it is generated specifically to identify each customer. Email and phone may be useful alternate keys, but they require appropriate validation and uniqueness rules.