-- 12. Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.

WITH cte AS
(SELECT goal_id, g.team_id, g.player_id, pm.posi_to_play, s.country_name
FROM goal_details AS g
INNER JOIN soccer_country AS s ON team_id = country_id
INNER JOIN player_mast AS pm ON g.player_id = pm.player_id)
SELECT 
	DISTINCT COUNT(posi_to_play) OVER(PARTITION BY country_name, posi_to_play) AS goals_per_pos,
    country_name,
    posi_to_play
FROM cte