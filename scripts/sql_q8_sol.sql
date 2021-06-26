-- 8. Wreite a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match.

-- Get's match id with highest number of penalty shots and country names
WITH countries_pen_shot AS (SELECT	
	team_id,
	COUNT(match_no) AS num_pen_shots,
    match_no
FROM penalty_shootout
GROUP BY match_no, team_id
ORDER BY num_pen_shots DESC
LIMIT 2)
SELECT match_no, team_id, s.country_name
FROM countries_pen_shot AS c
INNER JOIN soccer_country AS s ON c.team_id = s.country_id;