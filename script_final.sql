-- 1. Création des Tables
CREATE TABLE Clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    ville VARCHAR(50)
);

CREATE TABLE Produits (
    produit_id INT PRIMARY KEY AUTO_INCREMENT,
    nom_produit VARCHAR(150),
    prix DECIMAL(10, 2),
    stock_quantite INT
);

CREATE TABLE Commandes (
    commande_id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    date_commande DATE,
    total_montant DECIMAL(10, 2),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

-- Requête pour voir quel client a dépensé le plus (Analyse Business)
SELECT c.nom, SUM(co.total_montant) AS total_depense
FROM Clients c
JOIN Commandes co ON c.client_id = co.client_id
GROUP BY c.nom
ORDER BY total_depense DESC;