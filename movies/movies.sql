
CREATE TABLE director (
  director_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  dob DATE,
  awards TEXT
);


CREATE TABLE movies (
  movies_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  hero VARCHAR(100),
  release_year YEAR,
  language VARCHAR(50),
  rating DECIMAL(10,1),
  director_name VARCHAR(100),
  director_id INT,
  FOREIGN KEY (director_id) REFERENCES director(director_id)
);


INSERT INTO director (name, dob, awards) VALUES
('Rajkumar Hirani', '1962-11-20', 'Filmfare Award'),
('Sanjay Leela Bhansali', '1963-02-24', 'National Award'),
('Farah Khan', '1965-01-09', 'Best Choreographer');


INSERT INTO movies (title, hero, release_year, language, rating, director_name, director_id) VALUES
('3 Idiots', 'Aamir Khan', 2009, 'Hindi', 9.0, 'Rajkumar Hirani', 1),
('Padmaavat', 'Ranveer Singh', 2018, 'Hindi', 8.5, 'Sanjay Leela Bhansali', 2),
('Om Shanti Om', 'Shahrukh Khan', 2007, 'Hindi', 7.8, 'Farah Khan', 3);


SELECT * FROM director;
SELECT * FROM movies;


SELECT m.title, m.hero, m.release_year, m.rating, d.name AS director, d.awards
FROM movies m
JOIN director d ON m.director_id = d.director_id;
