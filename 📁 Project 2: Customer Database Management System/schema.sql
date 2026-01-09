-- =========================================
-- Schema: Customer Database Management
-- =========================================

CREATE DATABASE IF NOT EXISTS customer_management;
USE customer_management;

-- Drop table if exists for clean execution
DROP TABLE IF EXISTS customers;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
