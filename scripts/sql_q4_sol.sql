-- 4. Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament.
SELECT CASE WHEN m.play_stage = 'G' THEN '1 - Group'
		WHEN m.play_stage = 'R' THEN '2 - Round'
		WHEN m.play_stage = 'Q' THEN '3 - Quarter'
		WHEN m.play_stage = 'S' THEN '4 - Semi Final'
		ELSE '5 - Final' END AS stage,
		COUNT(in_out) AS num_substitutions
FROM player_in_out
INNER JOIN match_mast AS m
USING(match_no)
GROUP BY play_stage 
ORDER BY stage