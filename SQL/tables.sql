USE Inventory_Management;

-- CATEGORY
CREATE TABLE Category (
    Category_ID INT PRIMARY KEY,
    Category_Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255)
);


-- SUPPLIER
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);


-- CUSTOMER
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    customer_Name VARCHAR(100) NOT NULL,
    customer_Phone VARCHAR(15),
    customer_Email VARCHAR(100),
    customer_Address VARCHAR(255)
);


-- PRODUCT
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Category_ID INT NOT NULL,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL DEFAULT 0,

    FOREIGN KEY (Category_ID)
        REFERENCES Category(Category_ID)
);


-- PURCHASE
CREATE TABLE Purchase (
    Purchase_ID INT PRIMARY KEY,
    Supplier_ID INT NOT NULL,
    Purchase_Date DATE NOT NULL,
    Total_Amount DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (Supplier_ID)
        REFERENCES Supplier(Supplier_ID)
);


-- PURCHASE_ITEM
CREATE TABLE Purchase_Item (
    Purchase_Item_ID INT PRIMARY KEY,
    Purchase_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Unit_Cost DECIMAL(10,2) NOT NULL,
    Subtotal DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (Purchase_ID)
        REFERENCES Purchase(Purchase_ID),

    FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);


-- SALE
CREATE TABLE Sale (
    Sale_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Sale_Date DATE NOT NULL,
    Total_Amount DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);


-- SALE_ITEM
CREATE TABLE Sale_Item (
    Sale_Item_ID INT PRIMARY KEY,
    Sale_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Unit_Price DECIMAL(10,2) NOT NULL,
    Subtotal DECIMAL(12,2) NOT NULL,

    FOREIGN KEY (Sale_ID)
        REFERENCES Sale(Sale_ID),

    FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);