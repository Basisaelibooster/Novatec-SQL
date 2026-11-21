SELECT COUNT(*) AS nb_produits FROM Produits;
SELECT AVG(PrixUnitaire) AS prix_moyen FROM Produits;
SELECT MIN(PrixUnitaire) AS prix_min, MAX(PrixUnitaire) AS prix_max FROM Produits;

-- 3.2 Prix moyen par fournisseur
SELECT FournisseurID, COUNT(*) AS nb_produits, AVG(PrixUnitaire) AS prix_moyen
FROM Produits
GROUP BY FournisseurID
ORDER BY prix_moyen DESC;

-- 3.4 Nom du fournisseur + ses stats
SELECT f.NomFournisseur, COUNT(p.ProduitID) AS nb_produits, ROUND(AVG(p.PrixUnitaire), 2) AS prix_moyen
FROM Produits p
JOIN Fournisseurs f ON p.FournisseurID = f.FournisseurID
GROUP BY f.NomFournisseur
ORDER BY prix_moyen DESC;

-- 3.5 Gros fournisseurs, plus de 5 produits
SELECT f.NomFournisseur, COUNT(p.ProduitID) AS nb_produits
FROM Produits p
JOIN Fournisseurs f ON p.FournisseurID = f.FournisseurID
GROUP BY f.NomFournisseur
HAVING COUNT(p.ProduitID) > 5
ORDER BY nb_produits DESC;