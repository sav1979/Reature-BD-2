create table if not exists List_executors (
	executors id primary key, 
	nickname varchar(40) not null, 
	genre id references List genres(genre_id) 
);

create table if not exists List albums (
	executors_id primary key not null references List_executors (executors id), 
	album_id varchar(40) unique not null,
	album_name text not null,
	year_of_release date
);

create table if not exists List_tracks (
	album_id primary key not null references List_albums (album_id), 
	track_id text unique not null,
	title_track text not null,
	tame numeric
	);
	
	
create table if not exists List_of_genres (
	genre_id primary key,
	genre_name text not null
	);