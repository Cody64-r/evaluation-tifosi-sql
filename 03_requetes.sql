-- ==========================================================
-- Script : 03_requetes.sql
-- Projet : Base de données Tifosi
-- Auteur : Cody Russell
-- Date : 30/09/2025
-- Description :
--   Ensemble de requêtes SQL pour tester et exploiter la base Tifosi
-- ==========================================================

USE tifosi;

-- ==========================================================
-- 1️⃣  Afficher toutes les focaccias avec leur prix
-- ==========================================================
SELECT id_focaccia, nom_focaccia, prix
FROM focaccia
ORDER BY prix DESC;

-- ==========================================================
-- 2️⃣  Lister tous les ingrédients par ordre alphabétique
-- ==========================================================
SELECT id_ingredient, nom_ingredient
FROM ingredient
ORDER BY nom_ingredient ASC;

-- ==========================================================
-- 3️⃣  Afficher la composition de chaque focaccia (nom + ingrédients)
-- ==========================================================
SELECT f.nom_focaccia, i.nom_ingredient, fi.quantite, fi.unite
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
ORDER BY f.nom_focaccia, i.nom_ingredient;

-- ==========================================================
-- 4️⃣  Rechercher toutes les focaccias contenant du fromage
-- ==========================================================
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE i.nom_ingredient IN ('Mozzarella', 'Emmental', 'Chèvre', 'Gorgonzola', 'Parmesan', 'Raclette');

-- ==========================================================
-- 5️⃣  Lister les boissons avec leur marque et leur prix
-- ==========================================================
SELECT b.nom_boisson, m.nom_marque, b.type_boisson, b.prix
FROM boisson b
JOIN marque m ON b.id_marque = m.id_marque
ORDER BY m.nom_marque;

-- ==========================================================
-- 6️⃣  Trouver la focaccia la plus chère
-- ==========================================================
SELECT nom_focaccia, prix
FROM focaccia
ORDER BY prix DESC
LIMIT 1;

-- ==========================================================
-- 7️⃣  Calculer le prix moyen des focaccias
-- ==========================================================
SELECT ROUND(AVG(prix), 2) AS prix_moyen_focaccia
FROM focaccia;

-- ==========================================================
-- 8️⃣  Compter le nombre total d’ingrédients utilisés par focaccia
-- ==========================================================
SELECT f.nom_focaccia, COUNT(fi.id_ingredient) AS nb_ingredients
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
GROUP BY f.nom_focaccia
ORDER BY nb_ingredients DESC;

-- ==========================================================
-- 9️⃣  Trouver toutes les focaccias sans viande (végétariennes)
-- ==========================================================
SELECT DISTINCT f.nom_focaccia
FROM focaccia f
WHERE f.id_focaccia NOT IN (
    SELECT fi.id_focaccia
    FROM focaccia_ingredient fi
    JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
    WHERE i.nom_ingredient IN ('Jambon cuit', 'Jambon fumé', 'Salami', 'Bacon')
)
ORDER BY f.nom_focaccia;

-- ==========================================================
-- 🔟  Lister les boissons de type "Soda" moins chères que 3 €
-- ==========================================================
SELECT nom_boisson, prix
FROM boisson
WHERE type_boisson = 'Soda' AND prix < 3
ORDER BY prix ASC;

-- ==========================================================
-- ✅ Fin du script de test
-- ==========================================================
