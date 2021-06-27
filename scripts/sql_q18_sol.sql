-- 18. Write a SQL query to find the highest number of foul cards given in one match.

-- Neither table description nor data model specifies how to find this information. After doing some research, I am assuming this is found by player booking

SELECT
	DISTINCT match_no,
	COUNT(match_no) OVER(PARTITION BY match_no) AS num_fouls
FROM player_booked
ORDER BY num_fouls DESC
LIMIT 1;