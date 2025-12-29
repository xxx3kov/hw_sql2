create table if not exists Genres (
	id serial primary key,
	name varchar(40) not null 
);

create table if not exists Artists (
	id serial primary key, 
	nickname varchar(60) not null
);

create table if not exists ArtistGenre (
	ArtistID integer references Artists(id),
	GenreID integer references Genres(id),
	constraint pk_ArtistGenre primary key (ArtistID, GenreID)
);

create table if not exists Music_albums (
	id serial primary key, 
	release_year date,
	title varchar(40) not null
);

create table if not exists Tracks (
	id serial primary key,
	duration integer,
	name_track varchar(40) not null,
	AlbumID integer references Music_albums(id)
);

create table if not exists Collection (
	id serial primary key,
	name_collection varchar(60) not null,
	release_year date
);

create table if not exists CollectionTracks (
	CollectionID integer references Collection(id),
	TrackID integer references Tracks(id),
	constraint pk_CollectionTracks primary key (CollectionID, TrackID)
);
	

create table if not exists ArtistsAlbums (
	ArtistID integer references Artists(id),
	AlbumID integer references Music_albums(id),
	constraint pk_ArtistsAlbums primary key (ArtistID, AlbumID)
);