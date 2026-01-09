-- =========================================
-- Sales & Revenue Analysis Queries
-- =========================================

-- 1. Monthly Revenue Analysis
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;


-- 2. Region-wise Revenue Performance
SELECT 
    region,
    SUM(revenue) AS region_revenue
FROM sales
GROUP BY region
ORDER BY region_revenue DESC;


-- 3. Product-wise Revenue Contribution
SELECT 
    product,
    SUM(revenue) AS product_revenue
FROM sales
GROUP BY product
ORDER BY product_revenue DESC;


-- 4. Top Selling Product by Quantity
SELECT 
    product,
    SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product
ORDER BY total_units_sold DESC;


-- 5. Average Revenue per Sale
SELECT 
    AVG(revenue) AS avg_revenue_per_sale
FROM sales;


-- 6. High-Value Sales (Above Average)
SELECT *
FROM sales
WHERE revenue > (
    SELECT AVG(revenue) FROM sales
)
ORDER BY revenue DESC;
