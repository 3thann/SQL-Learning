DROP DATABASE IF EXISTS biblio;
CREATE DATABASE IF NOT EXISTS biblio;
USE biblio;

DROP TABLE IF EXISTS auteurs;
CREATE TABLE IF NOT EXISTS auteur(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(255),
    prenom VARCHAR(255)
);

DROP TABLE IF EXISTS genres;
CREATE TABLE IF NOT EXISTS genre(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    genre VARCHAR(255)
);


DROP TABLE IF EXISTS livres;
CREATE TABLE IF NOT EXISTS livre(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre VARCHAR(255),
    auteur_id INT,
    genre_id INT,
    FOREIGN KEY (auteur_id) REFERENCES auteur(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);

INSERT INTO auteur VALUES(NULL, 'Baudelaire', 'Charles');
INSERT INTO auteur VALUES(NULL, 'Moliere', NULL);
INSERT INTO auteur VALUES(NULL, 'Rowling', 'J. K.');

INSERT INTO genre VALUES(NULL, 'Theatre');
INSERT INTO genre VALUES(NULL, 'Roman');
INSERT INTO genre VALUES(NULL, 'Poesie');

INSERT INTO livre VALUES(NULL, 'Le cygne', 1, 3);
INSERT INTO livre VALUES(NULL, "L'avare", 2, 1);
INSERT INTO livre VALUES(NULL, "Harry Potter", 3, 2);



GRANT ALL PRIVILEGES ON biblio TO 'toto'@'localhost' IDENTIFIED BY 'toto';