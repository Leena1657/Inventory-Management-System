USE Inventory_Management;

START TRANSACTION;

INSERT INTO Sale
(Sale_ID, Customer_ID, Sale_Date, Total_Amount)
VALUES
(10, 1, '2026-09-09', 1600.00);

INSERT INTO Sale_Item
(Sale_Item_ID, Sale_ID, Product_ID, Quantity, Unit_Price, Subtotal)
VALUES
(10, 10, 1, 2, 800.00, 1600.00);

COMMIT;
