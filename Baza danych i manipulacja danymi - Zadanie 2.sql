CREATE DATABASE School_Coding;
CREATE TABLE School_Coding.Mentors
(
 ID INTEGER PRIMARY KEY,
 Imię TEXT NOT NULL,
 Nazwisko TEXT NOT NULL,
 Specjalizacja TEXT NOT NULL,
 Data_zatrudnienia DATE NOT NULL,
 Data_zwolnienia DATE NULL
 );
 INSERT INTO School_Coding.Mentors
 VALUES (1, "Jacek", "Bąk", "Mag", "2000-01-01", "2020-01-01"),
        (2, "Marek", "Kowalski", "Bard", "2000-01-02", "2020-01-02"),
        (3, "Ania", "Kwiatkowska", "Druid", "2000-01-03", NULL),
        (4, "Marcin", "Daniec", "Łowca", "2000-01-04", NULL),
        (5, "Maria", "Kwiatek", "Złodziej", "2000-01-05", "2020-01-05"),
        (6, "Patrycja", "Grzybek", "Uzdrowicielka", "2000-01-06", "2020-01-06"),
        (7, "Wioletta", "Willas", "Czarodziejka", "2000-01-07", NULL),
        (8, "Andżelika", "Wesoła", "Wojowniczka", "2000-01-08", NULL),
        (9, "Paulina", "Martwa", "Kapłanka", "2000-01-09", NULL),
        (10, "Paweł", "Żywy", "Alchemik", "2000-01-10", NULL);
SELECT * FROM School_Coding.Mentors;
UPDATE School_Coding.Mentors
SET Nazwisko = "Gwiazda"
WHERE ID = 5;
SELECT Nazwisko FROM School_Coding.Mentors
WHERE Nazwisko = "Gwiazda";
UPDATE School_Coding.Mentors
SET Specjalizacja = "Łotrzyk"
WHERE ID = 9;
SELECT Specjalizacja FROM School_Coding.Mentors
WHERE Specjalizacja = "Łotrzyk";
ALTER TABLE School_Coding.Mentors
ADD COLUMN Wynagrodzenie INTEGER NULL;
UPDATE School_Coding.Mentors
SET Wynagrodzenie = 1000
WHERE ID = 1;
UPDATE School_Coding.Mentors
SET Wynagrodzenie = 1000
WHERE ID = 2;
UPDATE School_Coding.Mentors
SET Wynagrodzenie = 1000
WHERE ID = 3;
SELECT * FROM School_Coding.Mentors
LIMIT 3;