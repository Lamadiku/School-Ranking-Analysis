--1. 

CREATE TABLE students(
StudentId INT NOT NULL,
FirstName VARCHAR (50) NOT NULL,
LastName VARCHAR (50) NOT NULL,
Class VARCHAR (10),
Age INT,
PRIMARY KEY ('StudentId')
);

--2.

CREATE TABLE marksheet(
Score INT,
Year INT,
Ranking INT,
Class VARCHAR (10),
StudentId INT,
PRIMARY KEY ('StudentId'),
FOREIGN KEY ('Class') REFERENCES students('Class')
);

--3.1

INSERT INTO students (StudentId, FirstName, LastName, Class, Age)
VALUES
(201,'Dave', 'Finn ',' History ',14),
(202,'Katherine', 'Power ',' Gym ',16),
(203,'John', 'Malone ',' Algebra ',16),
(204,'Samuel', 'Bradley ',' Geometry ',18),
(205,'Hope', 'Taya ',' English ',15),
(206,'Vladimir', 'Morakov ',' English ',16),
(207,'Wild', 'One ',' English ',15),
(208,'Caryn', 'Wise ',' Algebra ',15),
(209,'Otto', 'Octavius ',' Geometry ',14),
(210,'Black', 'Cougar ',' Geometry ',15),
(211,'Sally', 'Avril ',' English ',14),
(212,'Nina', 'Mazursky ',' Algebra ',16),
(213,'Tubby', 'Watts ',' Gym ',15),
(214,'Mister', 'Magic ',' History ',16),
(215,'Jarras', 'Minion ',' History ',14),
(216,'Gunther', 'Van Horn ',' History ',16),
(217,'Esteban', 'Ortega ',' Algebra ',14),
(218,'Anakalak', 'Smith ',' Algebra ',16),
(219,'Rumaan', 'Harjavti ',' Algebra ',17),
(220,'Chantinelle', 'Murphy ',' Algebra ',18),
(221,'Augustus', 'James ',' History ',17),
(222,'Lucius', 'Gregory ',' English ',17),
(223,'Wire', 'Tap ',' History ',15),
(224,'Viktor', 'Burgos ',' Geometry ',17),
(225,'Hugh', 'Dare ',' History ',15),
(226,'William', 'Nasland ',' Geometry ',15),
(227,'Jeb', 'Turnbull ',' Algebra ',17),
(228,'Cyrus', 'Gold ',' Geometry ',16),
(229,'Pietro', 'Sapristi ',' Algebra ',18),
(230,'Henry', 'Enwhistle ',' History ',16),
(231,'Frederick', 'Tuckman ',' Geometry ',17),
(232,'Pyreus', 'Kril ',' Gym ',14);

--3.2

INSERT INTO marksheet (StudentId, Score, Year, Ranking, Class)
VALUES
(201,72,9,1,'History'),
(202,69,11,1,'Gym'),
(203,90,11,2,'Algebra'),
(204,95,12,1,'Geometry'),
(205,76,10,2,'English'),
(206,71,10,3,'English'),
(207,88,10,1,'English'),
(208,65,10,1,'Algebra'),
(209,64,9,1,'Geometry'),
(210,38,10,2,'Geometry'),
(211,58,9,1,'English'),
(212,100,11,1,'Algebra'),
(213,65,10,1,'Gym'),
(214,78,11,1,'History'),
(215,50,9,2,'History'),
(216,69,10,3,'History'),
(217,88,9,4,'Algebra'),
(218,61,11,3,'Algebra'),
(219,70,12,1,'Algebra'),
(220,54,12,4,'Algebra'),
(221,66,12,1,'History'),
(222,65,12,1,'English'),
(223,100,10,1,'History'),
(224,69,11,1,'Geometry'),
(225,74,10,2,'History'),
(226,73,10,1,'Geometry'),
(227,69,12,3,'Algebra'),
(228,67,11,2,'Geometry'),
(229,70,12,2,'Algebra'),
(230,78,11,2,'History'),
(231,69,12,2,'Geometry'),
(232,63,9,1,'Gym');


--4. the students table whose age is greater than or equal to 16 and has an English class

SELECT StudentId , FirstName 
FROM students s
WHERE Age >= 16 AND s.Class = " English "
GROUP BY StudentId;

--5. the details of every student from the marksheet table whose score is between 75 and 85

SELECT *
FROM marksheet m 
WHERE m.Score BETWEEN 75 AND 85;


--6. 

ALTER TABLE marksheet 
ADD COLUMN new_score INT;

UPDATE marksheet
SET new_score = Score + 5;

--7.
SELECT *
FROM marksheet m 
ORDER BY Score DESC;

--8. 
SELECT *
FROM students s 
INNER JOIN marksheet m ON s.StudentId = m.StudentId 
WHERE s.FirstName LIKE "A%"
GROUP BY s.StudentId;


