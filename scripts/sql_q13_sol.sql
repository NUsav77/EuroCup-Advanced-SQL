-- 13. Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT 
	player_name,
    country_name
FROM goal_details AS g
LEFT JOIN player_mast AS p USING(player_id)
LEFT JOIN soccer_country AS s ON g.team_id = country_id
WHERE posi_to_play = 'DF';