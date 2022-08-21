CREATE DATABASE Pracownicy;
USE Pracownicy;
CREATE TABLE Pracownicy (
ID INTEGER UNIQUE PRIMARY KEY,
Imię TEXT DEFAULT NULL,
Nazwisko TEXT DEFAULT NULL,
Wiek INTEGER DEFAULT NULL,
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
SELECT * FROM Pracownicy;
SELECT * FROM Pracownicy WHERE Nazwisko = 'KOWALCZYK';
SELECT * FROM Pracownicy WHERE Wiek BETWEEN 30 AND 40;
SELECT * FROM Pracownicy WHERE Nazwisko NOT LIKE '%and%';
SELECT * FROM Pracownicy WHERE ID >=1 AND ID <= 7;
SELECT * FROM Pracownicy WHERE ID IS NULL OR Imię IS NULL OR Nazwisko IS NULL OR Wiek IS NULL OR Kurs IS NULL;
SELECT * FROM Pracownicy WHERE Kurs IS NULL;
