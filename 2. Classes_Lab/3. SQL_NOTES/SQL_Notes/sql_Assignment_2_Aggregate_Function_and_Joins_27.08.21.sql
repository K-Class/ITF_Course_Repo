SELECT AlbumId, 
count(name) as number_of_tracks
FROM tracks
GROUP by AlbumId
ORDER by number_of_tracks DESC;

SELECT tracks.name,albums.Title 
FROM tracks
INNER JOIN albums on albums.AlbumId=tracks.AlbumId;

SELECT tracks.AlbumId, albums.Title, min(tracks.Milliseconds)
FROM tracks
JOIN albums on tracks.AlbumId = albums.AlbumId
GROUP by tracks.AlbumId, albums.Title
ORDER by min(tracks.Milliseconds) DESC;

SELECT tracks.AlbumId,albums.Title, sum(tracks.Milliseconds)
FROM tracks
JOIN albums on tracks.AlbumId = albums.AlbumId
GROUP by tracks.AlbumId, albums.Title 
ORDER by sum(tracks.Milliseconds) DESC;

SELECT albums.Title, sum(tracks.Milliseconds)
FROM tracks
JOIN albums on tracks.AlbumId = albums.AlbumId
GROUP by tracks.AlbumId
HAVING sum(tracks.Milliseconds)> 4200000
ORDER by sum(tracks.Milliseconds) DESC;