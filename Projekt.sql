-- 1.
CREATE DATABASE Sklep_odzieżowy;
DROP DATABASE Sklep_odzieżowy;
USE Sklep_odzieżowy;

-- 2.
CREATE TABLE Producenci (
id_producenta INTEGER PRIMARY KEY NOT NULL,
nazwa_producenta TEXT NOT NULL,
adres_producenta TEXT NOT NULL,
nip_producenta VARCHAR(13) NOT NULL,
data_umowy DATE NOT NULL
);

-- 3. 
CREATE TABLE Produkty (
id_produktu INTEGER PRIMARY KEY NOT NULL,
id_producenta INTEGER NOT NULL, 
nazwa_produktu TEXT NOT NULL,
opis_produktu TEXT NOT NULL,
cena_netto_zakupu FLOAT NOT NULL,
cena_brutto_zakupu FLOAT NOT NULL,
cena_netto_sprzedaży FLOAT NOT NULL,
cena_brutto_sprzedaży FLOAT NOT NULL,
procent_VAT_sprzedaży DECIMAL(3,2)
);

-- 4. 
CREATE TABLE Zamówienia (
id_zamówienia INTEGER PRIMARY KEY NOT NULL,
id_klienta VARCHAR(5) NOT NULL,
id_produktu INTEGER NOT NULL,
data_zamówienia DATE NOT NULL
);

-- 5.
CREATE TABLE Klienci (
id_klienta VARCHAR(5) PRIMARY KEY NOT NULL,
id_zamówienia INTEGER NOT NULL,
imię TEXT NOT NULL,
nazwisko TEXT NOT NULL,
adres TEXT NOT NULL
);

-- 6.
ALTER TABLE Produkty ADD CONSTRAINT producenci_fk FOREIGN KEY (id_producenta) REFERENCES Producenci(id_producenta);
ALTER TABLE Zamówienia ADD CONSTRAINT produkty_fk FOREIGN KEY (id_produktu) REFERENCES Produkty(id_produktu);

-- 7.
INSERT INTO Producenci VALUES (1, 'Bytom', 'ul. Pilotów 10 31-462 Kraków', '675-00-00-361', '2010-01-12');
INSERT INTO Producenci VALUES (2, 'Green Point', 'ul. Mariana Domagały 3 30-741 Kraków', '676-00-00-782', '2010-01-12');
INSERT INTO Producenci VALUES (3, 'Naoko', 'ul. Romanowska 55E/13 91-174 Łódź', '947-18-88-490', '2017-09-01');
INSERT INTO Producenci VALUES (4, 'Prosto', 'ul. Wybrzeże Gdyńskie 27 01-531 Warszawa', '898-18-87-626', '2015-11-17');
SELECT * FROM Producenci;

