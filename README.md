
# Inventory Management System

A MySQL-based Inventory Management System for managing products, suppliers, customers, purchases, sales, and inventory.

## Project Overview

The Inventory Management System is a DBMS project developed using MySQL.

The system manages the complete flow of inventory:

Supplier → Purchase → Product → Sale → Customer

The system stores product details, supplier information, customer information, purchase records, and sales records in a structured relational database.

## Objectives

- Manage product information
- Manage product categories
- Store supplier details
- Store customer details
- Record purchases from suppliers
- Record sales to customers
- Track current product quantity
- Automatically update stock after purchases and sales
- Generate inventory and sales reports
- Identify products with low stock

## Database Entities

The database contains the following 8 entities:

1. Category
2. Product
3. Supplier
4. Purchase
5. Purchase_Item
6. Customer
7. Sale
8. Sale_Item

## Relationships

- One Supplier can have many Purchases.
- One Category can contain many Products.
- One Purchase can contain many Purchase Items.
- One Product can appear in many Purchase Items.
- One Customer can have many Sales.
- One Sale can contain many Sale Items.
- One Product can appear in many Sale Items.

## Technologies Used

- Database: MySQL
- Language: SQL
- Development Environment: MySQL Workbench / VS Code
- Version Control: Git & GitHub

## Project Structure

Inventory-Management-System/

├── sql/
│   ├── 01_database.sql
│   ├── 02_tables.sql
│   ├── 03_data.sql
│   ├── 04_constraints.sql
│   ├── 05_queries.sql
│   ├── 06_joins.sql
│   ├── 07_views.sql
│   ├── 08_triggers.sql
│   ├── 09_procedures.sql
│   └── 10_transactions.sql
│
├── documentation/
│   └── ER_Diagram.png
│
└── README.md

## SQL Features Implemented

### Tables

The project contains 8 relational tables with primary keys and foreign keys.

### Constraints

The database uses:

- Primary Key constraints
- Foreign Key constraints
- Unique constraints
- CHECK constraints
- NOT NULL constraints

### Queries

The project includes:

- Product count by category
- Total amount spent by customers
- Products priced above the average price

### JOIN

A multi-table JOIN is used to display purchase details along with supplier and product information.

### Views

Two views are created:

- Inventory_View
- Sales_Report

### Triggers

Two triggers are used for automatic inventory updates:

- after_purchase_item_insert
- after_sale_item_insert

When products are purchased, the quantity increases.

When products are sold, the quantity decreases.

### Stored Procedure

The project includes the stored procedure:

CheckLowStock

It displays products whose quantity is less than or equal to a specified limit.

### Transactions

A transaction is used to demonstrate inserting a sale and its corresponding sale item using START TRANSACTION and COMMIT.

## ER Diagram

The Entity Relationship Diagram represents the entities, attributes, primary keys, foreign keys, and relationships in the database.

The ER diagram is available in:

documentation/ER_Diagram.png

## How to Run

1. Install MySQL and MySQL Workbench.
2. Open the SQL files from the sql folder.
3. Execute the files in the following order:

01_database.sql
02_tables.sql
03_data.sql
04_constraints.sql
05_queries.sql
06_joins.sql
07_views.sql
08_triggers.sql
09_procedures.sql
10_transactions.sql

4. Use the queries and procedures to view and test the database.

## Project Team

Team Members:

- Add Name 1
- Add Name 2
- Add Name 3
- Add Name 4

## Project Type

Academic DBMS Project

Developed as part of a Database Management Systems project using MySQL.
