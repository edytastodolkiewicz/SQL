CREATE DATABASE aggregates;
USE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY NOT NULL,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');
SELECT * FROM batman;
-- a)
SELECT CONCAT(first_name, ' ', last_name) AS Pracownik FROM batman;
-- b)
SELECT CONCAT(gift, ' - ', price) AS cennik FROM batman;
-- c)
SELECT CONCAT(gift, ' - ', price, ' ', first_name, ' ', last_name) AS cennik FROM batman;
-- d)
SELECT UPPER(gift) FROM batman;
-- e)
SELECT LOWER(first_name) FROM batman;
-- f)
SELECT last_name, CHAR_LENGTH(last_name) AS długość FROM batman;
-- g)
SELECT SUBSTRING(first_name, 1, 2), first_name FROM batman;
-- h)
SELECT CONCAT(LOWER((SUBSTRING(first_name, 1, 1))), LOWER(SUBSTRING(last_name, 1, 3))) FROM batman;
