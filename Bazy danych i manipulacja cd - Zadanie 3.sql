-- 1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
-- 2. Stwórz Tabelę Pracownicy_2 z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs

CREATE TABLE Pracownicy_2
(
 ID INTEGER PRIMARY KEY,
 Imie TEXT NULL,
 Nazwisko TEXT NULL,
 Wiek INTEGER NULL,
 Kurs TEXT NULL
);

-- 3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj. 
--    Dane do tabeli załączyłem przez Wizard.

-- 4. Wyświetl listę pracowników o Nazwisku: KOWALCZYK.

SELECT * FROM Pracownicy_2
WHERE Nazwisko = 'Kowalczyk';

-- 5. Wyświetl listę pracowników w wieku od 30 lat do 40 lat.

SELECT * FROM Pracownicy_2
WHERE Wiek BETWEEN 30 AND 40;

-- 6. Wyświetl listę pracowników, których nazwisko nie zawiera „and”.

SELECT * FROM Pracownicy_2
WHERE Nazwisko NOT LIKE '%and%';

-- 7. Wyświetl listę pracowników z ID od 1 do 7.

SELECT * FROM Pracownicy_2
WHERE ID BETWEEN 1 AND 7;

-- 8. Wyświetl listę pracowników z brakującymi danymi.

SELECT * FROM Pracownicy_2
WHERE ID = '' OR Imie = '' OR Nazwisko = '' OR Wiek = '' OR Kurs = '';

-- 9. Wyświetl wszystkich pracowników, którzy nie prowadzą żadnego kursu.

SELECT * FROM Pracownicy_2
WHERE Kurs = '';