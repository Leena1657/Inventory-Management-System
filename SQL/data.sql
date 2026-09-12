USE Inventory_Management;

-- CATEGORY

INSERT INTO Category
(Category_ID, Category_Name, Description)
VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Stationery', 'School and office stationery products'),
(3, 'Furniture', 'Office and home furniture');


-- SUPPLIER

INSERT INTO Supplier
(Supplier_ID, Name, Phone, Email, Address)
VALUES
(1, 'ABC Electronics', '9876543210', 'abc@gmail.com', 'Hyderabad'),
(2, 'XYZ Traders', '9876501234', 'xyz@gmail.com', 'Vijayawada'),
(3, 'Global Supplies', '9865432109', 'global@gmail.com', 'Bangalore');


-- CUSTOMER

INSERT INTO Customer
(customer_ID, customer_Name, customer_Phone, customer_Email, customer_Address)
VALUES
(1, 'Rahul Kumar', '9123456780', 'rahul@gmail.com', 'Hyderabad'),
(2, 'Priya Sharma', '9234567890', 'priya@gmail.com', 'Vijayawada'),
(3, 'Arjun Reddy', '9345678901', 'arjun@gmail.com', 'Guntur'),
(4, 'Sneha Rao', '9456789012', 'sneha@gmail.com', 'Bangalore');


-- PRODUCT

INSERT INTO Product
(Product_ID, Category_ID, Product_Name, Price, Quantity)
VALUES
(1, 1, 'Keyboard', 800.00, 50),
(2, 1, 'Mouse', 500.00, 40),
(3, 1, 'Monitor', 8000.00, 15),
(4, 1, 'Headphones', 1500.00, 25),
(5, 2, 'Notebook', 100.00, 100),
(6, 2, 'Pen', 20.00, 200),
(7, 3, 'Office Chair', 6000.00, 10),
(8, 3, 'Study Table', 7500.00, 8);


-- PURCHASE

INSERT INTO Purchase
(Purchase_ID, Supplier_ID, Purchase_Date, Total_Amount)
VALUES
(1, 1, '2026-09-01', 10000.00),
(2, 2, '2026-09-02', 15000.00),
(3, 3, '2026-09-03', 30000.00);


-- PURCHASE_ITEM

INSERT INTO Purchase_Item
(Purchase_Item_ID, Purchase_ID, Product_ID, Quantity, Unit_Cost, Subtotal)
VALUES
(1, 1, 1, 10, 600.00, 6000.00),
(2, 1, 2, 10, 400.00, 4000.00),
(3, 2, 4, 10, 1200.00, 12000.00),
(4, 2, 5, 30, 100.00, 3000.00),
(5, 3, 7, 5, 5000.00, 25000.00),
(6, 3, 8, 1, 5000.00, 5000.00);


-- SALE

INSERT INTO Sale
(Sale_ID, Customer_ID, Sale_Date, Total_Amount)
VALUES
(1, 1, '2026-09-04', 2100.00),
(2, 2, '2026-09-05', 8000.00),
(3, 3, '2026-09-05', 3000.00),
(4, 4, '2026-09-06', 6000.00);


-- SALE_ITEM

INSERT INTO Sale_Item
(Sale_Item_ID, Sale_ID, Product_ID, Quantity, Unit_Price, Subtotal)
VALUES
(1, 1, 1, 2, 800.00, 1600.00),
(2, 1, 2, 1, 500.00, 500.00),
(3, 2, 3, 1, 8000.00, 8000.00),
(4, 3, 4, 2, 1500.00, 3000.00),
(5, 4, 7, 1, 6000.00, 6000.00);