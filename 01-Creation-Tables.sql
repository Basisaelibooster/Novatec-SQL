-- NOVATEC - Creation des tables
-- Base : novatec - PostgreSQL 18

DROP TABLE IF EXISTS Ventes;
DROP TABLE IF EXISTS Produits;
DROP TABLE IF EXISTS Clients;
DROP TABLE IF EXISTS Employes;
DROP TABLE IF EXISTS Fournisseurs;

CREATE TABLE Fournisseurs (
    FournisseurID INT PRIMARY KEY,
    NomFournisseur VARCHAR(100),
    Adresse TEXT,
    Email VARCHAR(100),
    NumeroTelephone VARCHAR(50)
);

CREATE TABLE Produits (
    ProduitID INT PRIMARY KEY,
    NomProduit VARCHAR(100),
    Description TEXT,
    PrixUnitaire NUMERIC(10,2),
    FournisseurID INT REFERENCES Fournisseurs(FournisseurID)
);

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Prenom VARCHAR(100),
    Adresse TEXT,
    Email VARCHAR(100),
    NumeroTelephone VARCHAR(50)
);

CREATE TABLE Employes (
    EmployeID INT PRIMARY KEY,
    Nom VARCHAR(100),
    Prenom VARCHAR(100),
    Fonction VARCHAR(100),
    Email VARCHAR(100),
    NumeroTelephone VARCHAR(50)
);

CREATE TABLE Ventes (
    VenteID INT PRIMARY KEY,
    DateVente TIMESTAMP,
    ClientID INT REFERENCES Clients(ClientID),
    EmployeID INT REFERENCES Employes(EmployeID),
    ProduitID INT REFERENCES Produits(ProduitID),
    QuantiteVendue INT,
    MontantTotal NUMERIC(12,2)
);