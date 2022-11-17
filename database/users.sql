SHOW DATABASES;
CREATE DATABASE users;
DROP DATABASE users;
USE users;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255),
    PRIMARY KEY (PersonID)
);
show tables;
DESC Persons;
INSERT INTO Persons (PersonID,LastName,FirstName,Address,City) 
VALUES (3,'kkr','Kavi','mp','indore'),
(4,'kkr','Kavi','mp','indore'),
(5,'kkr','Kavi','mp','indore'),
(6,'kkr','Kavi','mp','indore'),
(7,'kkr','Kavi','mp','indore'),
(8,'kkr','Kavi','mp','indore');

SELECT * FROM Persons;
ALTER TABLE Persons ADD Contact VARCHAR(255);
DESC Persons;
SELECT * FROM Persons;
UPDATE Persons SET Contact='8945124541' WHERE PersonID = 2;
DROP TABLE Persons;
SELECT FirstName FROM Persons WHERE PersonID  = 2; 