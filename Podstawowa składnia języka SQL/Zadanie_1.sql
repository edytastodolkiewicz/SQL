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
SELECT COUNT(id) FROM batman;
-- b)
SELECT COUNT(age) FROM batman;
-- c)
SELECT count(id) FROM batman
WHERE sex = 'M' AND age > 40;
-- d)
SELECT SUM(price) FROM batman;
-- e)
SELECT SUM(age) FROM batman
WHERE sex = 'F';
-- f)
SELECT sum(price) FROM batman 
WHERE gift IN ('komputer', 'okno');
-- g)
SELECT max(price) FROM batman;
-- h)
SELECT max(start_date) FROM batman;
-- i)
SELECT max(last_name) FROM batman;
SELECT last_name FROM batman
ORDER BY last_name DESC
LIMIT 1;
-- j)
SELECT min(price) FROM batman;
-- k)
SELECT min(start_date) FROM batman;
-- l)
SELECT min(last_name) FROM batman;
-- m)
SELECT min(price) AS cena_minimalna, max(price) AS cena_maksymalna FROM batman;
-- n)
SELECT max(price) - min(price) FROM batman;
-- o)
SELECT avg(age) FROM batman;
-- p)
SELECT SUM(age)/count(age) FROM batman;
-- q)
SELECT sex, AVG(age) FROM batman
GROUP BY sex;
