USE codeup_test_db;


DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        artist VARCHAR(255),
                        name VARCHAR(255),
                        release_date INT,
                        sales FLOAT,
                        genre VARCHAR(255),
                     UNIQUE KEY (id),
                     UNIQUE  KEY(artist, name)
                     );


SELECT * FROM albums ;
SHOW databases ;



