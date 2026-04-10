# 🛒 Système de Gestion de Base de Données E-commerce (SQL)

## 📝 Présentation du Projet
Ce projet porte sur la conception et l'implémentation d'une base de données relationnelle robuste pour une plateforme de vente en ligne. L'objectif est de structurer les données essentielles (Clients, Produits, Commandes) tout en garantissant l'intégrité des données et la performance des requêtes.

## 🛠️ Expertise Technique
* **Modélisation Relationnelle :** Création d'un schéma optimisé avec gestion des clés primaires (`PK`) et étrangères (`FK`).
* **Analyse de Données (BI) :** Utilisation de requêtes SQL avancées pour extraire des indicateurs de performance (ex: meilleurs clients, gestion des stocks).
* **Normalisation :** Application des formes normales pour éviter la redondance des données.

## 🗂️ Structure de la Base de Données
Le projet s'articule autour de trois entités principales liées entre elles :
1. **Clients** : Informations personnelles et localisation.
2. **Produits** : Catalogue avec prix et état des stocks.
3. **Commandes** : Transactions liant les clients aux produits achetés.

## 🚀 Contenu du Dépôt
* `script_final.sql` : Script complet contenant la création des tables, l'insertion de jeux de données tests et les requêtes d'analyse métier.

## 📊 Exemple de Requête d'Analyse
```sql
-- Calcul du chiffre d'affaires total par client
SELECT c.nom, SUM(co.total_montant) AS total_depense
FROM Clients c
JOIN Commandes co ON c.client_id = co.client_id
GROUP BY c.nom
ORDER BY total_depense DESC;
