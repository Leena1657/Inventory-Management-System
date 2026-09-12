USE Inventory_Management;

DELIMITER //

CREATE PROCEDURE CheckLowStock(IN p_Limit INT)
BEGIN
    SELECT
        Product_ID,
        Product_Name,
        Quantity
    FROM Product
    WHERE Quantity <= p_Limit
    ORDER BY Quantity ASC;
END //

DELIMITER ;