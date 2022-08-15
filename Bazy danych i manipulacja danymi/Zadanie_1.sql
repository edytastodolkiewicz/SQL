CREATE DATABASE Pracownicy;
USE Pracownicy;
CREATE TABLE Pracownicy (
ID INTEGER UNIQUE PRIMARY KEY,
Imię TEXT NOT NULL,
Nazwisko TEXT NOT NULL,
Wiek INTEGER NOT NULL,
Kurs TEXT NOT NULL
);
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 23, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 37, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');
SELECT * FROM Pracownicy WHERE Wiek > 30;
SELECT * FROM Pracownicy WHERE Wiek < 30;
SELECT * FROM Pracownicy WHERE Nazwisko LIKE 'K%' AND Nazwisko LIKE '%KI';
ALTER TABLE Pracownicy 
RENAME COLUMN ID to NR;
SELECT * FROM Pracownicy WHERE NR IS NULL OR Imię IS NULL OR Nazwisko IS NULL OR Wiek IS NULL OR Kurs IS NULL;
SELECT * FROM Pracownicy WHERE Kurs = 'Java';
