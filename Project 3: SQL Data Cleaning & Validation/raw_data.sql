-- =========================================
-- Raw Employee Data (Unclean)
-- =========================================

CREATE DATABASE IF NOT EXISTS data_cleaning;
USE data_cleaning;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT,
    full_name VARCHAR(100),
    salary VARCHAR(20),
    department VARCHAR(50),
    joining_date VARCHAR(20)
);

INSERT INTO employees VALUES
(1, 'Amit Sharma', '50,000', 'IT', '2022-01-10'),
(2, 'Neha Verma', '60000', NULL, '2022/02/15'),
(3, 'Rahul Singh', '70,000', 'HR', '15-03-2022'),
(3, 'Rahul Singh', '70,000', 'HR', '15-03-2022'), -- duplicate
(4, 'Priya Mehta', NULL, 'Finance', '2022-04-01'),
(5, 'Ankit Jain', '55000', 'IT', NULL);
