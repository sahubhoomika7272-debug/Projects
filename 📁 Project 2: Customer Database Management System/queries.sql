-- =========================================
-- Customer Database Queries
-- =========================================

-- Insert sample customers
INSERT INTO customers (customer_id, full_name, email, city) VALUES
(1, 'Amit Sharma', 'amit.sharma@email.com', 'Delhi'),
(2, 'Neha Verma', 'neha.verma@email.com', 'Mumbai'),
(3, 'Rahul Singh', 'rahul.singh@email.com', 'Bangalore'),
(4, 'Priya Mehta', 'priya.mehta@email.com', 'Pune');

-- READ: Fetch all customers
SELECT * FROM customers;

-- READ: Customers from a specific city
SELECT *
FROM customers
WHERE city = 'Mumbai';

-- UPDATE: Update customer city
UPDATE customers
SET city = 'Hyderabad'
WHERE customer_id = 3;

-- DELETE: Remove a customer
DELETE FROM customers
WHERE customer_id = 4;

-- Aggregate: Count customers by city
SELECT
    city,
    COUNT(*) AS total_customers
FROM customers
GROUP BY city;
