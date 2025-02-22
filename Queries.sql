set search_path to mobile_store

--Basic Queries

--Q1 Select all columns and all rows from one table 
SELECT * FROM Customer;

--Q2 Select five columns and all rows from one table
SELECT Customer_ID, First_Name, Last_Name, Email, Phone_No FROM Customer;

--Q3 Select all columns from all rows from one view
SELECT * FROM CustomerOrderPaymentSummary;

--Q4 Using a join on 2 tables, select all columns and all rows from the tables without the use of a Cartesian product
SELECT * FROM Customer
JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID;

--Q5 Select and order data retrieved from one table
SELECT * FROM Product
ORDER BY Price DESC;

--Q6 Using a join on 3 tables, select 5 columns from the 3 tables. Use syntax that would limit the output to 10 rows
SELECT Customer.First_Name, Customer.Last_Name, "Order".Order_ID, Payment.Payment_Method, Payment.Amount
FROM Customer
JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID
JOIN Payment ON "Order".Order_ID = Payment.Order_ID
LIMIT 10;

--Q7 Select distinct rows using joins on 3 tables
SELECT DISTINCT Customer.Customer_ID, Customer.First_Name, "Order".Order_ID, Review.Rating, Review.Review_Text
FROM Customer
JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID
JOIN Review ON Customer.Customer_ID = Review.Customer_ID;

--Q8 Use GROUP BY and HAVING in a select statement using one or more tables
SELECT Product.Brand, COUNT(*) AS NumberOfProducts
FROM Product
GROUP BY Product.Brand
HAVING COUNT(*) > 1;

--Q9 Use IN clause to select data from one or more tables
SELECT * FROM Product
WHERE Category IN ('Phone', 'Tablet');

--Q10 Select length of one column from one table (use LENGTH function)
SELECT LENGTH(Vendor_Name) FROM Vendor;

--Q11 Delete one record from one table. Use select statements to demonstrate the table contents before and after the DELETE statement. 
--	  Make sure you use ROLLBACK afterwards so that the data will not be physically removed.
select * from payment
BEGIN;
DELETE FROM payment
WHERE Order_ID = 201;
select * from payment
ROLLBACK;
select * from payment

--Q12 Update one record from one table. Use select statements to demonstrate the table contents before and after the UPDATE statement. 
--	  Make sure you use ROLLBACK afterwards so that the data will not be physically removed
select * from payment
BEGIN;
UPDATE Payment SET Amount = 1000 WHERE Payment_ID = 601;
select * from payment
ROLLBACK;
select * from payment

-- Advanced Queries

--Q13
SELECT Customer.First_Name, Customer.Last_Name, COUNT("Order".Order_ID) AS TotalOrders, AVG(Payment.Amount) AS AverageSpent
FROM Customer
JOIN "Order" ON Customer.Customer_ID = "Order".Customer_ID
JOIN Payment ON "Order".Order_ID = Payment.Order_ID
GROUP BY Customer.Customer_ID
HAVING COUNT("Order".Order_ID) > 0 AND AVG(Payment.Amount) > 500;

--Q14
SELECT Vendor.Vendor_Name, Product.Category, AVG(Product.Price) AS AvgPrice
FROM Product
JOIN Vendor ON Product.Vendor_ID = Vendor.Vendor_ID
WHERE Product.Price > (SELECT AVG(Price) FROM Product WHERE Category = 'Phone')
GROUP BY Vendor.Vendor_Name, Product.Category;