
CREATE TABLE students(
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	picture TEXT,
	bio TEXT,
	tagline TEXT,
	email TEXT,
	blog TEXT,
	linkedin TEXT,
	twitter TEXT,
	github TEXT,
	codeschool TEXT,
	coderwall TEXT,
	stackoverflow TEXT,
	treehouse TEXT,
	feed_1 TEXT,
	feed_2 TEXT
);

CREATE TABLE fav_apps(
	id INTEGER PRIMARY KEY,
	students_id INTEGER,
	name TEXT,
	description TEXT
);