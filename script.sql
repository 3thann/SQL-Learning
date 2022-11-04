DROP DATABASE IF EXISTS biblio;
CREATE DATABASE IF NOT EXISTS biblio;
USE biblio;

DROP TABLE IF EXISTS auteurs;
CREATE TABLE IF NOT EXISTS auteurs(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    prenom VARCHAR(255)
);

DROP TABLE IF EXISTS genres;
CREATE TABLE IF NOT EXISTS genres(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genre VARCHAR(255)
);


DROP TABLE IF EXISTS livres;
CREATE TABLE IF NOT EXISTS livres(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre VARCHAR(255),
    auteur_id INT,
    genre_id INT,
    FOREIGN KEY (auteur_id) REFERENCES auteur(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);

INSERT INTO auteurs VALUES(NULL, 'Baudelaire', 'Charles');
INSERT INTO auteurs VALUES(NULL, 'Moliere', NULL);
INSERT INTO auteurs VALUES(NULL, 'Rowling', 'J. K.');

INSERT INTO genres VALUES(NULL, 'Theatre');
INSERT INTO genres VALUES(NULL, 'Roman');
INSERT INTO genres VALUES(NULL, 'Poesie');

INSERT INTO livres VALUES(NULL, 'Le cygne', 1, 3);
INSERT INTO livres VALUES(NULL, "L'avare", 2, 1);
INSERT INTO livres VALUES(NULL, "Harry Potter", 3, 2);


GRANT ALL PRIVILEGES ON biblio TO 'toto'@'localhost' IDENTIFIED BY 'toto';