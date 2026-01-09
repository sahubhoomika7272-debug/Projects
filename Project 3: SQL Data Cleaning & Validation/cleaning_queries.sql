-- =========================================
-- SQL Data Cleaning & Validation Queries
-- =========================================

-- 1. Remove duplicate records
DELETE FROM employees
WHERE emp_id IN (
    SELECT emp_id FROM (
        SELECT emp_id
        FROM employees
        GROUP BY emp_id
        HAVING COUNT(*) > 1
    ) temp
);

-- 2. Remove commas from salary and convert to numeric
UPDATE employees
SET salary = REPLACE(salary, ',', '');

-- Optional: Convert salary column to numeric
ALTER TABLE employees
MODIFY salary INT;

-- 3. Handle NULL departments
UPDATE employees
SET department = 'Unknown'
WHERE department IS NULL;

-- 4. Handle NULL salary values
UPDATE employees
SET salary = 0
WHERE salary IS NULL;

-- 5. Standardize joining_date format
UPDATE employees
SET joining_date = 
    CASE
        WHEN joining_date LIKE '%/%' THEN DATE_FORMAT(
            STR_TO_DATE(joining_date, '%Y/%m/%d'), '%Y-%m-%d'
        )
        WHEN joining_date LIKE '%-%' AND LENGTH(joining_date) = 10 THEN joining_date
        ELSE NULL
    END;

-- 6. Validate cleaned data
SELECT *
FROM employees;
