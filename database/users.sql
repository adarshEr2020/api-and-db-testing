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
DROP TABLE Persons;
INSERT INTO Persons (PersonID,LastName,FirstName,Address,City) 
VALUES (3,'kkr','Kavi','UP','gaziabad'),
(4,'kr','adarsh','CG','raipur'),
(5,'nr','ravi','MH','pune'),
(6,'gr','kamal','MP','bhopal'),
(7,'kt','gaorab','MP','indore'),
(8,'kk','Kavi','SA','mumbai');

SELECT * FROM Persons;
TRUNCATE Persons;
ALTER TABLE Persons ADD Contact VARCHAR(255);
DESC Persons;
SELECT * FROM Persons;
UPDATE Persons SET Contact='8945124541' WHERE PersonID = 2;
DROP TABLE Persons;
DELETE FROM Persons WHERE PersonID= 6;
TRUNCATE Persons;
SELECT FirstName FROM Persons WHERE PersonID  = 2; 

SELECT * FROM Persons;

UPDATE Persons SET LastName="prajapati",FirstName="adarsh",Address="bhopal",City="bhopal"  WHERE PersonId = 4;
-- create table (Playlist table )
CREATE TABLE Playlist (
    PlaylistID int,
	PersonID int,
    Title varchar(255),
    Author varchar(255),
    Descption varchar(255),
    Total int(10),
    PRIMARY KEY (PlaylistID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
DESC Playlist;
DROP TABLE Playlist;
SELECT * FROM Playlist;
INSERT INTO Playlist (PlaylistID,PersonID,Title,Author,Descption,Total) VALUES (3,3,"New Bollywood song","adarsh"," bollywood songs",10),
(4,5,"New Tamil song","gourab","Tamil songs",8),
(6,6,"New Hindi song","priya","Hindi songs ",6),
(7,7,"New Marathi song","bhakti","Marathi songs",15),
(8,8,"New Bollywood song","adarsh","songs bollywood",9);

TRUNCATE Playlist;
-- SELECT Playlist.Title, Persons.PersonID FROM Persons
SELECT * FROM playlist
LEFT JOIN Persons ON Persons.PersonID  = Playlist.PlaylistID;