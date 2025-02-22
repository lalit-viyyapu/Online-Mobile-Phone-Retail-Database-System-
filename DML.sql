set search_path to mobile_store

-- Insert the Customer table records
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Dwayne', 'Johnson', 'Dwayne.john@gmail.com', '2002-02-01', '469-323-9090');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('John', 'Cena', 'John.cena@gmail.com', '1990-04-02', '214-969-5454');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('John', 'Doe', 'John.doe@gmail.com', '2000-07-23', '469-290-3833');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Jennifer', 'Aniston', 'Jennifer.aniston@gmail.com', '1999-09-20', '738-989-3240');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Shahrukh', 'Khan', 'Bestkhan.232@gmail.com', '1996-02-08', '313-989-7348');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Amitabh', 'Bachan', 'a.bachan@gmail.com', '1995-09-16', '123-234-5346');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Adele', 'Matthew', 'a.matthew@gmail.com', '1990-08-25', '817-934-7423');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Emma', 'Stone', 'e.stone@gmail.com', '1980-06-21', '817-821-9173');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Kate', 'Winslet', 'k.winslet@gmail.com', '1998-02-27', '817-485-2030');
INSERT INTO Customer (First_Name, Last_Name, Email, Date_of_Birth, Phone_No) VALUES ('Jane', 'Lawerence', 'j.lawerence@gmail.com', '2000-01-25', '214-400-9898');

-- Insert the Order table records
INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (101, '2022-01-08', '1234 Dumbell Dr.', 'Credit', 'Delivered');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (102, '2023-03-12', '2032 Jumbo St.', 'Cash', 'In Progress');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (103, '2022-06-15', '1786 Humble Ave.', 'Debit', 'Delivered');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (104, '2021-08-15', '1987 Secluded St.', 'Bitcoin', 'In Progress');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (105, '2023-09-25', '2015 Addison Rd.', 'Cash', 'Delivered');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (106, '2022-07-21', '1534 Stewart Dr., Lincoln, NE, 68509', 'Bitcoin', 'Delivered');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (107, '2019-04-12', '1890 Festival Rd.', 'Debit', 'In Progress');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (108, '2023-09-17', '8910 Elmore Lane., Greensboro, NC, 08322', 'Credit', 'In Progress');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (109, '2022-11-28', '1201 Hawk Lane., New Jersey, NJ, 100341', 'Cash', 'Delivered');

INSERT INTO "Order" (Customer_ID, Order_Date, Shipping_Address, Payment_Method, Order_Status) 
VALUES (110, '2023-05-18', '185 West 74th Street., New York, NY 10002', 'Bitcoin', 'Delivered');

-- Insert the Vendor table records
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('TechMaster Electronics', '987-198-1000', 'Vendor_Address', '2014-03-10');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Electrowave Innovations', '767-200-9000', 'Vendor_Address', '2022-12-08');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Gadget Galaxy', '687-198-2000', 'Vendor_Address', '2023-01-25');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('ConnectTech Solutions', '686-789-6000', 'Vendor_Address', '2000-02-15');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Global Gadgets Inc', '767-100-3000', 'Vendor_Address', '2009-08-17');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Innovate Tech Creations', '878-300-4000', 'Vendor_Address', '2011-09-09');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Digital Dynamics Ltd', '754-290-3000', 'Vendor_Address', '2022-09-13');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('SmartEdge Technologies', '214-308-8238', 'Vendor_Address', '2021-11-14');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Precision Electronics Co.', '218-890-0098', 'Vendor_Address', '2020-09-08');
INSERT INTO Vendor (Vendor_Name, Contact_Number, Vendor_Address, Registration_Date) VALUES ('Elite Solutions Group', '309-219-0087', 'Vendor_Address', '2001-11-10');

-- Insert the Product table records
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (501, 201, 'X Pro', 565.99, 'Phone', 'Oneplus');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (502, 202, 'S22', 600.99, 'Phone', 'Samsung');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (503, 203, '13 pro max', 767.99, 'Phone', 'Apple');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (504, 204, 'Google pixel 6', 800.59, 'Phone', 'Android');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (505, 205, 'Experia', 365.78, 'Phone', 'Oneplus');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (506, 206, 'Nord N200', 400.87, 'Phone', 'Samsung');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (507, 207, 'P50 pro', 450.98, 'Phone', 'Samsung');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (508, 208, 'G8 Plus', 380.87, 'Phone', 'Android');
INSERT INTO Product (Vendor_ID, Order_ID, Product_Name, Price, Category, Brand) VALUES (509, 209, 'ThinQ', 500.78, 'Phone', 'LG');

-- Insert the Review table records
INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (101, 301, 4.5, 'Great product, highly recommended', '2023-01-19', 12);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (102, 302, 3.0, 'Decent quality, but could be better', '2023-10-02', 5);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (103, 303, 5.0, 'Exceptional product, exceeded my expectation', '2023-04-26', 2);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (104, 304, 4.0, 'Good value for price', '2023-09-07', 8);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (105, 305, 2.5, 'Average product, but nothing special', '2022-12-31', 3);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (106, 306, 4.7, 'Highly satisfied with the purchase!', '2023-07-18', 15);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (107, 307, 3.5, 'Decent product, with minor flaws', '2023-02-18', 6);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (108, 308, 4.8, 'Impressive quality and fast delivery.', '2023-10-01', 18);

INSERT INTO Review (Customer_ID, Product_ID, Rating, Review_Text, Review_Date, Helpfulness_Count) 
VALUES (109, 309, 1.9, 'Not satisfied with the product', '2023-10-07', 3);

-- Insert the Payment table records
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (201, '2023-03-12', 'Paid', 'Credit', 900);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (202, '2021-08-15', 'Paid', 'Debit', 800);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (203, '2022-07-21', 'Cancelled', 'Bitcoin', 600);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (204, '2023-09-17', 'Paid', 'Credit', 1100);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (205, '2002-01-08', 'Paid', 'Debit', 900);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (206, '2022-06-15', 'Cancelled', 'Bitcoin', 500);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (207, '2019-04-12', 'Cancelled', 'Debit', 1300);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (208, '2023-09-25', 'Paid', 'Credit', 1200);
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (209, '2022-11-28', 'Paid', 'Cash', 1000);  
INSERT INTO Payment (Order_ID, Payment_Date, Payment_Status, Payment_Method, Amount) VALUES (210, '2023-05-18', 'Paid', 'Credit', 1400); 

