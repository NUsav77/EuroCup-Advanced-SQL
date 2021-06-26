-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were played.

SELECT DISTINCT
	s.venue_name AS pen_shootout_venue
FROM soccer_venue AS s
INNER JOIN match_mast AS m USING(venue_id)
INNER JOIN penalty_shootout AS p USING(match_no)
ORDER BY match_no