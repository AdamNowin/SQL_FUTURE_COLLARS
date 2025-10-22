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

-- a. Podaj średnią wieku. Podaj zaokrąglony wynik do dwóch miejsc po przecinku.

SELECT ROUND(AVG(age),2) AS srednia_wieku
FROM batman;

-- b. Wyświetl wartość bezwzględną liczby -3.

SELECT ABS(-5) AS wartosc_bezwzgledna;

-- c. Wyświetl wynik mnożenie 2 * 3

SELECT 2*3 AS wynik_mnozenia;

-- d. Wyświetl wynik dzielenia 6 przez 2

SELECT ROUND((6/2),0) AS wynik_dzielenia;