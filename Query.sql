CREATE DATABASE E_commerce;

USE E_commerce;

CREATE TABLE Customers(
Customer_id INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Email VARCHAR(50) NOT NULL,
Phone_Number VARCHAR(20),
Address VARCHAR(100));
DESCRIBE Customers;

CREATE TABLE Products(
Product_id INT PRIMARY KEY,
Product_name VARCHAR(50) NOT NULL,
Category VARCHAR(50),
Price INT NOT NULL,
Stock_quantity INT);
DESCRIBE Products;

CREATE TABLE Orders(
Order_id INT AUTO_INCREMENT PRIMARY KEY,
Customer_id INT NOT NULL,
Order_date DATE,
Total_amount INT,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id));
DESCRIBE Orders;