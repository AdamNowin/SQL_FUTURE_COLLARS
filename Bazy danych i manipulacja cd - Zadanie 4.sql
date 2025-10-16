-- 1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
-- 2. Stwórz Tabelę Pracownicy_3 z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs

CREATE TABLE Pracownicy_3
(
 ID INTEGER PRIMARY KEY,
 Imie TEXT NOT NULL,
 Nazwisko TEXT NOT NULL,
 Wiek INTEGER NOT NULL,
 Kurs TEXT NULL
);

-- 3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj. 
--    Dane do tabeli załączyłem przez Wizard.

-- 4. Wyświetl listę pracowników o Imieniu: Anna.

SELECT * FROM Pracownicy_3
WHERE Imie = 'Anna';

-- 5. Wyświetl listę pracowników z brakującą daną w kolumnie Imię.

SELECT * FROM Pracownicy_3
WHERE Imie IS NULL;

-- 6. Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat.

SELECT * FROM Pracownicy_3
WHERE Wiek BETWEEN 30 AND 40;

-- 7. Wyświetl wiek pracowników z ID od 1 do 7.

SELECT Wiek FROM Pracownicy_3
WHERE ID BETWEEN 1 AND 7;

-- 8. Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek.

SELECT * FROM Pracownicy_3
WHERE Wiek IS NULL;

-- 9. Zmień nazwę kolumny „Kurs” na „Szkolenie”.

ALTER TABLE Pracownicy_3
RENAME COLUMN Kurs to Szkolenie;