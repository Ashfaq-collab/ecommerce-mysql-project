INSERT INTO customers
(first_name, last_name, email, phone)
VALUES
('Rahul', 'Sharma', 'rahul@example.com', '9876543210'),
('Priya', 'Kumar', 'priya@example.com', '9876543211'),
('Arjun', 'Rao', 'arjun@example.com', '9876543212'),
('Sneha', 'Patel', 'sneha@example.com', '9876543213'),
('Vikram', 'Singh', 'vikram@example.com', '9876543214'),
('Ananya', 'Iyer', 'ananya@example.com', '9876543215'),
('Karan', 'Mehta', 'karan@example.com', '9876543216'),
('Divya', 'Nair', 'divya@example.com', '9876543217'),
('Rohit', 'Verma', 'rohit@example.com', '9876543218'),
('Meera', 'Joshi', 'meera@example.com', '9876543219');

INSERT INTO addresses
(customer_id, address_type, address_line, city, state, postal_code, country)
VALUES
(1, 'Home', '12 Anna Nagar', 'Chennai', 'Tamil Nadu', '600040', 'India'),
(1, 'Office', '45 Mount Road', 'Chennai', 'Tamil Nadu', '600002', 'India'),
(2, 'Home', '23 Indiranagar', 'Bangalore', 'Karnataka', '560038', 'India'),
(3, 'Home', '15 Banjara Hills', 'Hyderabad', 'Telangana', '500034', 'India'),
(4, 'Home', '88 Andheri West', 'Mumbai', 'Maharashtra', '400053', 'India'),
(5, 'Home', '21 Sector 17', 'Chandigarh', 'Chandigarh', '160017', 'India'),
(6, 'Home', '32 Koregaon Park', 'Pune', 'Maharashtra', '411001', 'India'),
(7, 'Home', '10 Salt Lake', 'Kolkata', 'West Bengal', '700091', 'India'),
(8, 'Home', '44 Adyar', 'Chennai', 'Tamil Nadu', '600020', 'India'),
(9, 'Home', '55 Vasant Kunj', 'Delhi', 'Delhi', '110070', 'India'),
(10, 'Home', '18 Civil Lines', 'Jaipur', 'Rajasthan', '302006', 'India');