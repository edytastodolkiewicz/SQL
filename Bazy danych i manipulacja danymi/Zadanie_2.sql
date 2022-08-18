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
SELECT * FROM Pracownicy WHERE Wiek = 28;
SELECT * FROM Pracownicy WHERE Wiek <= 30;
SELECT * FROM Pracownicy WHERE Nazwisko LIKE '%SKI%';
SELECT * FROM Pracownicy WHERE ID IN (1, 4, 7, 18, 20);
SELECT * FROM Pracownicy WHERE ID IS NOT NULL AND Imię IS NOT NULL AND Nazwisko IS NOT NULL AND Wiek IS NOT NULL AND Kurs IS NOT NULL;
SELECT * FROM Pracownicy WHERE Kurs <> 'DS.';
