create database Project;
use Project;

create table dbo.Genre
( 
	GenreID varchar(4) primary key not null,
	GenreType varchar(50)
);

create table dbo.Director
(
	DirecorID varchar(4) primary key not null,
	DirectorName varchar(50),
	DirectoryNationality varchar(50)
);

create table dbo.Movie
(
	MovieID varchar(4) primary key not null,
	MovieTitle varchar(55),
	ReleaseDate datetime,
	GenreID varchar(4) foreign key references dbo.Genre(GenreID),
	DirecorID varchar(4) foreign key references dbo.Director(DirecorID)
);

insert  dbo.Genre 
values		('G01', 'Action'),
			('G02', 'Comedy'),
			('G03', 'Thriller'),
			('G04', 'Drama'),
			('G05', 'Crime')
 
insert dbo.Director
values			('D01', 'Zack Snyder', 'American'),
				('D02', 'Tim Miller', 'American'),
				('D03', 'James Wan', 'Australian'),
				('D04', 'Rajkumar Hirani', 'Indian'),
				('D05', 'Ridley Scott', 'British'),
				('D06', 'Todd Phillips', 'American'),
				('D07', 'Sam Mendes', 'British'),
				('D08', 'Christopher Nolan', 'British')

insert dbo.Movie
values			('M01', 'Superman vs Batman', '2016-03-25', 'G01', 'D01'),
				('M02', 'Deadpool', '2016-02-12', 'G02', 'D02'),
				('M03', 'Furious 7', '2015-04-03', 'G03', 'D03'),
				('M04', 'PK', '2014-12-19', 'G04', 'D04'),
				('M05', 'Gladiator', '2000-05-05', 'G01', 'D05'),
				('M06', 'The Hangover', '2009-06-05', 'G02', 'D06'),
				('M07', '3 Idiots', '2009-12-25', 'G04', 'D04'),
				('M08', 'Spectre', '2015-11-06', 'G03', 'D07'),
				('M09', 'Batman Begins', '2005-06-15', 'G01', 'D08'),
				('M10', 'The Dark Knight', '2008-07-18', 'G05', 'D08')

create table dbo.Actor
(
	ActorID int identity primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Age int 
);

insert dbo.Actor
values ('Robert', 'De Niro', 76),
	   ('Jack', 'Nicholson', 88),
	   ('Marlon', 'Brando', 150),
	   ('Denzel','Washington', 65)

create table dbo.Actor_Movie
(
	ActorID int foreign key references dbo.Actor(ActorID),
	MovieID varchar(4) foreign key references dbo.Movie(MovieID)
);

insert dbo.Actor_Movie
values
(1,'M04'),
(1,'M07'),
(2,'M03'),
(2,'M09'),
(3,'M06'),
(3,'M03'),
(4,'M10'),
(4,'M01')

create table dbo.[Session]
(
	DateTimeID varchar(4) primary key,
	StartDate datetime,
	EndDate datetime
);

alter table dbo.[Session]
drop column MovieID

insert dbo.[Session]
values 
('DT01', '2007-05-08 12:35:29.123', '2007-05-08 14:35:29.123'),
('DT02', '2007-05-08 14:35:29.123', '2007-05-08 16:35:29.123'),
('DT03', '2007-05-08 15:35:29.123', '2007-05-08 17:35:29.123'),
('DT04', '2007-05-08 16:35:29.123', '2007-05-08 18:35:29.123'),
('DT05', '2007-05-08 17:35:29.123', '2007-05-08 19:35:29.123'),
('DT06', '2007-05-08 18:35:29.123', '2007-05-08 20:35:29.123'),
('DT07', '2007-05-08 19:35:29.123', '2007-05-08 21:35:29.123'),
('DT08', '2007-05-08 17:35:29.123', '2007-05-08 22:35:29.123'),
('DT09', '2007-05-08 16:35:29.123', '2007-05-08 23:35:29.123'),
('DT10', '2007-05-08 15:35:29.123', '2007-05-08 00:35:29.123')

create table dbo.Schedule
(
	MovieID varchar(4) foreign key references dbo.Movie(MovieID),
	DateTimeID varchar(4) foreign key references dbo.[Session](DateTimeID),
	Room varchar(3) foreign key references dbo.Rooms(RoorID),
	primary key(MovieID, DateTimeID, Room)
);

insert dbo.Schedule
values ('M01','DT01','R01'),
	   ('M02','DT02','R02'),
	   ('M03','DT03','R03'),
	   ('M04','DT04','R04'),
	   ('M05','DT05','R05'),
	   ('M06','DT06','R06'),
	   ('M07','DT07','R07'),
	   ('M08','DT08','R08'),
	   ('M09','DT09','R09'),
	   ('M10','DT10','R10'),
	   ('M07','DT07','R11')

create table dbo.Rooms
(
	RoorID varchar(3) primary key,
	ChairCount int
);

insert into dbo.Rooms
values
	('R01', 31),
	('R02', 32),
    ('R03', 33),
	('R04', 34),
	('R05', 35),
	('R06', 36),
	('R07', 37),
	('R08', 30),
	('R09', 33),
	('R10', 50),
	('R11', 38)