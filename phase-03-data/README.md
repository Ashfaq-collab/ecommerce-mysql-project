Phase 3 — Data Seeding

Objective

Populate the ecommerce database with realistic sample data so that SQL queries can be tested on meaningful data.

   What I Learned

- Inserting data using `INSERT INTO`
- Inserting multiple rows using a single statement
- Maintaining foreign key relationships while inserting data
- Creating realistic test data
- Understanding the relationship between parent and child tables
- Testing the database after inserting data

   Data Added

The following tables were populated:

- Customers
- Addresses
- Categories
- Products
- Suppliers
- Product Suppliers
- Orders
- Order Items
- Payments
- Shipments
- Reviews

   Sample Data Summary

- 10 customers
- 10 addresses
- 8 categories
- 15 products
- 5 suppliers
- Multiple product-supplier relationships
- 12 orders
- 14 order items
- 12 payments
- 9 shipments
- 10 reviews

   Validation

After inserting the data, I verified the record counts using `SELECT COUNT(*)`.

Example:

```sql
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM reviews;
