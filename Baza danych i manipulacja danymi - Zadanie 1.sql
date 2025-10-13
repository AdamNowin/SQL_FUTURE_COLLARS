CREATE DATABASE SQL_Future_Collars;
CREATE TABLE SQL_Future_Collars.Biblioteczka 
(
ID INTEGER,
Tytuł TEXT,
Data_Zakupu DATE
);
INSERT INTO SQL_Future_Collars.Biblioteczka
VALUES (1, "Hobbit", "2000-01-01");
SELECT * FROM SQL_Future_Collars.Biblioteczka;
INSERT INTO SQL_Future_Collars.Biblioteczka
VALUES (2, "Harry Potter", "2000-02-01"),
       (3, "Biblia", "2000-03-01");
UPDATE SQL_Future_Collars.Biblioteczka
SET Tytuł = "Biblia", Data_Zakupu = "2000-03-01"
WHERE ID = 1;
UPDATE SQL_Future_Collars.Biblioteczka
SET Tytuł = "Hobbit", Data_Zakupu = "2000-01-01"
WHERE ID = 3;
ALTER TABLE SQL_Future_Collars.Biblioteczka
ADD COLUMN Autor TEXT;
UPDATE SQL_Future_Collars.Biblioteczka
SET Autor = "God"
WHERE ID = 1;
UPDATE SQL_Future_Collars.Biblioteczka
SET Autor = "J.K. Rowling"
WHERE ID = 2;
UPDATE SQL_Future_Collars.Biblioteczka
SET Autor = "J.R.R. Tolkien"
WHERE ID = 3;
DELETE FROM SQL_Future_Collars.Biblioteczka
WHERE ID = 1;
DELETE FROM SQL_Future_Collars.Biblioteczka
WHERE ID = 2;
SELECT * FROM SQL_Future_Collars.Biblioteczka;