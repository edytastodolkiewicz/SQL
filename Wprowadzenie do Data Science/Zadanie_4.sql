CREATE DATABASE Lista_Pracowników;
USE Lista_Pracowników;
CREATE TABLE Pracownicy (
ID INTEGER PRIMARY KEY,
Imie TEXT NOT NULL,
Nazwisko TEXT NOT NULL,
Stanowisko TEXT NOT NULL,
Dzial TEXT NOT NULL
);
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial)
VALUES (1, 'Maria', 'Kopczyńska', 'TAq Admin Specialist', 'HR'), (2, 'Krystyna', 'Kwieciszewska', 'Team Lead', 'HR'), (3, 'Jesus', 'Ayala', 'Regional Center Lead', 'HR');
SELECT * FROM Pracownicy;
ALTER TABLE Pracownicy
ADD COLUMN Data_zatrudnienia DATE;
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial, Data_zatrudnienia)
VALUES (4, 'Kajetan', 'Wojnarowski', 'TAq Admin Specialist', 'HR', '2021-01-01');
SELECT * FROM Pracownicy;
UPDATE Pracownicy
SET Data_zatrudnienia = '2021-12-01'
WHERE ID = 1;
UPDATE Pracownicy
SET Data_zatrudnienia = '2018-05-01'
WHERE ID = 2;
UPDATE Pracownicy
SET Data_zatrudnienia = '2020-10-01'
WHERE ID = 3;
SELECT * FROM Pracownicy;
