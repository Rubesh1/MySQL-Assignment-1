CREATE TABLE MarkSheet (`Id` INT, `Name` VARCHAR(255), `subject` ENUM ('Maths'), Mark INT (3));
ALTER TABLE MarkSheet MODIFY COLUMN Id INT(2);
ALTER TABLE MarkSheet ADD COLUMN Pass_Status CHAR;
ALTER TABLE MarkSheet DROP COLUMN Pass_Status;
ALTER TABLE MarkSheet ADD COLUMN Pass_Status CHAR;
INSERT INTO MarkSheet (Id, Name, subject, Mark, Pass_Status) VALUES (1,'RAM','Maths',99,'Y'),(2,'SITHA','Maths',90,'Y'),(3,'RAVAN','Maths',95,'Y'),(4,'RAMU','Maths',80,'Y');
DELETE FROM MarkSheet WHERE Id = 1 AND Mark = 90;
SELECT DISTINCT Name FROM MarkSheet;
SELECT * FROM MarkSheet ORDER BY Id desc;
SELECT * FROM MarkSheet ORDER BY Id desc LIMIT 2;
SELECT * FROM MarkSheet ORDER BY Id desc LIMIT 2 OFFSET 1;
SELECT * FROM MarkSheet WHERE Name = 'RAM' AND subject = 'Maths';
SELECT * FROM MarkSheet WHERE Name = 'RAM' OR Id = 2;
SELECT * FROM MarkSheet WHERE Name in ('RAM');
SELECT * FROM MarkSheet WHERE Name NOT in ('SOM');
SELECT * FROM MarkSheet WHERE Id BETWEEN 1 AND 3;
SELECT * FROM MarkSheet WHERE Name LIKE '%A%';