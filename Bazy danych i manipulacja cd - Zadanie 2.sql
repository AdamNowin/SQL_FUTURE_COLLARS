-- 1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
-- 2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs
-- 3. Każdą tabelę uzupełnij danymi z załącznika lub zaktualizuj. Tabelę z danymi utworzyłem za pomocą Wizard.

ALTER TABLE Pracownicy MODIFY COLUMN ID INTEGER PRIMARY KEY;
ALTER TABLE Pracownicy MODIFY COLUMN Imie TEXT NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Nazwisko TEXT NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Wiek INTEGER NULL;
ALTER TABLE Pracownicy MODIFY COLUMN Kurs TEXT NULL;

UPDATE Pracownicy
SET Nazwisko = null
WHERE ID = 6;

UPDATE Pracownicy
SET Nazwisko = null
WHERE ID = 7;

UPDATE Pracownicy
SET Imie = null
WHERE ID = 9;

UPDATE Pracownicy
SET Kurs = null
WHERE ID = 11;

UPDATE Pracownicy
SET Imie = null
WHERE ID = 16;

UPDATE Pracownicy
SET Nazwisko = null
WHERE ID = 19;

-- 4. Wyświetl listę pracowników w wieku 28 lat.

SELECT * FROM Pracownicy
WHERE Wiek = 28;

-- 5. Wyświetl listę pracowników w wieku 30 lat i młodszych.

SELECT * FROM Pracownicy
WHERE Wiek <= 30;

-- 6. Wyświetl listę pracowników, których nazwisko zawiera „ski”.

SELECT * FROM Pracownicy
WHERE Nazwisko like '%ski%';

-- 7. Wyświetl listę pracowników z ID: 1,4,7,18,20.

SELECT * FROM Pracownicy
WHERE ID = 1 OR ID = 4 OR ID = 7 OR ID = 18 OR ID = 20;

-- 8. Wyświetl listę pracowników z wprowadzonymi kompletnymi danymi.

SELECT * FROM Pracownicy
WHERE ID is NOT NULL AND Imie is NOT NULL AND Nazwisko is NOT NULL AND Wiek is NOT NULL AND Kurs is NOT NULL;

-- 9. Wyświetl wszystkich pracowników, którzy nie prowadzą kursu DS

SELECT * FROM Pracownicy
WHERE Kurs != 'DS.';
