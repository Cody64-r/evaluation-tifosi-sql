-- ==========================================================
-- Script : 01_creation.sql
-- Projet : Base de données Tifosi
-- Auteur : Cody Russell
-- Date : 03/11/2025
-- Description :
--   Création de la base de données Tifosi, des tables et des contraintes
-- ==========================================================

-- 🔹 1. Suppression de la base si elle existe déjà
DROP DATABASE IF EXISTS tifosi;

-- 🔹 2. Création de la base de données
CREATE DATABASE tifosi CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 🔹 3. Utilisation de la base
USE tifosi;

-- 🔹 4. Création de l'utilisateur (si nécessaire)
-- Remplace 'motdepasse' par un mot de passe personnel
CREATE USER IF NOT EXISTS 'tifosi'@'localhost' IDENTIFIED BY 'motdepasse';
GRANT ALL PRIVILEGES ON tifosi.* TO 'tifosi'@'localhost';
FLUSH PRIVILEGES;

-- ==========================================================
-- TABLE : MARQUE
-- ==========================================================
CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(100) NOT NULL UNIQUE
);

-- ==========================================================
-- TABLE : BOISSON
-- ==========================================================
CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(100) NOT NULL,
    type_boisson VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- ==========================================================
-- TABLE : INGREDIENT
-- ==========================================================
CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(100) NOT NULL UNIQUE
);

-- ==========================================================
-- TABLE : FOCACCIA
-- ==========================================================
CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(100) NOT NULL,
    prix DECIMAL(5,2) NOT NULL
);

-- ==========================================================
-- TABLE : FOCACCIA_INGREDIENT (table associative N–N)
-- ==========================================================
CREATE TABLE focaccia_ingredient (
    id_focaccia INT,
    id_ingredient INT,
    quantite DECIMAL(5,2),
    unite VARCHAR(20),
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ==========================================================
-- ✅ Fin du script
-- ==========================================================

-- Pour vérifier : SHOW TABLES;
-- Pour tester : DESCRIBE focaccia;
