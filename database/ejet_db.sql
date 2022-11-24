SHOW DATABASES;
CREATE DATABASE ejet;
SHOW DATABASES;
USE ejet;
DROP DATABASE ejet;

# stored Procedures 
CALL SelectAllEmployee;

# stored Procedures (IN)
CALL SelectEmployee(1);

# stored Procedures (OUT)
CALL SelectHigestSalary(@MaxSalary);
SELECT @MaxSalary; -- its value to a session variable @MaxSalary in the CALL statement as

# stored Procedures (IOUT)
SHOW PROCEDURE STATUS WHERE db = 'ejet';  


#subquries
SELECT EngineerName, Salary FROM Employee Where EmpId = (SELECT EmpId FROM EmpDeprtment Where DepartName= "engineering"); 

CREATE TABLE Employee(
EmpId INT AUTO_INCREMENT,
EngineerName VARCHAR(25),
MobileNo VARCHAR(10),
Qualification VARCHAR(25),
Experiance VARCHAR(25),
Salary INT,
PRIMARY KEY (EmpId)
);
SHOW TABLES;
DROP TABLE Employee;

INSERT INTO Employee(EngineerName,MobileNo,Qualification,Experiance,Salary) VALUES ("Gourab","656521465","B.tech","2",20000),
("sounak","856521465","M.tech","1",30000),
("Bhakti","956521465","BSC","2",45000);

SELECT * FROM Employee;

CREATE TABLE EmpDeprtment(
DeprtId INT PRIMARY KEY UNIQUE,
EmpId INT,
DepartName VARCHAR(25),
DepartLeed VARCHAR(25),
FOREIGN KEY (EmpId) REFERENCES Employee(EmpId)
);

DESC EmpDeprtment;
DROP TABLE EmpDeprtment;
INSERT INTO EmpDeprtment(DeprtId,EmpId,DepartName,DepartLeed) VALUES(105,3,"operation","karan"),
(101,4,"operation","ravipati");

SELECT * FROM EmpDeprtment;
SELECT DepartName from EmpDeprtment where EmpId = 2;
UPDATE EmpDeprtment SET EmpId =1 where DeprtId = 104;

# functions
SELECT MAX(Salary) FROM Employee;
SELECT MIN(Salary) FROM Employee;
SELECT AVG(Salary) FROM Employee;
SELECT Sum(Salary) FROM Employee;
SELECT COUNT(Salary) FROM Employee;

# order by
SELECT Qualification FROM Employee ORDER BY EngineerName;
SELECT Salary,EngineerName FROM Employee ORDER BY Salary DESC;

# group by
SELECT DepartName FROM EmpDeprtment  GROUP BY DepartName;

#join
-- Left join
SELECT EngineerName,MobileNo FROM Employee
LEFT JOIN EmpDeprtment ON Employee.EmpId = EmpDeprtment.EmpId;

-- Right join
SELECT EngineerName,MobileNo FROM Employee
RIGHT JOIN EmpDeprtment ON Employee.EmpId = EmpDeprtment.EmpId;

# inner join
SELECT EngineerName,MobileNo FROM Employee
INNER JOIN EmpDeprtment ON Employee.EmpId = EmpDeprtment.EmpId;