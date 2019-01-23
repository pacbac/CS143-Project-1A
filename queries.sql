-- Get names of all actors in "Die Another Day"
SELECT CONCAT(a.first, " ", a.last) AS Actors
FROM Actor a JOIN MovieActor ma JOIN Movie m
ON ma.mid=m.id AND ma.aid=a.id
WHERE m.title="Die Another Day";

-- Get count of all actors who acted in multiple movies
SELECT COUNT(*) AS NumActorsMultipleMovies
FROM (SELECT ma.aid FROM MovieActor ma GROUP BY ma.aid HAVING COUNT(ma.mid) > 1) s;

-- Get title of movies that sell more than 1M tickets
SELECT m.title AS MovieTitle
FROM Movie m JOIN Sales s 
ON m.id=s.mid AND ticketsSold > 1000000;

-- Get title of movies who had IMDB ratings > 85% and Rotten Tomatoes ratings > 90%
SELECT m.title AS MovieTitle
FROM Movie m JOIN MovieRating mr
ON m.id=mr.mid
WHERE mr.imdb > 85 AND mr.rot > 90;

-- Get most popular movie genre(s)
SELECT genre -- find the genre that has count = max genre count
FROM MovieGenre
GROUP BY genre
HAVING COUNT(*) >= (
SELECT MAX(gCount) FROM ( -- pick the max genre count
SELECT COUNT(*) AS gCount -- get counts of every genre
FROM MovieGenre
GROUP BY genre
) s
);
