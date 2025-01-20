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

CREATE TABLE Order_Items(
Order_item_id INT AUTO_INCREMENT PRIMARY KEY,
Order_id INT NOT NULL,
Product_id INT NOT NULL,
Quantity INT,
Price INT,
FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id));

INSERT INTO Customers(Name, Email, Phone_Number, Address) VALUES
("Eniola Hannah", "eniola.hannah@gmail.com", "09054866796", "ojoo area, Ibadan"),
("Fatima Oyindamola", "o.fatima@gmail.com", "08076543212", "ogo oluwa area, Oshogbo"),
("Glory Kolawole", "glorykolawole@gmail.com", "0709875432", "Oshodi, Lagos"),
("Amoo Adeola", "aadeola@gmail.com", "09123456789", "Lekki - Phase 1, Lagos"),
("Ogunleye Kolade", "ogunleye.k@gmail.com", "08132547698", "Igbo-sai area, Ogbomosho"),
("Joel Emmanuel", "Jemmanuel@gmail.com", "08123456789", "agbowo area, Ibadan"),
("Ololade Victor", "olavictor@gmail.com", "0711323452354", "Gwarki area, Abuja"),
("Femi Gabriel", "femi.gabriel@gmail.com", "08076567843", "Gwagwalada area, Abuja"),
("Nathan Oladipo", "oladipo.nathan@gmail.com", "0705643211223", "Grek area, Jos"),
("Betty Clement", "cbetty@gmail.com", "08076879809", "Gospel area, Ibadan");
SELECT * FROM Customers;