-- =========================================
-- Stored Procedures for Customer Management
-- =========================================

DELIMITER //

-- Procedure to add a new customer
CREATE PROCEDURE add_customer (
    IN p_customer_id INT,
    IN p_full_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_city VARCHAR(50)
)
BEGIN
    INSERT INTO customers (customer_id, full_name, email, city)
    VALUES (p_customer_id, p_full_name, p_email, p_city);
END //

DELIMITER ;
