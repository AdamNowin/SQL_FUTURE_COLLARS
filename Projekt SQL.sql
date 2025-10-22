-- 1. Stwórz Bazę „Sklep odzieżowy”

CREATE DATABASE Sklep_Odzieżowy;
USE Sklep_Odzieżowy;

-- 2. Utwórz tabelę „Producenci” z kolumnami: id producenta, nazwa producenta, adres producenta, nip producenta, data podpisania umowy z producentem
-- Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Producenci (
    id_producenta INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_producenta VARCHAR(100) NOT NULL UNIQUE,
    adres_producenta VARCHAR(255) NOT NULL,
    nip_producenta CHAR(10) NOT NULL UNIQUE,
    data_podpisania_umowy_z_producentem DATE NOT NULL
);

-- 3. Utwórz tabelę „Produkty” z kolumnami: id produktu, id producenta, nazwa produktu, opis produktu, cena netto zakupu, cena brutto zakupu, cena netto sprzedaży, cena brutto sprzedaży, procent VAT sprzedaży
-- Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Produkty (
    id_produktu INT AUTO_INCREMENT PRIMARY KEY,
    id_producenta INT NOT NULL,
    nazwa_produktu VARCHAR(100) NOT NULL,
    opis_produktu TEXT,
    cena_netto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_netto_zakupu >= 0),
    cena_brutto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_brutto_zakupu >= 0),
    cena_netto_sprzedaży DECIMAL(10,2) NOT NULL CHECK (cena_netto_sprzedaży >= 0),
    cena_brutto_sprzedaży DECIMAL(10,2) NOT NULL CHECK (cena_brutto_sprzedaży >= 0),
    procent_VAT_sprzedaży DECIMAL(4,2) NOT NULL CHECK (procent_VAT_sprzedaży IN (5,8,23))
);

-- 4. Utwórz tabelę „Zamówienia” z kolumnami: id zamówienia, id klienta, id produktu, Data zamówienia
-- Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Zamówienia (
    id_zamówienia INT AUTO_INCREMENT PRIMARY KEY,
    id_klienta INT NOT NULL,
    id_produktu INT NOT NULL,
    data_zamówienia DATE NOT NULL
);

-- 5. Utwórz tabelę „Klienci” z kolumnami: id klienta, imię, nazwisko, adres
-- Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Klienci (
    id_klienta INT AUTO_INCREMENT PRIMARY KEY,
    imię VARCHAR(50) NOT NULL,
    nazwisko VARCHAR(50) NOT NULL,
    adres VARCHAR(255) NOT NULL
);

-- 6. Połącz tabele ze sobą za pomocą kluczy obcych: Produkty – Producenci, Zamówienia – Produkty, Zamówienia - Klienci

ALTER TABLE Produkty
ADD FOREIGN KEY (id_producenta) REFERENCES Producenci(id_producenta);

ALTER TABLE Zamówienia
ADD FOREIGN KEY (id_produktu) REFERENCES Produkty(id_produktu);

ALTER TABLE Zamówienia
ADD FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta);

-- 7. Każdą tabelę uzupełnij danymi wg:
-- Tabela „Producenci” – 4 pozycje

INSERT INTO Producenci (nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy_z_producentem)
VALUES
('ModaPol', 'Warszawa, ul. Kwiatowa 12', '1234567890', '2021-01-15'),
('StylLux', 'Kraków, ul. Długa 8', '2345678901', '2020-06-10'),
('TrendWear', 'Gdańsk, ul. Słoneczna 5', '3456789012', '2022-03-20'),
('UrbanStyle', 'Poznań, ul. Rynek 2', '4567890123', '2023-05-01');

-- Tabela „Produkty” – 20 pozycji:

