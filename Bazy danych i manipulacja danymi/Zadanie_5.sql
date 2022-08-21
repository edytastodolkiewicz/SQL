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
SELECT * FROM Pracownicy;
ALTER TABLE Pracownicy MODIFY COLUMN Wiek INTEGER;
SELECT DISTINCT Imię FROM Pracownicy;
SELECT DISTINCT Nazwisko FROM Pracownicy;
SELECT Kurs FROM Pracownicy
WHERE Nazwisko = 'Kowalczyk';
SELECT * FROM Pracownicy
WHERE Wiek IS NULL;
SELECT Wiek FROM Pracownicy
WHERE Imię = 'Patryk';
ALTER TABLE Pracownicy RENAME TO Mentorzy;
