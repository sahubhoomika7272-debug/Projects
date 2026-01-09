-- =========================================
-- Schema: Sales & Revenue Analysis
-- =========================================

CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;

-- Drop table if exists (for clean reruns)
DROP TABLE IF EXISTS sales;

-- Sales table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    region VARCHAR(50) NOT NULL,
    product VARCHAR(50) NOT NULL,
    revenue DECIMAL(12,2) NOT NULL,
    quantity INT NOT NULL
);
