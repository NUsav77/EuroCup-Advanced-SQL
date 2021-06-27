-- 15. Write a SQL query to find the referees who booked the most number of players.

SELECT 
	DISTINCT referee_name,
	COUNT(referee_name) OVER(PARTITION BY referee_name) AS referee_num_bookings
FROM referee_mast
INNER JOIN player_booked AS p ON country_id = team_id
ORDER BY referee_num_bookings DESC
LIMIT 3;