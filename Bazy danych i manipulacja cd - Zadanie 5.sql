-- 1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
-- 2. Stwórz Tabelę Pracownicy_4 z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs

CREATE TABLE Pracownicy_4
(
 ID INTEGER PRIMARY KEY,
 Imie TEXT NOT NULL,
 Nazwisko TEXT NOT NULL,
 Wiek INTEGER NOT NULL,
 Kurs TEXT NULL
);

-- 3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj. 
--    Dane do tabeli załączyłem przez Wizard.

-- 4. Wyświetl listę pracowników wg kolumny Imię, eliminując powtarzające się pozycje.

SELECT DISTINCT Imie FROM Pracownicy_4;

-- 5. Wyświetl listę pracowników wg kolumny Nazwisko eliminując powtarzające się pozycje.

SELECT DISTINCT Nazwisko FROM Pracownicy_4;

-- 6. Wyświetl kursy prowadzone przez pracowników o Nazwisku: „Kowalczyk”.

SELECT Kurs FROM Pracownicy_4
WHERE Nazwisko = 'Kowalczyk';

-- 7. Wyświetl listę pracowników, dla których nie znamy wieku.

SELECT * FROM Pracownicy_4
WHERE Wiek IS NULL;

-- 8. Wyświetl wiek pracowników o Imieniu „Patryk”.

SELECT Wiek FROM Pracownicy_4
WHERE Imie = 'Patryk';

-- 9. Zmień nazwę tabeli z  „Pracownicy_4” na „Mentorzy”.

ALTER TABLE Pracownicy_4 RENAME to Mentorzy;