-- =========================================
-- Schema: Business Reporting Database
-- =========================================

CREATE DATABASE IF NOT EXISTS business_reporting;
USE business_reporting;

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    product VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    revenue DECIMAL(12,2) NOT NULL,
    quantity INT NOT NULL
);
