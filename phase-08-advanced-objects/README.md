 Phase 8 — Advanced Database Objects

 Objective

The goal of Phase 8 was to learn how to create and use advanced MySQL database objects.

This phase focused on:

- Views
- Stored Procedures
- Stored Functions
- Triggers

The purpose was to move beyond basic SQL queries and understand how business logic can be handled directly inside the database.

---

 Topics Covered

 1. Views

Learned how to create reusable virtual tables using `CREATE VIEW`.

Examples:

- Customer summary
- Order information
- Product/category information

Views help simplify complex queries and provide reusable database-level representations of data.

---

 2. Stored Procedures

Learned how to create procedures using:

```sql
CREATE PROCEDURE

3. Stored Functions

Learned how to create reusable functions using:

CREATE FUNCTION

Functions created in this phase include:

calculate_discount
calculate_final_amount

Example:

SELECT calculate_discount(120000);
SELECT calculate_final_amount(120000);

The functions demonstrate how calculations and business rules can be encapsulated inside the database.

4. Triggers

Learned how triggers can automatically execute SQL when a database event occurs.
