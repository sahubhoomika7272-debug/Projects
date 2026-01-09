-- =========================================
-- Business Reporting Queries
-- =========================================

-- 1. Year-wise Revenue Trend
SELECT
    YEAR(order_date) AS year,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY YEAR(order_date)
ORDER BY year;

-- 2. Monthly Revenue Trend
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

-- 3. Region-wise Revenue
SELECT
    region,
    SUM(revenue) AS region_revenue
FROM sales
GROUP BY region
ORDER BY region_revenue DESC;

-- 4. Product Performance Report
SELECT
    product,
    SUM(quantity) AS total_units_sold,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- 5. KPI Summary (Management View)
SELECT
    COUNT(DISTINCT product) AS total_products,
    SUM(quantity) AS total_units_sold,
    SUM(revenue) AS overall_revenue
FROM sales;
