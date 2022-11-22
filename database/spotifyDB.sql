SHOW DATABASES;
CREATE DATABASE spotify_db;
DROP DATABASE spotify_db;

USE spotify_db;

-- ****TABLE(users) 
CREATE TABLE users(
UserId INT AUTO_INCREMENT,
Name varchar(20),
Email varchar(50),
Contect varchar(10),
primary key (UserId)
); 


SHOW TABLES;
DESC users;
DROP TABLE users;

INSERT INTO users(Name,Email,Contect) VALUES("adarsh","adarsh@gamil.com","6845454548"),
("gourab","gourab@gamil.com","6845454548"),
("priya","priya@gamil.com","9s45454548"),
("bhakti","bhakti@gamil.com","8645454548"),
("sounak","sounak@gamil.com","9545454548");

SELECT * FROM users;
-- ******TABLE (playlist) 
CREATE TABLE playlists(
PlaylistId int,
UserId int,
Title varchar(20),
Author varchar(20),
Total_Tracks varchar(10),
Language varchar(20),
primary key (PlaylistId),
foreign key (UserId) references users(UserId)
); 

SHOW TABLES;
DESC playlists;
DROP TABLE playlist;
INSERT INTO playlists(PlaylistId,UserId,Title,Author,Total_Tracks,Language) VALUES(101,1,"Hindi songs","arjeet","10","Hindi"),
(102,2,"English songs","kabeer","15","English"),
(104,3,"Tamil songs","ravi","12","Tamil"),
(108,4,"Marathi songs","gaurab","8","Marathi");

SELECT * FROM playlists;
TRUNCATE TABLE playlists;
SELECT * FROM users;

-- ******TABLE (track) 
CREATE TABLE tracks(
TrackId VARCHAR(20),
PlaylistId INT,
TrackName VARCHAR(20),
Artist VARCHAR(20),
Status ENUM("like","dislike"),
PRIMARY KEY (TrackId),
FOREIGN KEY (PlaylistId) references playlists(PlaylistId)
);

SHOW TABLES;
DESC tracks;
DROP TABLE tracks;

-- INSERT tracks
INSERT INTO tracks(TrackId,PlaylistId,TrackName,Artist,Status) value("ax10",101,"hawaye","arjit singh","like"),
("ax12",104,"timit","vijay","dislike");

SELECT * FROM tracks;
SELECT trackName from tracks where Artist = "arjit singh";

-- ***********SQL MIN() and MAX() Functions***
SELECT min(UserId) as minimum_userId FROM playlists;
SELECT max(UserId) FROM playlists;

--  SQL COUNT(), AVG() and SUM() Functions 
SELECT COUNT(UserId) FROM users;
SELECT AVG(Total_Tracks) FROM playlists;
SELECT SUM(Total_Tracks) FROM playlists;

-- left join;
-- all records from the left table(users) AND  the matching records from the right table (playlists).
SELECT Name,Email FROM users
LEFT JOIN playlists ON users.UserId = playlists.UserId;

-- right join
-- all records from the right table(users) AND  the matching records from the left table (playlists).
SELECT Name,Email FROM users
right JOIN playlists ON users.UserId = playlists.UserId;

-- inner join
-- selects records that have matching values in both tables 
SELECT Name,Email FROM users
INNER JOIN playlists ON users.UserId = playlists.UserId;
 
select * from playlists order by Title;
SELECT Name FROM users;
SELECT PlaylistId FROM playlists;
select UserId from playlists;
select distinct UserId from playlists;

-- order by
select TrackName from Tracks GROUP BY TrackName;
select TrackName from Tracks GROUP BY TrackName ORDER BY TrackName desc;

-- order by
select TrackName from Tracks ORDER BY TrackName;