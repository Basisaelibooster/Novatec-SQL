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