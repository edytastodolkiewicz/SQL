-- 1.
CREATE DATABASE Sklep_odzieżowy;
USE Sklep_odzieżowy;
-- 2.
CREATE TABLE Producenci (
id_producenta INTEGER PRIMARY KEY UNIQUE NOT NULL,
nazwa_producenta TEXT NOT NULL,
adres_producenta TEXT NOT NULL,
nip_producenta INTEGER NOT NULL,
data_umowy DATE NOT NULL
);
-- 3. 
CREATE TABLE Produkty (
id_produktu INTEGER PRIMARY KEY UNIQUE NOT NULL,
id_producenta INTEGER NOT NULL,
nazwa_produktu TEXT NOT NULL,
opis_produktu INTEGER NOT NULL,
cena_netto_zakupu FLOAT NOT NULL,
cena_brutto_zakupu FLOAT NOT NULL,
cena_netto_sprzedaży FLOAT NOT NULL,
cena_brutto_sprzedaży FLOAT NOT NULL,
procent_VAT_sprzedaży DECIMAL(3,2)
);
-- 4. 
CREATE TABLE Zamówienia (
id_zamówienia INTEGER PRIMARY KEY UNIQUE NOT NULL,
id_klienta INTEGER NOT NULL,
id_produktu INTEGER NOT NULL,
data_zamówienia DATE NOT NULL
);
-- 5.
-- 6.
