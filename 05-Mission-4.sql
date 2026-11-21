-- 4.1 CA total, nombre de ventes
SELECT COUNT(*) AS nb_ventes, SUM(Montanttotal) AS chiffre_affaires
FROM Ventes;

-- 4.2 Top 10 produits par CA REEL
SELECT nomproduit, COUNT(Quantitevendue) AS Total_vendu, SUM(montanttotal) AS CA_Produit
FROM Ventes
INNER JOIN Produits USING (ProduitID)
GROUP BY nomproduit
ORDER BY ca_produit DESC 
LIMIT 10;

-- 4.3 CA par mois
SELECT EXTRACT (MONTH FROM datevente) AS mois, SUM(montanttotal) AS ca_mois
FROM Ventes
GROUP BY EXTRACT (MONTH FROM datevente)
ORDER BY mois;

-- 4.4 Top 5 clients
SELECT Nom, SUM(montanttotal) AS ca_client
FROM Ventes 
JOIN Clients USING (Clientid)
GROUP BY Nom
ORDER BY ca_client DESC
LIMIT 5;

-- Top 1 verifie : Nike Air Max, avec MontantTotal uniquement
SELECT NomProduit, COUNT(venteid) AS nb_ventes, SUM(quantitevendue) AS total_vendu, SUM(montanttotal) AS ca_produit
FROM Ventes 
INNER JOIN Produits USING (Produitid)
WHERE NomProduit = 'Nike Air Max'
GROUP BY Nomproduit;