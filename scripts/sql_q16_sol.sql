-- 16. Write a SQL query to find referees and the number of matches they worked in each venue.

SELECT DISTINCT DISTINCT 
	referee_name,
    venue_name,
    COUNT(referee_name) OVER(PARTITION BY referee_name, venue_name) AS ref_num_matches
FROM referee_mast AS r
LEFT JOIN soccer_city AS sc USING(country_id)
LEFT JOIN match_mast AS m USING(referee_id)
LEFT JOIN soccer_venue AS sv USING(venue_id);