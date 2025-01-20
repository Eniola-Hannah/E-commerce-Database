CREATE DATABASE E_commerce;

USE E_commerce;

CREATE TABLE Customers(
Customer_id INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Email VARCHAR(50) NOT NULL,
Phone_Number VARCHAR(20),
Address VARCHAR(100));

DESCRIBE Customers;