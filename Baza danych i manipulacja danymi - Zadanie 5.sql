CREATE DATABASE Moje_zainteresowania;
CREATE TABLE Moje_zainteresowania.Zainteresowania
(
 ID INTEGER NULL,
 Nazwa TEXT NULL,
 Opis TEXT NULL,
 Data_realizacji DATE NULL
);
INSERT INTO Moje_zainteresowania.Zainteresowania (Nazwa, Opis)
VALUES ("literauta", "czytanie książek"),
       ("sport", "koszykówka"),
       ("muzyka", "gra na gitarze"),
       ("sporty ekstremalne", "wspinaczka górska"),
       ("film", "chodzenie do kina");
SELECT * FROM Moje_zainteresowania.Zainteresowania;
INSERT INTO Moje_zainteresowania.Zainteresowania
VALUES (1234, "sztuka", "malowanie", "2000-01-01");
UPDATE Moje_zainteresowania.Zainteresowania
SET ID = 4, Data_realizacji = "2000-01-01"
WHERE Nazwa = "sporty ekstremalne";
SELECT * FROM Moje_zainteresowania.Zainteresowania;
DELETE FROM Moje_zainteresowania.Zainteresowania
WHERE ID is null and Data_realizacji is null;
SELECT * FROM Moje_zainteresowania.Zainteresowania;