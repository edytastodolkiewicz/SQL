CREATE DATABASE School_Coding;
USE School_Coding;
CREATE TABLE Mentors (
ID INTEGER PRIMARY KEY,
Imie TEXT NOT NULL,
Nazwisko TEXT NOT NULL,
Specjalizacja TEXT NOT NULL,
Data_zatrudnienia DATE NOT NULL,
Data_zwolnienia DATE DEFAULT NULL
);
INSERT INTO Mentors (ID, Imie, Nazwisko, Specjalizacja, Data_zatrudnienia)
VALUES (1, 'Anna', 'Banasiak', 'Scrum', '2019-01-01'),
(2, 'Rafał', 'Królik', 'Product Owner', '2019-01-01'), 
(3, 'Michał', 'Kasprzak', 'Data Science', '2019-01-01'),
(4, 'Adam', 'Kowal', 'Data Science', '2019-04-01'),
(5, 'Ewa', 'Kopczyńska', 'Frontend Developer', '2019-01-01'),
(6, 'Jacek', 'Król', 'Python Developer', '2019-01-01'),
(7, 'Łukasz', 'Kujawa', 'Tester oprogramowania', '2019-01-01'),
(8, 'Artur', 'Zatłoka', 'UX Designer', '2020-03-01'),
(9, 'Magda', 'Malinowska', 'Cybersecurity', '2022-01-02'),
(10, 'Piotr', 'Pawłowski', 'Java Developer', '2020-01-05');
SELECT * FROM Mentors;
UPDATE Mentors
SET Nazwisko = 'Kopacz'
WHERE ID = 5;
SELECT * FROM Mentors WHERE ID = 5;
UPDATE Mentors
SET Specjalizacja = 'Product Owner'
WHERE ID = 9;
SELECT * FROM Mentors WHERE ID = 9;
ALTER TABLE Mentors
ADD COLUMN Wynagrodzenie INTEGER NOT NULL;
UPDATE Mentors
SET Wynagrodzenie = 1000 
WHERE ID IN (1,2,3);
SELECT * FROM Mentors WHERE ID = 1 OR ID = 2 OR ID = 3;
