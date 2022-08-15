CREATE DATABASE Pracownicy;
USE Pracownicy;
CREATE TABLE Pracownicy (
ID INTEGER UNIQUE PRIMARY KEY,
Imię TEXT DEFAULT NULL,
Nazwisko TEXT DEFAULT NULL,
Wiek INTEGER DEFAULT NULL,
Kurs TEXT DEFAULT NULL
);
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 23, 'Java');
INSERT INTO Pracownicy (ID, Imię, Wiek, Kurs)
VALUES (6, 'Przemysław', 34, 'Java'),
(7, 'Robert', 35, 'Java');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (8, 'Radosław', 'ZIELIŃSKI', 38, 'Java');
INSERT INTO Pracownicy (ID, Nazwisko, Wiek, Kurs)
VALUES (9, 'WOŹNIAK', 26, 'Java');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (10, 'Robert', 'SZYMAŃSKI', 34, 'Java');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek)
VALUES (11, 'Radosław', 'DĄBROWSKI', 35 );
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Kurs)
VALUES (12, 'Robert', 'KOZŁOWSKI', 'UX');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 37, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester');
INSERT INTO Pracownicy (ID, Nazwisko, Wiek, Kurs)
VALUES (16, 'ZIELIŃSKI', 28, 'Tester');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester');
INSERT INTO Pracownicy (ID, Imię, Wiek, Kurs)
VALUES (19, 'Roman', 39, 'Tester');
INSERT INTO Pracownicy (ID, Imię, Nazwisko, Wiek, Kurs)
VALUES (20, 'Ewa', 'WOŹNIAK', 31, 'Tester');
SELECT * FROM Pracownicy WHERE Wiek = 28;
SELECT * FROM Pracownicy WHERE Wiek <= 30;
SELECT * FROM Pracownicy WHERE Nazwisko LIKE '%SKI%';
SELECT * FROM Pracownicy WHERE ID IN (1, 4, 7, 18, 20);
SELECT * FROM Pracownicy WHERE ID IS NOT NULL AND Imię IS NOT NULL AND Nazwisko IS NOT NULL AND Wiek IS NOT NULL AND Kurs IS NOT NULL;
SELECT * FROM Pracownicy WHERE Kurs <> 'DS.';