INSERT INTO Produkty (id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedaży, cena_brutto_sprzedaży, procent_VAT_sprzedaży)
VALUES
(1, 'Koszulka Basic', 'Bawełniana koszulka męska', 20, 24.60, 30, 36.90, 23),
(1, 'Bluza Hoodie', 'Bluza z kapturem', 50, 61.50, 80, 98.40, 23),
(1, 'Spodnie Jeans', 'Jeansy klasyczne', 70, 86.10, 110, 135.30, 23),
(1, 'Kurtka Zimowa', 'Puchowa kurtka', 120, 147.60, 180, 221.40, 23),
(1, 'T-shirt Premium', 'Koszulka premium', 30, 36.90, 50, 61.50, 23),
(1, 'Szorty Sportowe', 'Szorty na lato', 25, 30.75, 40, 49.20, 23),
(1, 'Koszula Elegancka', 'Koszula biała', 45, 55.35, 70, 86.10, 23),
(1, 'Sweter Wełniany', 'Ciepły sweter', 60, 73.80, 90, 110.70, 23),
(1, 'Marynarka Slim', 'Marynarka męska', 90, 110.70, 140, 172.20, 23),
(1, 'Płaszcz Jesienny', 'Lekki płaszcz', 100, 123.00, 150, 184.50, 23),

(2, 'Sukienka Letnia', 'Kolorowa sukienka', 60, 73.80, 100, 123.00, 23),
(2, 'Bluzka Damska', 'Bluzka z krótkim rękawem', 30, 36.90, 50, 61.50, 23),
(2, 'Spódnica Midi', 'Spódnica elegancka', 45, 55.35, 75, 92.25, 23),
(2, 'Żakiet', 'Marynarka damska', 80, 98.40, 130, 159.90, 23),

(3, 'Torebka Skórzana', 'Skórzana torebka damska', 100, 123.00, 180, 221.40, 23),
(3, 'Portfel', 'Portfel skórzany', 50, 61.50, 90, 110.70, 23),

(4, 'Czapka Zimowa', 'Ciepła czapka', 20, 24.60, 35, 43.05, 23),
(4, 'Rękawiczki', 'Skórzane rękawiczki', 30, 36.90, 50, 61.50, 23),
(4, 'Szalik', 'Wełniany szalik', 25, 30.75, 45, 55.35, 23),
(4, 'Buty Sportowe', 'Buty do biegania', 100, 123.00, 160, 196.80, 23);

-- Tabela „Klienci” – 10 pozycji:

INSERT INTO Klienci (imię, nazwisko, adres)
VALUES
('Jan', 'Kowalski', 'Warszawa, ul. Lipowa 5'),
('Anna', 'Nowak', 'Kraków, ul. Długa 2'),
('Piotr', 'Wiśniewski', 'Gdańsk, ul. Słoneczna 10'),
('Maria', 'Kaczmarek', 'Poznań, ul. Rynek 3'),
('Tomasz', 'Zieliński', 'Łódź, ul. Mickiewicza 7'),
('Katarzyna', 'Wójcik', 'Warszawa, ul. Polna 9'),
('Michał', 'Lewandowski', 'Lublin, ul. Lubelska 12'),
('Ewa', 'Kamińska', 'Katowice, ul. Parkowa 1'),
('Adam', 'Piotrowski', 'Szczecin, ul. Brzozowa 8'),
('Alicja', 'Grabowska', 'Wrocław, ul. Kwiatowa 4');

-- Tabela „Zamówienia” – 10 pozycji:

INSERT INTO Zamówienia (id_klienta, id_produktu, data_zamówienia)
VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-15'),
(3, 3, '2024-02-01'),
(4, 5, '2024-02-10'),
(5, 10, '2024-03-05'),
(6, 15, '2024-03-07'),
(7, 18, '2024-03-20'),
(8, 20, '2024-04-01'),
(9, 7, '2024-04-15'),
(10, 12, '2024-05-10');

-- 8. Wyświetl wszystkie produkty z wszystkimi danymi od producenta który znajduje się na pozycji 1 w tabeli „Producenci”

SELECT * FROM Produkty
JOIN Producenci USING(id_producenta)
WHERE Producenci.id_producenta = 1;

