CREATE TABLE if NOT EXISTS Genres (
	id serial primary key,
	name varchar(40) not null 
);

CREATE TABLE if NOT EXISTS Artists (
	id serial primary key, 
	nickname varchar(60) not null
);

CREATE TABLE if NOT EXISTS ArtistGenre (
	ArtistID integer references Artists(id),
	GenreID integer references Genres(id),
	constraint pk_ArtistGenre primary key (ArtistID, GenreID)
);

CREATE TABLE if NOT EXISTS Music_albums (
	id serial primary key, 
	release_year date,
	title varchar(40) not null
);

CREATE TABLE if NOT EXISTS Tracks (
	id serial primary key,
	duration integer,
	name_track varchar(40) not null,
	AlbumID integer references Music_albums(id)
);

CREATE TABLE if NOT EXISTS Collection (
	id serial primary key,
	name_collection varchar(60) not null,
	release_year date
);

CREATE TABLE if NOT EXISTS CollectionTracks (
	CollectionID integer references Collection(id),
	TrackID integer references Tracks(id),
	constraint pk_CollectionTracks primary key (CollectionID, TrackID)
);
	

CREATE TABLE if NOT EXISTS ArtistsAlbums (
	ArtistID integer references Artists(id),
	AlbumID integer references Music_albums(id),
	constraint pk_ArtistsAlbums primary key (ArtistID, AlbumID)
);