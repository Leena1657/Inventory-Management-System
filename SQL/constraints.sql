USE Inventory_Management;

ALTER TABLE Supplier
ADD CONSTRAINT uq_supplier_email
UNIQUE (Email);

ALTER TABLE Customer
ADD CONSTRAINT uq_customer_email
UNIQUE (customer_Email);

ALTER TABLE Product
ADD CONSTRAINT chk_product_price
CHECK (Price >= 0);

ALTER TABLE Product
ADD CONSTRAINT chk_product_quantity
CHECK (Quantity >= 0);

ALTER TABLE Purchase_Item
ADD CONSTRAINT chk_purchase_item_quantity
CHECK (Quantity > 0);

ALTER TABLE Purchase_Item
ADD CONSTRAINT chk_purchase_item_cost
CHECK (Unit_Cost >= 0);

ALTER TABLE Sale_Item
ADD CONSTRAINT chk_sale_item_quantity
CHECK (Quantity > 0);

ALTER TABLE Sale_Item
ADD CONSTRAINT chk_sale_item_price
CHECK (Unit_Price >= 0);