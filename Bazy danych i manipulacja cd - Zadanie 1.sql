-- 1.Stwórz Bazę Pracownicy

CREATE DATABASE Pracownicy;

-- 2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs
-- 3. Każdą tabelę uzupełnij danymi z tabeli z załącznika. Tabelę z danymi utworzyłem za pomocą Wizard.   

ALTER TABLE Pracownicy MODIFY COLUMN ID INTEGER PRIMARY KEY;
ALTER TABLE Pracownicy MODIFY COLUMN Imie TEXT NOT NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Nazwisko TEXT NOT NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Wiek INTEGER NOT NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Kurs TEXT NOT NULL;

-- 4. Wyświetl listę pracowników starszych niż 30 lat.

SELECT * FROM Pracownicy
WHERE Wiek > 30;

-- 5. Wyświetl listę pracowników młodszych niż 30 lat.

SELECT * FROM Pracownicy
WHERE Wiek < 30;

-- 6. Wyświetl listę pracowników, których nazwisko zaczyna się na „K” i kończy na „ki”

SELECT * FROM Pracownicy
WHERE Nazwisko like 'K%ki';

-- 7. Zmień nazwę kolumny „ID” na „NR”

ALTER TABLE Pracownicy RENAME COLUMN ID to NR;

-- 8. Wyświetl pozycje, w których są puste pola.

SELECT * FROM Pracownicy
WHERE NR IS NULL AND Imie IS NULL AND Nazwisko IS NULL AND Wiek IS NULL AND Kurs IS NULL;

-- 9. Wyświetl wszystkich pracowników z kursu „Java”.

SELECT * FROM Pracownicy
WHERE Kurs = 'Java';