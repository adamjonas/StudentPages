
CREATE TABLE students(
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	picture TEXT,
	bio VARCHAR(255),
	tagline VARCHAR(255),
	email VARCHAR(255),
	blog VARCHAR(255),
	linkedin VARCHAR(255),
	twitter VARCHAR(255),
	github VARCHAR(255),
	codeschool VARCHAR(255),
	coderwall VARCHAR(255),
	stackoverflow VARCHAR(255),
	treehouse VARCHAR(255),
	feed_1 VARCHAR(255),
	feed_1 VARCHAR(255)
);

CREATE TABLE fav_apps(
	id INTEGER PRIMARY KEY,
	students_id INTEGER,
	name VARCHAR(255),
	description VARCHAR(255)
);