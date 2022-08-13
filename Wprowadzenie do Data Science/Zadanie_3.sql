CREATE DATABASE Lista_Prezentów;
USE Lista_Prezentów;
CREATE TABLE Prezenty_2020 (
ID INTEGER PRIMARY KEY,
Imie_obdarowanego TEXT NOT NULL,
Pomysl_na_prezent TEXT NOT NULL,
Cena INTEGER NOT NULL,
Miejsce_zakupu TEXT NOT NULL
);
INSERT INTO Prezenty_2020 (ID, Imie_obdarowanego, Pomysl_na_prezent, Cena, Miejsce_zakupu)
VALUES (1, 'Kasia', 'Książka', 30, 'Empik'), (2, 'Janek', 'Puzzle', 40, 'Empik'), (3, 'Ewa', 'Kolczyki', 50, 'Apart'), (4, 'Paulina', 'Świeczka', 30, 'Home&You'),  (5, 'Marysia', 'Bon na masaż', 100, 'Spa');
SELECT * FROM Prezenty_2020;
UPDATE Prezenty_2020
SET Pomysl_na_prezent = 'Rower'
WHERE ID = 3;
SELECT * FROM Prezenty_2020 WHERE ID = 3;
DELETE FROM Prezenty_2020 WHERE ID = 1;
SELECT * FROM Prezenty_2020;
ALTER TABLE Prezenty_2020
DROP COLUMN Miejsce_zakupu;
SELECT Imie_obdarowanego FROM Prezenty_2020 WHERE ID = 3 OR ID = 4 OR ID = 5;
