CREATE TABLE movie_collection(
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    budget DECIMAL(15,2),
    collection DECIMAL(15,2)
);

INSERT INTO movie_collection(name, release_year, budget, collection) VALUES
('RRR', 2022, 5500000000, 12000000000),
('Baahubali: The Beginning', 2015, 1800000000, 6500000000),
('KGF Chapter 2', 2022, 1000000000, 12000000000);

SELECT name, release_year, budget, collection, (collection - budget) AS profit FROM movie_collection;
INSERT INTO movie_collection (name, release_year, budget, collection) 
VALUES ('Radhe Shyam', 2022, 5500000000, 1800000000);

