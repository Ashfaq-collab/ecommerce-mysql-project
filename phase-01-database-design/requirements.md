E-Commerce Database Requirements

1. Customer

The system should store information about customers who use the e-commerce platform.

A customer should have:

* Customer ID
* First name
* Last name
* Email
* Phone number
* Registration date

A customer can have multiple addresses and can place multiple orders.

2. Address

The system should store customer addresses.

An address should contain:

* Address ID
* Customer ID
* Address type
* Address line
* City
* State
* Postal code
* Country

A customer can have multiple addresses.

3. Category

The system should organize products into categories.

A category should contain:

* Category ID
* Category name
* Description

A category can contain multiple products.

4. Product

The system should store information about products available for sale.

A product should contain:

* Product ID
* Category ID
* Product name
* Description
* Price
* Stock quantity
* Creation date

Each product belongs to a category.

5. Supplier

The system should store information about suppliers who provide products.

A supplier should contain:

* Supplier ID
* Supplier name
* Email
* Phone number

A supplier can supply multiple products.

6. Product Supplier

The system should maintain the relationship between products and suppliers.

A product can be supplied by multiple suppliers, and a supplier can supply multiple products.

The relationship should store:

* Product ID
* Supplier ID
* Supplier price

This creates a many-to-many relationship between products and suppliers.

7. Order

The system should store information about customer orders.

An order should contain:

* Order ID
* Customer ID
* Order date
* Order status
* Total amount

A customer can place multiple orders.

An order can contain multiple products.

8. Order Item

The system should store individual products included in an order.

An order item should contain:

* Order Item ID
* Order ID
* Product ID
* Quantity
* Unit price

An order can contain multiple order items.

A product can appear in many different orders.

The unit price should be stored at the time of purchase so that historical orders remain accurate even if the product price changes later.

9. Payment

The system should store payment information for orders.

A payment should contain:

* Payment ID
* Order ID
* Payment date
* Amount
* Payment method
* Payment status

A payment belongs to an order.

10. Shipment

The system should store shipping information for orders.

A shipment should contain:

* Shipment ID
* Order ID
* Tracking number
* Shipped date
* Delivered date
* Shipment status

A shipment belongs to an order.

11. Review

The system should allow customers to review products.

A review should contain:

* Review ID
* Customer ID
* Product ID
* Rating
* Review text
* Creation date

A customer can write multiple reviews.

A product can have multiple reviews.

Main Business Rules

1. A customer can have multiple addresses.
2. A customer can place multiple orders.
3. An order belongs to one customer.
4. An order can contain multiple order items.
5. An order item belongs to one order.
6. An order item refers to one product.
7. A product belongs to one category.
8. A category can contain multiple products.
9. A product can have multiple suppliers.
10. A supplier can supply multiple products.
11. A customer can write multiple reviews.
12. A product can have multiple reviews.
13. An order can have payment information.
14. An order can have shipment information.
15. The price stored in an order item represents the price at the time of purchase.