-- 9. Posortuj te produkty alfabetycznie po nazwie

SELECT * FROM Produkty
JOIN Producenci USING(id_producenta)
WHERE id_producenta = 1
ORDER BY nazwa_produktu ASC;

-- 10. Wylicz średnią cenę za produkt od producenta z pozycji 1

SELECT ROUND(AVG(cena_brutto_sprzedaży),2) AS srednia_cena
FROM Produkty
WHERE id_producenta = 1;

-- 11. Wyświetl dwie grupy produktów tego producenta:
-- Połowa najtańszych to grupa: „Tanie”
-- Pozostałe to grupa: „Drogie”

SELECT nazwa_produktu,
CASE 
	WHEN cena_brutto_sprzedaży < 
        (
        SELECT 
        AVG(cena_brutto_sprzedaży) AS mediana_cena_brutto_sprzedaży
        FROM (
		      SELECT 
			      cena_brutto_sprzedaży,
              ROW_NUMBER() OVER (ORDER BY cena_brutto_sprzedaży) AS rn,
			  COUNT(*) OVER () AS total
              FROM Produkty
              WHERE id_producenta = 1
             ) 
	    AS ranked
        WHERE rn IN (FLOOR((total + 1) / 2), CEIL((total + 1) / 2))
        )
	THEN 'Tanie'
	ELSE 'Drogie'
	END AS grupa_cenowa
FROM Produkty
WHERE id_producenta = 1
ORDER BY cena_brutto_sprzedaży;

-- 12. Wyświetl produkty zamówione, wyświetlając tylko ich nazwę

SELECT DISTINCT nazwa_produktu
FROM Produkty
JOIN Zamówienia USING(id_produktu)
WHERE data_zamówienia IS NOT NULL;

-- 13. Wyświetl wszystkie produkty zamówione – ograniczając wyświetlanie do 5 pozycji

SELECT DISTINCT nazwa_produktu
FROM Produkty
JOIN Zamówienia USING(id_produktu)
WHERE data_zamówienia IS NOT NULL
LIMIT 5;

-- 14. Policz łączną wartość wszystkich zamówień

SELECT SUM(cena_brutto_sprzedaży) AS łączna_wartość
FROM Produkty
JOIN Zamówienia USING(id_produktu);

-- 15. Wyświetl wszystkie zamówienia wraz z nazwą produktu sortując je wg daty od najstarszego do najnowszego

SELECT Zamówienia.id_zamówienia, Zamówienia.id_klienta, Zamówienia.id_produktu, Produkty.nazwa_produktu, Zamówienia.data_zamówienia
FROM Zamówienia
JOIN Produkty USING(id_produktu)
ORDER BY Zamówienia.data_zamówienia ASC;

-- 16. Sprawdź czy w tabeli produkty masz uzupełnione wszystkie dane – wyświetl pozycje dla których brakuje danych

SELECT * FROM Produkty
WHERE id_produktu IS NULL
   OR id_producenta IS NULL
   OR nazwa_produktu IS NULL
   OR opis_produktu IS NULL
   OR cena_netto_zakupu IS NULL
   OR cena_brutto_zakupu IS NULL
   OR cena_netto_sprzedaży IS NULL
   OR cena_brutto_sprzedaży IS NULL
   OR procent_VAT_sprzedaży IS NULL;
   
-- 17. Wyświetl produkt najczęściej sprzedawany wraz z jego ceną

SELECT nazwa_produktu, cena_brutto_sprzedaży, COUNT(*) AS liczba_sprzedaży
FROM Produkty
JOIN Zamówienia USING(id_produktu)
GROUP BY id_produktu
ORDER BY liczba_sprzedaży DESC
LIMIT 1;

-- 18. Znajdź dzień w którym najwięcej zostało złożonych zamówień

SELECT data_zamówienia, COUNT(*) AS liczba_zamówień
FROM Zamówienia
GROUP BY data_zamówienia
ORDER BY liczba_zamówień DESC
LIMIT 1;