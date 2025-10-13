CREATE DATABASE Lista_Prezentów;
CREATE TABLE Lista_Prezentów.Prezenty_2020
(
 ID INTEGER PRIMARY KEY,
 Imię_obdarowanego TEXT NOT NULL,
 Pomysł_na_prezent TEXT NOT NULL,
 Cena INTEGER NOT NULL,
 Miejsce_zakupu TEXT NOT NULL
 );
 INSERT INTO Lista_Prezentów.Prezenty_2020
 VALUES (1, "Adam", "kubek", 15, "Allegro"),
        (2, "Janek", "czekolada", 10, "dom czekolady"),
        (3, "Maria", "t-shirt", 50, "odzieżowy"),
        (4, "Kasia", "torebka", 80, "odzieżowy"),
        (5, "Wacek", "kolczyki", 100, "jubiler");
SELECT * FROM Lista_Prezentów.Prezenty_2020;
UPDATE Lista_Prezentów.Prezenty_2020
SET Pomysł_na_prezent = "Rower"
WHERE ID = 3;
SELECT Pomysł_na_prezent FROM Lista_Prezentów.Prezenty_2020
WHERE Pomysł_na_prezent = "Rower";
DELETE FROM Lista_Prezentów.Prezenty_2020
WHERE ID = 1;
SELECT * FROM Lista_Prezentów.Prezenty_2020;
ALTER TABLE Lista_Prezentów.Prezenty_2020
DROP COLUMN Miejsce_zakupu;
SELECT Imię_obdarowanego FROM Lista_Prezentów.Prezenty_2020
WHERE ID = 3 or ID = 4 or ID = 5;
SELECT ID, Imię_obdarowanego FROM Lista_Prezentów.Prezenty_2020
WHERE ID = 3 or ID = 4 or ID = 5;