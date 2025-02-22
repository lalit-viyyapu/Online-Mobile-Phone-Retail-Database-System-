-- Drop Triggers if they exist
DROP TRIGGER IF EXISTS customer_trigger ON Customer CASCADE;
DROP TRIGGER IF EXISTS order_trigger ON "Order" CASCADE;
DROP TRIGGER IF EXISTS vendor_trigger ON Vendor CASCADE;
DROP TRIGGER IF EXISTS product_trigger ON Product CASCADE;
DROP TRIGGER IF EXISTS review_trigger ON Review CASCADE;
DROP TRIGGER IF EXISTS payment_trigger ON Payment CASCADE;
 
-- Drop Functions if they exist
DROP FUNCTION IF EXISTS customer_trigger_function() CASCADE;
DROP FUNCTION IF EXISTS order_trigger_function() CASCADE;
DROP FUNCTION IF EXISTS vendor_trigger_function() CASCADE;
DROP FUNCTION IF EXISTS product_trigger_function() CASCADE;
DROP FUNCTION IF EXISTS review_trigger_function() CASCADE;
DROP FUNCTION IF EXISTS payment_trigger_function() CASCADE;
 
-- Drop Views if they exist
DROP VIEW IF EXISTS CustomerOrderPaymentSummary CASCADE;
 
-- Drop Tables if they exist
DROP TABLE IF EXISTS Customer CASCADE;
DROP TABLE IF EXISTS "Order" CASCADE;
DROP TABLE IF EXISTS Vendor CASCADE;
DROP TABLE IF EXISTS Product CASCADE;
DROP TABLE IF EXISTS Review CASCADE;
DROP TABLE IF EXISTS Payment CASCADE;
 
-- Drop Sequences if they exist
DROP SEQUENCE IF EXISTS customer_seq CASCADE;
DROP SEQUENCE IF EXISTS order_seq CASCADE;
DROP SEQUENCE IF EXISTS product_seq CASCADE;
DROP SEQUENCE IF EXISTS review_seq CASCADE;
DROP SEQUENCE IF EXISTS vendor_seq CASCADE;
DROP SEQUENCE IF EXISTS payment_seq CASCADE;
 
-- Drop Schema if it exists
DROP SCHEMA IF EXISTS mobile_store CASCADE;

-- Create Schema
CREATE SCHEMA mobile_store;

set search_path to mobile_store

-- Create sequences for each table
CREATE SEQUENCE customer_seq
START WITH 101;

CREATE SEQUENCE order_seq
START WITH 201;

CREATE SEQUENCE product_seq
START WITH 301;

CREATE SEQUENCE review_seq
START WITH 401;

CREATE SEQUENCE vendor_seq
START WITH 501;

CREATE SEQUENCE payment_seq
START WITH 601;


-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Email VARCHAR(255),
    Date_of_Birth DATE,
    Phone_No VARCHAR(20)
);

-- Order Table
CREATE TABLE "Order" (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Shipping_Address TEXT,
    Payment_Method VARCHAR(255),
    Order_Status VARCHAR(255),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Vendor Table
CREATE TABLE Vendor (
    Vendor_ID INT PRIMARY KEY,
    Vendor_Name VARCHAR(255),
    Contact_Number VARCHAR(20),
    Vendor_Address TEXT,
    Registration_Date DATE
);

-- Product Table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Vendor_ID INT,
    Order_ID INT,
    Product_Name VARCHAR(255),
    Price DECIMAL,
    Category VARCHAR(255),
    Brand VARCHAR(255),
    FOREIGN KEY (Vendor_ID) REFERENCES Vendor(Vendor_ID),
    FOREIGN KEY (Order_ID) REFERENCES "Order"(Order_ID)
);

-- Review Table
CREATE TABLE Review (
    Review_ID INT PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Rating INT,
    Review_Text TEXT,
    Review_Date DATE,
    Helpfulness_Count INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- Payment Table
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Order_ID INT,
    Payment_Date DATE,
    Payment_Status VARCHAR(255),
    Payment_Method VARCHAR(255),
    Amount DECIMAL,
    FOREIGN KEY (Order_ID) REFERENCES "Order"(Order_ID)
);


-- Sample View
CREATE VIEW CustomerOrderPaymentSummary AS
SELECT 
    Customer.Customer_ID,
    Customer.First_Name,
    Customer.Last_Name,
    Customer.Email,
    "Order".Order_ID,
    "Order".Order_Date,
    "Order".Order_Status,
    Payment.Payment_ID,
    Payment.Payment_Date,
    Payment.Payment_Status,
    Payment.Payment_Method,
    Payment.Amount
FROM 
    Customer
JOIN 
    "Order" ON Customer.Customer_ID = "Order".Customer_ID
JOIN 
    Payment ON "Order".Order_ID = Payment.Order_ID;


-- Create triggers for each table

--Customer Trigger
CREATE OR REPLACE FUNCTION customer_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    NEW.customer_id := nextval('customer_seq');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER customer_trigger
BEFORE INSERT OR UPDATE OR DELETE ON Customer
FOR EACH ROW EXECUTE FUNCTION customer_trigger_function();

-- Order Trigger
CREATE OR REPLACE FUNCTION order_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    NEW.order_id := nextval('order_seq');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER order_trigger
BEFORE INSERT OR UPDATE OR DELETE ON "Order"
FOR EACH ROW EXECUTE FUNCTION order_trigger_function();

-- Vendor Trigger
CREATE OR REPLACE FUNCTION vendor_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    NEW.vendor_id := nextval('vendor_seq');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER vendor_trigger
BEFORE INSERT OR UPDATE OR DELETE ON Vendor
FOR EACH ROW EXECUTE FUNCTION vendor_trigger_function();


-- Product Trigger
CREATE OR REPLACE FUNCTION product_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    NEW.product_id := nextval('product_seq');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER product_trigger
BEFORE INSERT OR UPDATE OR DELETE ON Product
FOR EACH ROW EXECUTE FUNCTION product_trigger_function();

-- Review Trigger
CREATE OR REPLACE FUNCTION review_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    NEW.review_id := nextval('review_seq');
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER review_trigger
BEFORE INSERT OR UPDATE OR DELETE ON Review
FOR EACH ROW EXECUTE FUNCTION review_trigger_function();

-- Payment Trigger
CREATE OR REPLACE FUNCTION payment_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        NEW.payment_id := nextval('payment_seq');
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;