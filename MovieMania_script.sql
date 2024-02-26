CREATE DATABASE movie_mania;
USE movie_mania;

CREATE TABLE movie (
movie_id INT AUTO_INCREMENT PRIMARY KEY,
movie_title VARCHAR(64) NOT NULL,
release_year INT NOT NULL,
imdb_rating DECIMAL(2, 1)
);

CREATE TABLE genre (
genre_id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(64) NOT NULL
);

CREATE TABLE director (
director_id INT AUTO_INCREMENT PRIMARY KEY,
director_name VARCHAR(64) NOT NULL
);

CREATE TABLE actor (
actor_id INT AUTO_INCREMENT PRIMARY KEY,
actor_name VARCHAR(64) NOT NULL
);

CREATE TABLE genre_to_movie(
movie_id INT NOT NULL,
genre_id INT NOT NULL,
primary key(movie_id, genre_id),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE director_to_movie(
movie_id INT NOT NULL,
director_id INT NOT NULL,
primary key(movie_id, director_id),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (director_id) REFERENCES director(director_id)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE actor_to_movie(
movie_id INT NOT NULL,
actor_id INT NOT NULL,
primary key(movie_id, actor_id),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (actor_id) REFERENCES actor(actor_id)
ON UPDATE CASCADE ON DELETE CASCADE
);

 CREATE TABLE user (
 user_id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(64) NOT NULL UNIQUE,
 email VARCHAR(64) NOT NULL,
 password VARCHAR(64) NOT NULL 
 );
 

CREATE TABLE user_list (
list_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
list_name VARCHAR(64) NOT NULL,
UNIQUE (user_id, list_name),
FOREIGN KEY (user_id) REFERENCES user(user_id)
ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE user_list_to_movie (
list_id INT NOT NULL,
movie_id INT NOT NULL,
FOREIGN KEY (list_id) REFERENCES user_list(list_id)
ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
ON UPDATE CASCADE ON DELETE CASCADE
);

-- Total: 10 tables
 

DELIMITER $$

CREATE PROCEDURE SearchMovies(
    IN p_title VARCHAR(64),
    IN p_genre_name VARCHAR(64),
    IN p_release_year int,
    IN p_actor_name VARCHAR(64),
    IN p_director_name VARCHAR(64)
)

BEGIN
    SELECT DISTINCT m.*
    FROM movie m
    LEFT JOIN genre_to_movie gm ON m.movie_id = gm.movie_id
	LEFT JOIN genre g ON gm.genre_id = g.genre_id
    LEFT JOIN actor_to_movie am ON m.movie_id = am.movie_id
    LEFT JOIN actor a ON am.actor_id = a.actor_id
    LEFT JOIN director_to_movie dm ON m.movie_id = dm.movie_id
    LEFT JOIN director d ON dm.director_id = d.director_id
    WHERE (p_title IS NULL OR m.movie_title LIKE CONCAT('%', p_title, '%'))
		AND (p_genre_name IS NULL OR g.genre_name LIKE CONCAT('%', p_genre_name, '%'))
       AND (p_release_year IS NULL OR m.release_year = p_release_year)
       AND (p_actor_name IS NULL OR a.actor_name LIKE CONCAT('%', p_actor_name, '%'))
      AND (p_director_name IS NULL OR d.director_name LIKE CONCAT('%', p_director_name, '%'));
END$$

DELIMITER ;

Call SearchMovies('Modern Times', null, null, null);
Call SearchMovies(null, 1936, null, null);
Call SearchMovies(null, null, 'Tim', null);
Call SearchMovies(null, null, null, 'nolan');
Call SearchMovies(null, 'West',null, null, null);

-- Procedure: Create User 
DELIMITER $$

CREATE PROCEDURE create_user(IN p_user_name VARCHAR(64), IN p_email VARCHAR(64), IN p_password VARCHAR(64))
BEGIN
	DECLARE user_id INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- You can customize this error message
        SELECT 'Error: The username already exists or other SQL error occurred.' AS ErrorMessage;
    END;
	INSERT INTO user (username, email, password) VALUES (p_user_name, p_email, p_password);
    
    SELECT u.user_id into user_id FROM user u WHERE u.username = p_user_name;
    
    CALL create_default_list(user_id);
END $$
 
DELIMITER ;


--  Procedure: Create Default List
DELIMITER $$
 
CREATE PROCEDURE create_default_list(IN p_user_id INT)
BEGIN
	DECLARE defaultListName VARCHAR(64);
	SET defaultListName = 'My List';
	INSERT INTO user_list (user_id, list_name) VALUES (p_user_id, defaultListName);
END $$
 
DELIMITER ;


-- Procedure: Create New List
DELIMITER $$
 
CREATE PROCEDURE create_new_list(IN p_user_id INT, IN newListName VARCHAR(64))
BEGIN
	DECLARE listExists INT;
	SELECT COUNT(*) INTO listExists FROM user_list 
             WHERE user_id = p_user_id AND list_name = newListName;
	IF listExists = 0 THEN
    	INSERT INTO user_list (user_id, list_name) VALUES (p_user_id, newListName);
	ELSE
    	SELECT 'The name of the list already exists.';
	END IF;
END $$
 
DELIMITER ;


-- Function: Find the list_id of a list given its list_name
DELIMITER $$
 
CREATE FUNCTION get_list_id(p_user_id INT, p_list_name VARCHAR(64)) 
RETURNS INT DETERMINISTIC READS SQL DATA
BEGIN
    DECLARE listId INT DEFAULT NULL;
    SELECT list_id INTO listId FROM user_list 
        WHERE user_id = p_user_id AND list_name = p_list_name;
    IF listId IS NULL THEN
        -- Handle the case where no list is found. You can set a default value or raise an error.
        SET listId = -1; -- Example: set to -1 or some other indicator
    END IF;
    RETURN listId;
END $$ 
DELIMITER ;


-- Procedure: Delete a list of an user but make sure there will always be at least one list
DELIMITER $$
 
CREATE PROCEDURE delete_list_safely(IN p_user_id INT, IN p_list_id INT)
BEGIN
	DECLARE remainingLists INT;
	SELECT COUNT(*) INTO remainingLists FROM user_list WHERE user_id = p_user_id;
 
	IF remainingLists > 1 THEN
    	DELETE FROM user_list WHERE user_id = p_user_id AND list_id = p_list_id;
	ELSE
    	SELECT 'At least one list should remain. Deletion not allowed.';
	END IF;
END $$
 
DELIMITER ;

-- Procedure: Modify the name of a list
DELIMITER $$
 
CREATE PROCEDURE update_list_name(IN p_list_id INT, IN newListName VARCHAR(64))
BEGIN
    UPDATE user_list SET list_name = newListName WHERE list_id = p_list_id;
END $$
 
DELIMITER ;


-- Procedure: Add a movie to a list
DELIMITER $$
 
CREATE PROCEDURE add_movie_to_list(IN p_list_id INT, IN p_movie_id INT)
BEGIN
	DECLARE movieExists INT DEFAULT 0;

    SELECT COUNT(*)
    INTO movieExists
    FROM user_list_to_movie
    WHERE list_id = p_list_id AND movie_id = p_movie_id;
	IF movieExists = 0 THEN
        -- If the movie is not in the list, insert it
        INSERT INTO user_list_to_movie (list_id, movie_id) VALUES (p_list_id, p_movie_id);
    ELSE
		SELECT 'This movie already exists!';
    END IF;
END $$
 
DELIMITER ;


-- Procedure: Delete a movie from a list
DELIMITER $$
 
CREATE PROCEDURE delete_movie_from_list(IN p_list_id INT, IN p_movie_id INT)
BEGIN
	DELETE FROM user_list_to_movie WHERE list_id = p_list_id AND movie_id = p_movie_id;
END $$
 
DELIMITER ;

-- Procedure: get the size of movies from a list
DELIMITER $$ 
CREATE PROCEDURE get_size_from_list(IN p_list_id INT)
BEGIN
	SELECT COUNT(*) AS sizeOfList FROM user_list_to_movie WHERE list_id = p_list_id;
END $$
 
DELIMITER ;

-- Procedure: Get all movie from a list
DELIMITER $$
CREATE PROCEDURE get_movies_from_list(IN p_list_id INT)
BEGIN
	SELECT * 
    FROM movie m
    JOIN user_list_to_movie ulm ON m.movie_id = ulm.movie_id 
    WHERE ulm.list_id = p_list_id;
END $$

DELIMITER ;

-- test
CALL create_user('ianwu0915', 'ianwu0915@gmail.com', '1234');
CALL create_user('jazzcort', 'tao@gmail.com', '12345678');

SELECT * from user;
SELECT * from user_list;

CALL add_movie_to_list(14, 12);
CALL add_movie_to_list(14, 1);
CALL add_movie_to_list(14, 5);
CALL get_movies_from_list(14);
CALL get_size_from_list(14);
CALL create_new_list(21, 'My Top Movies');
CALL add_movie_to_list(15, 6);
CALL add_movie_to_list(15, 7);
CALL add_movie_to_list(15, 8);
CALL get_movies_from_list(15);

CALL add_movie_to_list(12, 20);
CALL add_movie_to_list(12, 21);
CALL add_movie_to_list(12, 22);
CALL get_movies_from_list(12);
CALL update_list_name(12, 'My Movie List');

CALL delete_movie_from_list(12,22);
CALL delete_list_safely(20, 12);

DELETE FROM user_list_to_movie WHERE list_id = 11;

-- Insert data

INSERT INTO director (director_name) VALUES 
('Christopher Nolan'),
('Irvin Kershner'),
('Peter Jackson'),
('Lana Wachowski'),
('Lilly Wachowski'),
('Milos Forman'),
('Martin Scorsese'),
('Akira Kurosawa'),
('David Fincher'),
('Fernando Meirelles'),
('Kátia Lund'),
('Roberto Benigni'),
('Jonathan Demme'),
('George Lucas'),
('Frank Capra'),
('Steven Spielberg'),
('Hayao Miyazaki'),
('Frank Darabont'),
('Luc Besson'),
('Masaki Kobayashi'),
('Bryan Singer'),
('Roger Allers'),
('Rob Minkoff'),
('Tony Kaye'),
('Robert Zemeckis'),
('Roman Polanski'),
('Charles Chaplin'),
('James Cameron'),
('Olivier Nakache'),
('Éric Toledano'),
('Alfred Hitchcock'),
('Ridley Scott'),
('Damien Chazelle'),
('Sergio Leone'),
('Anthony Russo'),
('Joe Russo'),
('Michael Curtiz'),
('Isao Takahata'),
('Francis Ford Coppola'),
('Sidney Lumet'),
('Quentin Tarantino'),
('Todd Phillips');

INSERT INTO actor (actor_name) VALUES 
('Tim Robbins'),
('Morgan Freeman'),
('Marlon Brando'),
('Al Pacino'),
('Robert De Niro'),
('Christian Bale'),
('Heath Ledger'),
('Henry Fonda'),
('Lee J. Cobb'),
('Liam Neeson'),
('Ralph Fiennes'),
('Elijah Wood'),
('Viggo Mortensen'),
('John Travolta'),
('Uma Thurman'),
('Clint Eastwood'),
('Eli Wallach'),
('Brad Pitt'),
('Edward Norton'),
('Joaquin Phoenix'),
('Ian McKellen'),
('Tom Hanks'),
('Robin Wright'),
('Leonardo DiCaprio'),
('Joseph Gordon-Levitt'),
('Mark Hamill'),
('Harrison Ford'),
('Keanu Reeves'),
('Laurence Fishburne'),
('Jack Nicholson'),
('Louise Fletcher'),
('Ray Liotta'),
('Toshirô Mifune'),
('Takashi Shimura'),
('Alexandre Rodrigues'),
('Leandro Firmino'),
('Roberto Benigni'),
('Nicoletta Braschi'),
('Jodie Foster'),
('Anthony Hopkins'),
('James Stewart'),
('Donna Reed'),
('Matt Damon'),
('Daveigh Chase'),
('Suzanne Pleshette'),
('Michael Clarke Duncan'),
('Jean Reno'),
('Gary Oldman'),
('Tatsuya Nakadai'),
('Akira Ishihama'),
('Matthew McConaughey'),
('Anne Hathaway'),
('Kevin Spacey'),
('Gabriel Byrne'),
('Matthew Broderick'),
('Jeremy Irons'),
('Edward Furlong'),
('Michael J. Fox'),
('Christopher Lloyd'),
('Adrien Brody'),
('Thomas Kretschmann'),
('Charles Chaplin'),
('Paulette Goddard'),
('Arnold Schwarzenegger'),
('Linda Hamilton'),
('François Cluzet'),
('Omar Sy'),
('Anthony Perkins'),
('Janet Leigh'),
('Russell Crowe'),
('Virginia Cherrill'),
('Miles Teller'),
('J.K. Simmons'),
('Charles Bronson'),
('Hugh Jackman'),
('Robert Downey Jr.'),
('Chris Evans'),
('Humphrey Bogart'),
('Ingrid Bergman'),
('Tsutomu Tatsumi'),
('Ayano Shiraishi');



INSERT INTO genre (genre_name) VALUES
('Action'),
('Comedy'),
('Crime'),
('Sci-Fi'),
('Romance'),
('Drama'),
('Thriller'),
('Western'),
('Horror'),
('Fantasy'),
('Documentary'),
('Animation'),
('Musical'),
('Biography'),
('Mystery'),
('Adventure'),
('Family'),
('War'),
('History'),
('Music');

SELECT 
	actor_name 
from actor 
LEFT JOIN actor_to_movie ON actor.actor_id = actor_to_movie.actor_id
WHERE actor_to_movie.movie_id = 1;









