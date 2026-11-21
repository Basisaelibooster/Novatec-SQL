-- 2.1 Fiche complete Nike Air Max
SELECT * FROM Produits
WHERE NomProduit = 'Nike Air Max';

-- 2.2 Produits du fournisseur 13
SELECT * FROM Produits
WHERE FournisseurID = 13;

-- 2.4 Prix exactement 50, plus de 200, entre 50 et 100
SELECT NomProduit, PrixUnitaire FROM Produits
WHERE PrixUnitaire = 50;

SELECT NomProduit, PrixUnitaire FROM Produits
WHERE PrixUnitaire > 200
ORDER BY PrixUnitaire DESC;

SELECT NomProduit, PrixUnitaire FROM Produits
WHERE PrixUnitaire BETWEEN 50 AND 100;

-- 2.5 Trier par prix
SELECT NomProduit, PrixUnitaire FROM Produits
ORDER BY PrixUnitaire ASC;

SELECT NomProduit, PrixUnitaire FROM Produits
ORDER BY PrixUnitaire DESC;

-- 2.7 Produits qui commencent par A, contiennent A, etc.
-- Commence par A
SELECT NomProduit FROM Produits
WHERE NomProduit LIKE 'A%';

-- Contient la lettre A
SELECT NomProduit FROM Produits
WHERE NomProduit LIKE '%A%';

-- Commence par N et se termine par X

-- Version 1 : avec le petit x, ça marche
SELECT NomProduit FROM Produits
WHERE NomProduit LIKE 'N%x';

-- Version 2 : ILIKE, il ignore majuscule / minuscule
SELECT NomProduit FROM Produits
WHERE NomProduit LIKE 'N%X';
-- devient
SELECT NomProduit FROM Produits
WHERE NomProduit ILIKE 'N%X';

-- Se termine par M
SELECT NomProduit FROM Produits
WHERE NomProduit LIKE '%M';