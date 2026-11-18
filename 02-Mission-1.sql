-- MISSION 1 - Exploration Novatec

-- 1.2 Noms des produits
SELECT NomProduit FROM Produits;

-- 1.3 Fournisseurs : nom, id, adresse, email
SELECT NomFournisseur, FournisseurID, Adresse, Email
FROM Fournisseurs;

-- 1.4 Employes : nom et prenom
SELECT Nom, Prenom FROM Employes;

-- 1.5 Produits : nom, prix, description
SELECT NomProduit, PrixUnitaire, Description FROM Produits;

-- 1.6 Dates de vente sans repetition
SELECT DISTINCT DATE(DateVente) AS JourVente FROM Ventes ORDER BY JourVente;

-- 1.7 Employes sans doublons nom-prenom
SELECT DISTINCT Nom, Prenom FROM Employes ORDER BY Nom, Prenom;