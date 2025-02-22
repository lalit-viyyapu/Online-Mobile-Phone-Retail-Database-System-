# Online Mobile Retail Database System

## Project Overview
This project involves designing and implementing a database system for an online mobile phone retail platform. The database is a critical component for managing and organizing customer orders, products, reviews, vendors, and payments efficiently.

## Objective
The goal of this project is to ensure efficient data storage, retrieval, and management to support the functionalities of the online mobile retail platform.

## Team Members
- Viyyapu Lalit Madhav  
- Hemantab Reddy Battula  
- Pallavi Vayalali  
- Ritambara Mahapatra  
- Hussain Pirbhai  

## Assumptions and Constraints
### Assumptions
- Each product has a unique serial number (Primary Key), making it a unique product.
- A specific device, once included in an order, cannot be added to another order simultaneously.

### Constraints
- All project requirements have been met while avoiding many-to-many (M:M) relationships.
- The primary key fields are not nullable.

## Entity-Relationship Model
The database consists of six main entities:
- **CUSTOMER**: Stores customer details.
- **ORDER**: Stores order details.
- **PRODUCT**: Stores product details.
- **REVIEW**: Stores customer reviews for products.
- **VENDOR**: Stores vendor details.
- **PAYMENT**: Stores payment information.

## Relationships and Cardinality
- **CUSTOMER places ORDER** (1:M)
- **ORDER has PRODUCT** (1:M)
- **ORDER includes PAYMENT** (1:1)
- **CUSTOMER writes REVIEW** (1:M)
- **PRODUCT has REVIEW** (1:M)
- **VENDOR sells PRODUCT** (1:M)

## Database Schema and Implementation
The implementation includes:
- **DDL (Data Definition Language) Scripts** to create schemas, tables, constraints, views, and sequences.
- **Triggers** for automating ID generation.
- **DML (Data Manipulation Language) Scripts** to insert sample records into the database.

### Sample SQL Queries
```sql
-- Retrieve all customer details
SELECT * FROM Customer;

-- Retrieve specific columns from the Customer table
SELECT Customer_ID, First_Name, Last_Name, Email, Phone_No FROM Customer;

-- Retrieve all orders with customer details
SELECT * FROM Customer JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID;

-- Retrieve the most expensive products
SELECT * FROM Product ORDER BY Price DESC;

-- Retrieve customers with an average payment amount greater than $500
SELECT Customer.First_Name, Customer.Last_Name, COUNT("Order".Order_ID) AS TotalOrders, 
       AVG(Payment.Amount) AS AverageSpent
FROM Customer
JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID
JOIN Payment ON "Order".Order_ID = Payment.Order_ID
GROUP BY Customer.Customer_ID
HAVING AVG(Payment.Amount) > 500;
```

## How to Use
1. Run the **DDL scripts** to create the database schema.
2. Execute the **DML scripts** to populate tables with sample data.
3. Use the **SQL queries** to interact with the database.

## Technologies Used
- PostgreSQL
- SQL (DDL, DML, and DQL Queries)
- ER Modeling

## Future Enhancements
- Implement stored procedures for automation.
- Develop a front-end application for user interactions.
- Enhance database security measures.

---
This README serves as a guide to understanding and working with the online mobile retail database system.

