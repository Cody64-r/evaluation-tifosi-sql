# 🍕 Projet Tifosi – Base de données MySQL

**Auteur :** Cody Russell  
**Date :** 03/11/2025  
**Formation :** Centre Européen de Formation  
**Sujet :** Conception d’une base de données pour le site *Tifosi*

---

## 🎯 Objectif du projet

Le projet **Tifosi** a pour but de concevoir et de mettre en œuvre une **base de données MySQL** permettant de gérer un site de restauration italienne spécialisé dans les **focaccias**, les **boissons**, et leurs **marques**.

La base doit permettre de :
- Gérer les focaccias (nom, prix, composition)  
- Gérer les ingrédients et leurs relations N–N avec les focaccias  
- Gérer les boissons et leurs marques  
- Réaliser des requêtes d’analyse sur ces données  

---

## 🗂️ Structure du projet

Le dossier contient les fichiers suivants :

| Fichier | Description |
|----------|--------------|
| `01_creation.sql` | Script de création de la base de données et des tables |
| `02_insertion.sql` | Insertion des données de test (marques, boissons, ingrédients, focaccias) |
| `03_requetes.sql` | Ensemble de requêtes SQL pour tester et exploiter la base |
| `README.md` | Documentation du projet |

---

## 🧱 Modèle conceptuel

### Entités principales :
- **Focaccia** (id, nom, prix)  
- **Ingrédient** (id, nom)  
- **Boisson** (id, nom, type, prix, id_marque)  
- **Marque** (id, nom)

### Relations :
- Une focaccia contient **plusieurs ingrédients** (relation N–N via `focaccia_ingredient`)
- Une boisson appartient à **une marque**
- Une marque peut produire **plusieurs boissons**

---

## 🧩 Instructions d’installation

1. **Ouvrir MySQL Workbench**
2. Créer une nouvelle connexion (ex. *Connexion Tifosi*)
3. Exécuter les scripts dans cet ordre :

   ```sql
   SOURCE 01_creation.sql;
   SOURCE 02_insertion.sql;
   SOURCE 03_requetes.sql;
