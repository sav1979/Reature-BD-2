create table if not exists cataloge (
	executors id primary key varchar(40) unique not null references Aldums, 
	nickname varchar(40) unique not null, 
	genre id id primary key varchar(50) unique references List genres 
);

create table if not exists List albums (
	executors id varchar(40) unique not null, 
	album id foreign key varchar(40) unique references List tracks,
	album name text,
	year of release date
);

create table if not exists List tracks (
	album id primary key varchar(40) not null, 
	track id text unique not null,
	title track text not null,
	tame numeric
	);
	
	
create table if not exists List of genres (
	genre id foreign key varchar(40) unique not null,
	genre name text not null
	);