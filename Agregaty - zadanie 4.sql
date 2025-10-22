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

-- a. Rozłóż datę pokazaną w kolumnie start_date na trzy kolumny: rok, miesiąc, dzień.

SELECT 
  start_date,
  YEAR(start_date) AS rok,
  MONTH(start_date) AS miesiąc,
  DAY(start_date) AS dzień
FROM batman;

-- b. Wyświetl kolumnę start_date oraz kolumnę final_date, która wyświetli datę o 3 dni późniejszą, niż data w start_date.

SELECT 
  start_date,
  DATE_ADD(start_date, INTERVAL 3 DAY) AS final_date
FROM batman;

-- c. Wyświetl dzisiejszą datę.

SELECT CURDATE() AS dzisiejsza_data;

-- d. Wyświetl nazwę obecnego miesiąca.

SELECT MONTHNAME(CURDATE()) AS nazwa_miesiąca;

-- e. Wyświetl start_date, a następnie kolumny określające: numer tygodnia, nazwę miesiąca, kwartał, numer dnia w roku.

SELECT 
  start_date,
  WEEK(start_date) AS numer_tygodnia,
  MONTHNAME(start_date) AS nazwa_miesiąca,
  QUARTER(start_date) AS kwartał,
  DAYOFYEAR(start_date) AS dzien_roku
FROM batman;