INSERT INTO Produkty VALUES (1, 1, 'Koszula', 'Koszula biała slim fit', 100, 123, 161.79, 199, 0.23);
INSERT INTO Produkty VALUES (2, 1, 'Spodnie', 'Spodnie granatowe slim fit', 200, 246, 405.69, 499, 0.23);
INSERT INTO Produkty VALUES (3, 1, 'Pasek', 'Brązowy pasek skórzany', 173, 212.79, 243.09, 299, 0.23);
INSERT INTO Produkty VALUES (4, 1, 'Marynarka', 'Granatowa marynarka slim fit', 400, 492, 568.29, 699, 0.23);
INSERT INTO Produkty VALUES (5, 1, 'Koszula', 'Koszula niebieska slim fit', 100, 123, 161.79, 199, 0.23);
INSERT INTO Produkty VALUES (6, 2, 'Sukienka', 'Sukienka lniana niebieska', 200, 246, 405.69, 499, 0.23);
INSERT INTO Produkty VALUES (7, 2, 'Bluzka', 'Bluzka basic biała', 30, 36.90, 56.10, 69, 0.23);
INSERT INTO Produkty VALUES (8, 2, 'Spodnie', 'Spodnie materiałowe z wysokim stanem', 100, 123, 138.2, 169.99, 0.23);
INSERT INTO Produkty VALUES (9, 2, 'Sweter', 'Sweter wełniany szary zapinany na guziki', 125, 153.75, 161.79, 199, 0.23);
INSERT INTO Produkty VALUES (10, 2, 'Płaszcz', 'Klasyczny trencz beżowy', 200, 246, 405.69, 499, 0.23);
INSERT INTO Produkty VALUES (11, 3, 'Bluza', 'Bluza z kapturem Inca', 100, 123, 162.6, 200, 0.23);
INSERT INTO Produkty VALUES (12, 3, 'Bluza', 'Bluza z kapturem Minty', 100, 123, 162.6, 200, 0.23);
INSERT INTO Produkty VALUES (13, 3, 'Płaszcz', 'Wiązany płaszcz flauszowy', 250, 307.5, 406.5, 500, 0.23);
INSERT INTO Produkty VALUES (14, 3, 'Kamizelka', 'Kamizelka Caramel Latte', 150, 184.5, 243.09, 299, 0.23);
INSERT INTO Produkty VALUES (15, 3, 'Bomberka', 'Czarna bomberka', 200, 246, 284.55, 350, 0.23);
INSERT INTO Produkty VALUES (16, 4, 'Koszulka', 'T-shirt Essential Rib Graphite', 50, 61.5, 113.82, 140, 0.23);
INSERT INTO Produkty VALUES (17, 4, 'Longsleeve', 'Longsleeve Art Navy', 100, 123, 154.47, 190, 0.23);
INSERT INTO Produkty VALUES (18, 4, 'Bluza', 'Hoodie Finesse Navy', 200, 246, 405.69, 499, 0.23);
INSERT INTO Produkty VALUES (19, 4, 'Kurtka', 'Jacket Art Varsity Navy', 400, 492, 568.29, 699, 0.23);
INSERT INTO Produkty VALUES (20, 4, 'Spodnie', 'Sweatpants Ult-Pro Yellow', 150, 184.5, 268.29, 330, 0.23);
SELECT * FROM Produkty;

INSERT INTO Zamówienia VALUES (1, 'A0001', 17, '2022-01-01');
INSERT INTO Zamówienia VALUES (2, 'A0002', 7, '2022-02-01');
INSERT INTO Zamówienia VALUES (3, 'A0003', 1, '2022-03-01');
INSERT INTO Zamówienia VALUES (4, 'A0004', 2, '2022-04-01');
INSERT INTO Zamówienia VALUES (5, 'A0005', 8, '2022-05-01');
INSERT INTO Zamówienia VALUES (6, 'A0006', 13, '2022-06-01');
INSERT INTO Zamówienia VALUES (7, 'A0007', 20, '2022-06-01');
INSERT INTO Zamówienia VALUES (8, 'A0008', 5, '2022-08-01');
INSERT INTO Zamówienia VALUES (9, 'A0009', 4, '2022-08-01');
INSERT INTO Zamówienia VALUES (10, 'A0010', 3, '2022-08-01');
SELECT * FROM Zamówienia;

INSERT INTO Klienci VALUES ('A0001', 1, 'Anna', 'Kopczewska', 'Al. Niepodległości 103 02-626 Warszawa');
INSERT INTO Klienci VALUES ('A0002', 2, 'Robert', 'Dąbrowski', 'Al. Niepodległości 105 02-626 Warszawa');
INSERT INTO Klienci VALUES ('A0003', 3, 'Bartosz', 'Kaczmarek', 'Ul. Puławska 176/178 02-670 Warszawa');
INSERT INTO Klienci VALUES ('A0004', 4, 'Krzysztof', 'Kosecki', 'Ul. Winna 3 92-328 Łódź');
INSERT INTO Klienci VALUES ('A0005', 5, 'Agnieszka', 'Nowak', 'Al. Wyszyńskiego 92 94-050 Łódź');
INSERT INTO Klienci VALUES ('A0006', 6, 'Jan', 'Kowalski', 'Ul. Marszałkowska 2 00-026 Warszawa');
INSERT INTO Klienci VALUES ('A0007', 7, 'Adam', 'Krawczyk', 'Ul. Floriańska 10 33-332 Kraków');
INSERT INTO Klienci VALUES ('A0008', 8, 'Tomasz', 'Kot', 'Al. Józefa Piłsudskiego 9 09-402 Płock');
INSERT INTO Klienci VALUES ('A0009', 9, 'Ewa', 'Kosecka', 'Ul. Baraniaka 122 61-131 Poznań');
INSERT INTO Klienci VALUES ('A0010', 10, 'Jan', 'Malinowski', 'Ul. Jana Matejki 1 85-061 Bydgoszcz');
SELECT * FROM Klienci;

