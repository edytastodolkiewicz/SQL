CREATE DATABASE Moje_zainteresowania;
USE Moje_zainteresowania;
CREATE TABLE Zainteresowania (
ID INTEGER,
Nazwa TEXT NOT NULL,
Opis TEXT NOT NULL,
Data_realizacji DATE
);
INSERT INTO Zainteresowania (Nazwa, Opis)
VALUES ('Siatkówka', 'Mecz reprezentacji Polski'), ('Książki', 'Przeczytać nową książkę'), ('Joga', 'Warsztaty jogowe'), ('Siłownia', 'Trening z trenerem osobistym'), ('Podróże', 'Wyjazd do Gruzji');
SELECT * FROM Zainteresowania;
INSERT INTO Zainteresowania (ID, Nazwa, Opis, Data_realizacji)
VALUES (6, 'Data Science', 'Ukończyć kurs Data Science', '2022-11-30');
UPDATE Zainteresowania
SET ID = 4, Data_realizacji = '2022-08-16'
WHERE Nazwa = 'Siłownia';
SELECT * FROM Zainteresowania;
DELETE FROM Zainteresowania
WHERE ID IS NULL OR Data_realizacji IS NULL;
SELECT * FROM Zainteresowania;
