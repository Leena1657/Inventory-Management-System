USE Inventory_Management;

-- Aggregation: Number of products in each category

SELECT
    Category_ID,
    COUNT(*) AS Product_Count
FROM Product
GROUP BY Category_ID;


-- Total amount spent by each customer
-- Only customers whose total spending is greater than 5000

SELECT
    Customer_ID,
    SUM(Total_Amount) AS Total_Spent
FROM Sale
GROUP BY Customer_ID
HAVING SUM(Total_Amount) > 5000;


-- Products priced above the average product price

SELECT
    Product_Name,
    Price
FROM Product
WHERE Price > (
    SELECT AVG(Price)
    FROM Product
);