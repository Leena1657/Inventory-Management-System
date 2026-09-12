USE Inventory_Management;

SELECT
    pu.Purchase_ID,
    s.Name AS Supplier_Name,
    p.Product_Name,
    pi.Quantity,
    pi.Unit_Cost,
    pi.Subtotal
FROM Purchase pu
JOIN Supplier s
    ON pu.Supplier_ID = s.Supplier_ID
JOIN Purchase_Item pi
    ON pu.Purchase_ID = pi.Purchase_ID
JOIN Product p
    ON pi.Product_ID = p.Product_ID;