USE Inventory_Management;


-- Inventory View

CREATE VIEW Inventory_View AS
SELECT
    p.Product_ID,
    p.Product_Name,
    c.Category_Name,
    p.Price,
    p.Quantity
FROM Product p
JOIN Category c
    ON p.Category_ID = c.Category_ID;


SELECT *
FROM Inventory_View;


-- Sales Report View

CREATE VIEW Sales_Report AS
SELECT
    s.Sale_ID,
    c.Customer_Name AS Customer_name,
    p.Product_Name,
    si.Quantity,
    si.Unit_Price,
    si.Subtotal,
    s.Sale_Date
FROM Sale s
JOIN Customer c
    ON s.Customer_ID = c.Customer_ID
JOIN Sale_Item si
    ON s.Sale_ID = si.Sale_ID
JOIN Product p
    ON si.Product_ID = p.Product_ID;


SELECT *
FROM Sales_Report;