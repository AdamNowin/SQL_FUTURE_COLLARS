CREATE DATABASE aggregates;
USE aggregates;
CREATE TABLE batman 
(
 id INTEGER PRIMARY KEY,
 first_name TEXT,
 last_name TEXT,
 sex CHAR(1),
 age INTEGER,
 price DOUBLE,
 start_date DATE,
 gift TEXT
);
INSERT INTO batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka');
INSERT INTO batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- a. Policz, ile jest rekordów w tabeli (po id).

SELECT COUNT(id)
FROM batman;

-- b. Policz, ile jest rekordów z wiekiem.

SELECT COUNT(age) AS ilosc_rekordow_wiek
FROM batman
WHERE age IS NOT NULL;

-- c. Ilu mężczyzn ma więcej niż 40 lat?

SELECT sex, 
COUNT(*) AS wiecej_niz_40
FROM batman
WHERE age > 40
GROUP BY sex;

-- d. Oblicz sumę wszystkich cen.

SELECT SUM(price) AS suma_cen
FROM batman;

-- e. Oblicz łączny wiek kobiet.

SELECT SUM(age) AS laczny_wiek_kobiet
FROM batman
WHERE sex like 'F';

-- f. Podaj łączną wartość komputera i okna.

SELECT SUM(price) AS laczna_wartosc_komputer_okno
FROM batman
WHERE gift IN ('komputer', 'okno');

-- g. Podaj maksymalną cenę.

SELECT MAX(price) AS maksymalna_cena
FROM batman;

-- h. Podaj najpóźniejszą datę

SELECT MAX(start_date) as najpozniejsza_data
FROM batman;

-- i. Podaj nazwisko rozpoczynające się literą, która jest najbliżej końca alfabetu

SELECT last_name
FROM batman
ORDER BY last_name DESC
LIMIT 1;

-- j. Podaj minimalną cenę.

SELECT MIN(price) AS minimalna_cena
FROM batman;

-- k. Podaj najwcześniejszą datę

SELECT MIN(start_date) as najwczesniejsza_data
FROM batman;

-- l. Podaj nazwisko rozpoczynające się literą, która jest najbliżej początku alfabetu

SELECT last_name
FROM batman
ORDER BY last_name ASC
LIMIT 1;

-- m. Jednocześnie podaj cenę minimalną oraz maksymalną. Nadaj odpowiednie aliasy.

SELECT MIN(price) AS minimalna_cena,
       MAX(price) AS maksymalna_cena
FROM batman;

-- n. Oblicz różnicę pomiędzy ceną maksymalną, a minimalną.

SELECT MAX(price) - MIN(price) AS Roznica_Cen
FROM batman;

-- o. Oblicz średnią wieku.

SELECT ROUND(AVG(age),2) AS srednia_wieku
FROM batman;

-- p. Oblicz średnią wieku za pomocą COUNT oraz SUM.

SELECT ROUND(SUM(age) / COUNT(age),2) AS srednia_wieku
FROM batman;

-- q. Oblicz średni wiek dla kobiet oraz średni wiek dla mężczyzn.

SELECT
      sex,
      ROUND(AVG(age),2) AS srednia_wieku_plec
FROM batman
GROUP BY sex;