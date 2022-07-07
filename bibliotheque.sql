pwd, ls, cd...

CREATE DATABASE bibliotheque2;

USE bibliotheque2;

CREATE TABLE artist 
(
  id_artist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  birth_year DATE NOT NULL
);

CREATE TABLE album
(
  id_album INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(80),
  release_year DATE NOT NULL,
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artist(id_artist)
   );
   
/*ALTER TABLE album
  ADD CONSTRAINT fk_album_artist,
  FOREIGN KEY (artist_id),
  REFERENCES artist(id);*/
    