-- 6. cd
ALTER TABLE Klienci ADD CONSTRAINT zamówienia_fk FOREIGN KEY (id_zamówienia) REFERENCES Zamówienia(id_zamówienia);
ALTER TABLE Zamówienia ADD CONSTRAINT klienci_fk FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta);

-- 8.
SELECT *
FROM Produkty
LEFT JOIN Producenci ON Produkty.id_producenta = Producenci.id_producenta
WHERE Producenci.id_producenta = 1;

-- 9.
SELECT *
FROM Produkty
LEFT JOIN Producenci ON Produkty.id_producenta = Producenci.id_producenta
WHERE Producenci.id_producenta = 1
ORDER BY Produkty.nazwa_produktu;

-- 10.
SELECT AVG(cena_brutto_sprzedaży)
FROM Produkty
WHERE id_producenta = 1;

-- 11.
SELECT *, 'Tanie'
FROM Produkty
WHERE id_producenta = 1 AND cena_brutto_sprzedaży <=379
UNION
SELECT *, 'Drogie'
FROM Produkty
WHERE id_producenta = 1 AND cena_brutto_sprzedaży > 379;

-- 12.
SELECT Produkty.nazwa_produktu
FROM Produkty
RIGHT JOIN Zamówienia ON Produkty.id_produktu = Zamówienia.id_produktu;

-- 13.
SELECT *
FROM Produkty
INNER JOIN Zamówienia ON Produkty.id_produktu = Zamówienia.id_produktu;

-- 14.
SELECT SUM(cena_brutto_sprzedaży)
FROM Produkty
RIGHT JOIN Zamówienia ON Produkty.id_produktu = Zamówienia.id_produktu;

-- 15.
SELECT Zamówienia.*, Produkty.nazwa_produktu
FROM Zamówienia
LEFT JOIN Produkty ON Zamówienia.id_produktu = Produkty.id_produktu
ORDER BY Zamówienia.data_zamówienia;

-- 16.
SELECT *
FROM Produkty 
WHERE id_produktu IS NULL OR id_producenta IS NULL OR nazwa_produktu IS NULL OR opis_produktu IS NULL OR cena_netto_zakupu IS NULL OR cena_brutto_zakupu IS NULL OR cena_netto_sprzedaży IS NULL OR cena_brutto_sprzedaży IS NULL OR procent_VAT_sprzedaży IS NULL;

-- 17.
WITH zamówienia_z_cenami AS (
SELECT Zamówienia.*, Produkty.cena_brutto_sprzedaży
FROM Zamówienia
LEFT JOIN Produkty ON Zamówienia.id_produktu = Produkty.id_produktu)
SELECT id_produktu, cena_brutto_sprzedaży, COUNT(id_produktu) AS liczba_zamówionych_sztuk
FROM zamówienia_z_cenami
GROUP BY id_produktu
ORDER BY liczba_zamówionych_sztuk DESC
LIMIT 1;

-- 18.
SELECT data_zamówienia, COUNT(data_zamówienia)
FROM Zamówienia
GROUP BY data_zamówienia
ORDER BY COUNT(data_zamówienia) DESC
LIMIT 1;
