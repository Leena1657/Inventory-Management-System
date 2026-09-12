USE Inventory_Management;

DELIMITER //


-- Purchase Trigger

CREATE TRIGGER after_purchase_item_insert
AFTER INSERT ON Purchase_Item
FOR EACH ROW
BEGIN
    UPDATE Product
    SET Quantity = Quantity + NEW.Quantity
    WHERE Product_ID = NEW.Product_ID;
END //


DELIMITER ;


DELIMITER //


-- Sale Trigger

CREATE TRIGGER after_sale_item_insert
AFTER INSERT ON Sale_Item
FOR EACH ROW
BEGIN
    UPDATE Product
    SET Quantity = Quantity - NEW.Quantity
    WHERE Product_ID = NEW.Product_ID;
END //


DELIMITER ;