SHOW databases;
CREATE DATABASE testDB;
USE testDB;
CREATE TABLE Customers (
    CustomerID int AUTO_INCREMENT,
    CustomerName varchar(255),
    ContactName varchar(255),
    Address varchar(255),
    City varchar(255),
    PostalCode varchar(255),
    Country varchar(255),
    primary key (CustomerID)
);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Alfreds Futterkiste ','Maria Anders ','Obere Str. 57 ','Berlin ','12209','Germany '),
 ('Ana Trujillo Emparedados y helados ','Ana Trujillo ','Avda. de la Constitución 2222 ','México D.F.','05021','Mexico '),
 ('Antonio Moreno Taquería ','Antonio Moreno ','Mataderos 2312 ','México D.F.','05023 ','Mexico');

show tables;
select * from Customers;


desc Customers;
drop table Customers;
truncate table Customers;

CREATE TABLE Orders (
    OrderID int AUTO_INCREMENT,
    CustomerID int,
    OrderDate varchar(255),
    ShipperID int,
    foreign key (CustomerID) references customers(CustomerID)
);

-- Left join
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- Right join
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name; 

DROP TABLE FRIENDS;
show tables;
CREATE TABLE FRIENDS (
Id INT UNIQUE AUTO_INCREMENT NOT NULL,
Name varchar(255),
Email varchar(255),
City varchar(255),
Mobile VARCHAR(10),
primary key (Mobile)
);

DESC friends;
SELECT * FROM friends;
-- constrains 
insert into friends (Name,Email,City,Mobile)values("ram","a@gmail.com","inore","9556512574");







