-- Primary Key Constraints
------------------------------
-- id is a primary key which means it must be unique, but there is already a movie in the Movie table with an id of 2
insert into Movie
values(2, 'Zootopia', 1999, 'R', 'ESPN');

-- id is a primary key which means it must be unique, but there is already an actor in the Actor table with an id of 1
insert into Actor
values(1, 'Bu', 'Bayton', 'Male', '1975-11-18', '2018-10-18');

-- id is a primary key which means it must be unique, but there is already a director in the Director table with an id of 16
insert into Director
values(16, 'Bu', 'Bayton', '1975-11-18', '2018-10-18');

-- Referential Integrity Constraints
------------------------------
-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 10
insert into Sales
values(10, 24592, 386880);

-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 1
insert into MovieGenre
values(1, 'Romance');

-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 1
insert into MovieDirector
values(1, 112);

-- did is a foreign key that references id in the Director table, so any did needs to be a valid id in Director, but there is no director with an id of 15
insert into MovieDirector
values(9, 15);

-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 1
insert into MovieActor
values(1, 10, 'Baseball Player');

-- aid is a foreign key that references id in the Actor table, so any aid needs to be a valid id in Actor, but there is no actor with an id of 2
insert into MovieActor
values(9, 2, 'Dentist');

-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 1
insert into MovieRating
values(1, 10, 10);

-- mid is a foreign key that references id in the Movie table, so any mid needs to be a valid id in Movie, but there is no movie with an id of 1
insert into Review
values('Bob Smith', '2017-07-23 00:00:00', 1, 100, 'Wonderful movie blah blah');

-- Check Constraints
------------------------------
-- because the current year is 2019, no movie can have a release date after 2019
insert into Movie
values(2, 'The Notebook', 2021, 'PG-13', 'Lakeshore Entertainment');

-- a movie's id needs to be non-negative, so the following modification is invalid
insert into Movie
values(-10, 'The Notebook', 2000, 'PG-13', 'Lakeshore Entertainment');

-- an actor's id needs to be non-negative, so the following modification is invalid
insert into Actor
values(-10, 'Arabella', 'Isra', 'Female', '1975-05-25', '');

-- a movie's imdb rating needs to be between 0 and 100, so the following modification is invalid
insert into MovieRating
values(2, 1000, 10);

-- a movie's rot rating needs to be between 0 and 100, so the following modification is invalid
insert into MovieRating
values(2, 100, 999);