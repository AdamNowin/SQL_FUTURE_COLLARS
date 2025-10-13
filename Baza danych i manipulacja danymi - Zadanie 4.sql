CREATE DATABASE Lista_Pracowników;
CREATE TABLE Lista_Pracowników.Pracownicy
(
 ID INTEGER PRIMARY KEY,
 Imię TEXT NOT NULL,
 Nazwisko TEXT NOT NULL,
 Stanowisko TEXT NOT NULL,
 Dział TEXT NOT NULL
);
INSERT INTO Lista_Pracowników.Pracownicy
VALUES (1, "Adam", "Kubek", "Dyrektor", "Sprzedaż"),
	   (2, "Janek", "Trawa", "Księgowy", "Księgowość"),
	   (3, "Maria", "Świeczka", "Księgowa", "Księgowość"),
	   (4, "Kasia", "Torba", "Analityk ds. sprzedaży", "Sprzedaż"),
	   (5, "Wacek", "Klucz", "Deweloper", "Rozwój");
SELECT * FROM Lista_Pracowników.Pracownicy;
ALTER TABLE Lista_Pracowników.Pracownicy
ADD COLUMN Data_zatrudnienia DATE;
INSERT INTO Lista_Pracowników.Pracownicy
VALUES (6, "Waldek", "Ćwiek", "Deweloper", "Rozwój", "2000-01-06");
SELECT * FROM Lista_Pracowników.Pracownicy;
UPDATE Lista_Pracowników.Pracownicy
SET Data_zatrudnienia = "2000-01-01"
WHERE ID = 1;
UPDATE Lista_Pracowników.Pracownicy
SET Data_zatrudnienia = "2000-01-02"
WHERE ID = 2;
UPDATE Lista_Pracowników.Pracownicy
SET Data_zatrudnienia = "2000-01-03"
WHERE ID = 3;
UPDATE Lista_Pracowników.Pracownicy
SET Data_zatrudnienia = "2000-01-04"
WHERE ID = 4;
UPDATE Lista_Pracowników.Pracownicy
SET Data_zatrudnienia = "2000-01-05"
WHERE ID = 5;
SELECT * FROM Lista_Pracowników.Pracownicy;