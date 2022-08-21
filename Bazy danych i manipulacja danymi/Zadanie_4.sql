CREATE DATABASE Pracownicy;
USE Pracownicy;
CREATE TABLE Pracownicy (
ID INTEGER UNIQUE PRIMARY KEY,
Imię TEXT DEFAULT NULL,
Nazwisko TEXT DEFAULT NULL,
Wiek TEXT DEFAULT NULL,
Kurs TEXT DEFAULT NULL
);
SELECT * FROM Pracownicy;
UPDATE Pracownicy
SET Imię = NULL WHERE Imię = '';
UPDATE Pracownicy
SET Nazwisko = NULL WHERE Nazwisko = '';
UPDATE Pracownicy
SET Wiek = NULL WHERE Wiek = '';
UPDATE Pracownicy
SET Kurs = NULL WHERE Kurs = '';
ALTER TABLE Pracownicy MODIFY COLUMN Wiek INTEGER;
SELECT * FROM Pracownicy;
SELECT * FROM Pracownicy 
WHERE Imię = 'Anna';
SELECT * FROM Pracownicy 
WHERE Imię IS NULL;
SELECT Kurs FROM Pracownicy 
WHERE Wiek BETWEEN 30 AND 40;
SELECT Wiek FROM Pracownicy 
WHERE ID BETWEEN 1 AND 7;
SELECT * FROM Pracownicy 
WHERE Wiek IS NULL;
ALTER TABLE Pracownicy RENAME COLUMN Kurs TO Szkolenie;
SELECT * FROM Pracownicy;
