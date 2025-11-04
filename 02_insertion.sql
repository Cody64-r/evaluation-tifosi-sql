-- ==========================================================
-- Script : 02_insertion.sql
-- Projet : Base de données Tifosi
-- Auteur : Cody Russell
-- Date : 03/11/2025
-- Description :
--   Insertion des données de test dans la base Tifosi
-- ==========================================================

USE tifosi;

-- ==========================================================
-- TABLE : MARQUE
-- ==========================================================
INSERT INTO marque (nom_marque) VALUES
('Coca-Cola'),
('PepsiCo'),
('Cristalline'),
('Monster'),
('San Pellegrino'),
('Lipton'),
('Heineken');

-- ==========================================================
-- TABLE : BOISSON
-- ==========================================================
INSERT INTO boisson (nom_boisson, type_boisson, prix, id_marque) VALUES
('Coca-Cola', 'Soda', 2.50, 1),
('Pepsi', 'Soda', 2.40, 2),
('Cristalline', 'Eau', 1.20, 3),
('Monster Energy', 'Boisson énergisante', 3.00, 4),
('San Pellegrino', 'Eau gazeuse', 2.00, 5),
('Lipton Ice Tea', 'Thé glacé', 2.30, 6),
('Heineken', 'Bière', 3.50, 7);

-- ==========================================================
-- TABLE : INGREDIENT
-- ==========================================================
INSERT INTO ingredient (nom_ingredient) VALUES
('Ail'),
('Ananas'),
('Artichaut'),
('Bacon'),
('Base Tomate'),
('Base Crème'),
('Champignon'),
('Chèvre'),
('Cresson'),
('Emmental'),
('Gorgonzola'),
('Jambon cuit'),
('Jambon fumé'),
('Oeuf'),
('Oignon'),
('Olive noire'),
('Olive verte'),
('Parmesan'),
('Piment'),
('Poivre'),
('Pomme de terre'),
('Raclette'),
('Salami'),
('Tomate cerise'),
('Mozzarella');

-- ==========================================================
-- TABLE : FOCACCIA
-- ==========================================================
INSERT INTO focaccia (nom_focaccia, prix) VALUES
('Focaccia Classica', 8.90),
('Focaccia 4 Fromaggi', 10.50),
('Focaccia Mediterranea', 9.80),
('Focaccia Prosciutto', 10.90),
('Focaccia Piccante', 9.50),
('Focaccia Vegetariana', 9.20);

-- ==========================================================
-- TABLE : FOCACCIA_INGREDIENT (relations N–N)
-- ==========================================================
-- Focaccia Classica
INSERT INTO focaccia_ingredient VALUES (1, 5, 100, 'g');  -- Base Tomate
INSERT INTO focaccia_ingredient VALUES (1, 25, 100, 'g'); -- Mozzarella
INSERT INTO focaccia_ingredient VALUES (1, 24, 50, 'g');  -- Tomate cerise

-- Focaccia 4 Fromaggi
INSERT INTO focaccia_ingredient VALUES (2, 6, 100, 'g');  -- Base Crème
INSERT INTO focaccia_ingredient VALUES (2, 10, 50, 'g');  -- Emmental
INSERT INTO focaccia_ingredient VALUES (2, 11, 50, 'g');  -- Gorgonzola
INSERT INTO focaccia_ingredient VALUES (2, 8, 50, 'g');   -- Chèvre
INSERT INTO focaccia_ingredient VALUES (2, 18, 30, 'g');  -- Parmesan

-- Focaccia Mediterranea
INSERT INTO focaccia_ingredient VALUES (3, 5, 100, 'g');
INSERT INTO focaccia_ingredient VALUES (3, 24, 50, 'g');
INSERT INTO focaccia_ingredient VALUES (3, 16, 20, 'g');
INSERT INTO focaccia_ingredient VALUES (3, 7, 30, 'g');

-- Focaccia Prosciutto
INSERT INTO focaccia_ingredient VALUES (4, 6, 100, 'g');
INSERT INTO focaccia_ingredient VALUES (4, 12, 80, 'g');
INSERT INTO focaccia_ingredient VALUES (4, 25, 100, 'g');

-- Focaccia Piccante
INSERT INTO focaccia_ingredient VALUES (5, 5, 100, 'g');
INSERT INTO focaccia_ingredient VALUES (5, 19, 10, 'g');
INSERT INTO focaccia_ingredient VALUES (5, 23, 50, 'g');
INSERT INTO focaccia_ingredient VALUES (5, 25, 100, 'g');

-- Focaccia Vegetariana
INSERT INTO focaccia_ingredient VALUES (6, 5, 100, 'g');
INSERT INTO focaccia_ingredient VALUES (6, 24, 50, 'g');
INSERT INTO focaccia_ingredient VALUES (6, 7, 30, 'g');
INSERT INTO focaccia_ingredient VALUES (6, 3, 40, 'g');
INSERT INTO focaccia_ingredient VALUES (6, 9, 20, 'g');

-- ==========================================================
-- ✅ Fin du script d’insertion
-- ==========================================================
