CREATE DATABASE record_company;
USE record_company;
CREATE TABLE bands(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);

INSERT INTO bands (name)
VALUES ("mohamed","ali","fathy"); 

SELECT * FROM bands;

SELECT * FROM bands LIMIT 2;

SELECT name FROM bands;

SELECT id AS 'ID' , name AS 'band name'FROM bands;

SELECT * FROM bands ORDER BY name ASC;

INSERT INTO albums (name,release_year, band_id)
VALUES ("RISE", 2012, 1),
		("mohsen", 2012, 2),
        ("YA 3ALY 3LIA", 2004, 3),
        ("DAIMOND", 2012, 2),
        ("TEST ALBUM", NULL, 3);
        
SELECT * FROM albums;

-- SELECT DISTINCT name FROM albums;

UPDATE albums
SET release_year= 1999
WHERE id = 1;

SELECT * FROM albums
WHERE release_year < 2000;

SELECT * FROM albums
WHERE name LIKE "%ON%" OR band_id = 1;

SELECT * FROM albums
WHERE name LIKE "%SE%" AND band_id = 1;

SELECT * FROM albums
WHERE release_year BETWEEN 1900 AND 2010 ;

SELECT * FROM albums
WHERE release_year IS NULL;

DELETE FROM albums WHERE id = 10;

SELECT * FROM albums;

SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;

SELECT * FROM bands
RIGHT JOIN albums ON bands.id = albums.band_id;