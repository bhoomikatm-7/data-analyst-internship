# Assignment 6: Primary Key for Courses Table

## Suitable Primary Key

The suitable primary key for the courses table is course_id.

## Example Table

| course_id | course_name |
|-----------|-------------|
| 101       | MCA         |
| 102       | BCA         |
| 103       | MBA         |

## Why course_id Is the Best Choice

1. course_id uniquely identifies each course.
2. It does not contain duplicate values.
3. It cannot contain NULL values because it is the primary key.
4. It remains stable even if the course name changes.

## Why Not course_name?

1. Course names may be duplicated in some real-world systems.
2. Course names may change over time.
3. A numeric course_id is a more reliable identifier.

## Conclusion

The course_id column is the best primary key because it uniquely and reliably identifies each course.
