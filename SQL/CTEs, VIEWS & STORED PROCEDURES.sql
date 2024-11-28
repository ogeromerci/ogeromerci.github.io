--Views – the correspondent to an underlying original table used to protect the original version of the table. 
--Views tables is mainly created for tables that are commonly viewed and it is read-only. 
--The view should first work by the subquery of "AS" being able to work 
-- view is a named query 

CREATE VIEW IF NOT EXISTS albums_view
--The syntax of creating a view is that we use create view if it does not exist
AS
	SELECT Title, 
			ArtistId
	FROM albums a
	LIMIT 10;


--CREATING THE TRACKS VIEW
CREATE VIEW IF NOT EXISTS tracks_view
AS
	SELECT 
		trackid,
		tracks.Name 
		albums.Title AS album
		media_types.Name AS media,
		genres.Name AS genres
	FROM
		tracks t 
	INNER JOIN albums a ON albums.AlbumId = tracks.AlbumId 
	INNER JOIN media_types mt ON media_types.MediaTypeId = tracks.MediaTypeId 
	INNER JOIN genres ON genres.GenreId = tracks.GenreId ;
