create table if not exists List_executors (
	executors id primary key, 
	nickname varchar(40) not null, 
	genre id INTEGER REFERENCES genre(genre_id) NOT NULL 
);

create table if not exists List albums (
    album_id serial PRIMARY KEY,
	executors_id INTEGER REFERENCES List_executors (executors id), 
	album_name VARCHAR(40) NOT NULL,
	year_of_release INTEGER NOT NULL
);

create table if not exists List_tracks (
    track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES List_albums (album_id) not null, 
	title_track VARCHAR(50) NOT NULL,
	tame INTEGER NOT NULL,
	);
	
create table if not exists List_of_genres (
	genre_id primary key,
	genre_name VARCHAR(50) not null
	);
	