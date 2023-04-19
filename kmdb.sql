
DROP TABLE IF EXISTS studios;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movie_roles;

CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT, 
    year_released INTEGER,
    MPAA_rating TEXT,
    studio_id INTEGER
);

CREATE TABLE actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    actor_name TEXT
);

CREATE TABLE movie_roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    character_name TEXT,
    movie_id INTEGER,
    actor_id INTEGER
);

INSERT INTO studios (
    studio_name
)
VALUES (
    "Warner Bros."
);

INSERT INTO movies (
    title,
    year_released,
    MPAA_rating,
    studio_ID
)
VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    "1"
);

INSERT INTO movies (
    title,
    year_released,
    MPAA_rating,
    studio_ID
)
VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    "1"
);

INSERT INTO movies (
    title,
    year_released,
    MPAA_rating,
    studio_ID
)
VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "1"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Christian Bale"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Michael Caine"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Liam Neeson"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Katie Holmes"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Gary Oldman"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Heath Ledger"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Aaron Eckhart"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Maggie Gyllenhaal"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Tom Hardy"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Joseph Gordon-Levitt"
);

INSERT INTO actors (
    actor_name
)
VALUES (
    "Anne Hathaway"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    "1",
    "1"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Alfred",
    "1",
    "2"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Ra's Al Ghul",
    "1",
    "3"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Rachel Dawes",
    "1",
    "4"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Commissioner Gordon",
    "1",
    "5"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    "2",
    "1"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Joker",
    "2",
    "6"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Harvey Dent",
    "2",
    "7"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Alfred",
    "2",
    "2"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Rachel Dawes",
    "2",
    "8"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Bruce Wayne",
    "3",
    "1"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Commissioner Gordon",
    "3",
    "5"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Bane",
    "3",
    "9"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "John Blake",
    "3",
    "10"
);

INSERT INTO movie_roles (
    character_name,
    movie_id,
    actor_id
)
VALUES (
    "Selina Kyle",
    "3",
    "11"
);

.mode column
.headers off


.print ""
.print "Movies"
.print "========"
.print ""
SELECT movies.title, movies.year_released, movies.MPAA_rating, studios.studio_name
FROM movies INNER JOIN studios ON movies.studio_ID = studios.id;


.print ""
.print "Top Cast"
.print "========"
.print ""
SELECT movies.title, actors.actor_name, movie_roles.character_name
FROM movie_roles 
INNER JOIN movies ON movie_roles.movie_id = movies.id 
INNER JOIN actors ON actors.id = movie_roles.actor_id;
