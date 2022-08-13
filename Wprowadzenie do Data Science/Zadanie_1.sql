CREATE DATABASE Zadania_SQL;
USE Zadania_SQL;
CREATE TABLE Biblioteczka (
id INTEGER PRIMARY KEY,
Tytul TEXT,
Data_zakupu DATE
);
INSERT INTO Biblioteczka (id, Tytul, Data_zakupu) 
VALUES (1, 'Millennium', '2010-10-01');
SELECT * FROM Biblioteczka;
INSERT INTO Biblioteczka (id, Tytul, Data_zakupu) 
VALUES (2, 'Morderstwo w Orient Expressie', '2015-02-14'), (3, 'Nie mów nikomu', '2018-12-24');
UPDATE Biblioteczka
SET Tytul = 'Potop', Data_zakupu = '2016-09-01'
WHERE id = 1;
ALTER TABLE Biblioteczka
ADD COLUMN Autor TEXT;
UPDATE Biblioteczka
SET Autor = 'Henryk Sienkiewicz'
WHERE id = 1;
UPDATE Biblioteczka
SET Autor = 'Agatha Christie'
WHERE id = 2;
UPDATE Biblioteczka 
SET Autor = 'Harlan Coben'
WHERE id = 3;
DELETE FROM Biblioteczka
WHERE id = 2;
DELETE FROM Biblioteczka
WHERE id = 3;
SELECT Autor FROM Biblioteczka;
