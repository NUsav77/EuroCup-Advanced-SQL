-- 19. Write a SQL query to find the number of captains who were also goalkeepers.

SELECT
	ROW_NUMBER() OVER () AS total_capt_gk
FROM match_captain
INNER JOIN player_mast AS pm ON player_captain = player_id
WHERE posi_to_play = 'GK'
ORDER BY total_capt_gk DESC
LIMIT 1;