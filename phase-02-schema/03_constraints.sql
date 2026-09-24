USE ecommerce_db;

-- Address
ALTER TABLE addresses
ADD CONSTRAINT fk_address_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

-- Products
ALTER TABLE products
ADD CONSTRAINT fk_product_category
FOREIGN KEY (category_id)
REFERENCES categories(category_id);

-- Product Suppliers
ALTER TABLE product_suppliers
ADD CONSTRAINT fk_ps_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

ALTER TABLE product_suppliers
ADD CONSTRAINT fk_ps_supplier
FOREIGN KEY (supplier_id)
REFERENCES suppliers(supplier_id);

-- order
ALTER TABLE orders
ADD CONSTRAINT fk_order_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

-- order_items
ALTER TABLE order_items
ADD CONSTRAINT fk_item_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

ALTER TABLE order_items
ADD CONSTRAINT fk_item_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

-- Payments
ALTER TABLE payments
ADD CONSTRAINT fk_payment_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- Shipments
ALTER TABLE shipments
ADD CONSTRAINT fk_shipment_order
FOREIGN KEY (order_id)
REFERENCES orders(order_id);

-- Reviews
ALTER TABLE reviews
ADD CONSTRAINT fk_review_customer
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE reviews
ADD CONSTRAINT fk_review_product
FOREIGN KEY (product_id)
REFERENCES products(product_id);

-- Adding Check Constraint
-- Products
ALTER TABLE products
ADD CONSTRAINT chk_product_price
CHECK (price >= 0);

ALTER TABLE products
ADD CONSTRAINT chk_product_stock
CHECK (stock_quantity >= 0);

-- Order_items
ALTER TABLE order_items
ADD CONSTRAINT chk_item_quantity
CHECK (quantity > 0);

ALTER TABLE order_items
ADD CONSTRAINT chk_item_price
CHECK (unit_price >= 0);

-- Reviews
ALTER TABLE reviews
ADD CONSTRAINT chk_review_rating
CHECK (rating BETWEEN 1 AND 5);



















