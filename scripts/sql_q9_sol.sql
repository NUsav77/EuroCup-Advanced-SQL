-- 9. Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.

-- Germany 1208
WITH germany_group_stage AS (SELECT play_stage, m.match_no, pm.team_id, pm.player_id, pp.position_id, pm.jersey_no, pm.player_name
FROM match_mast AS m
INNER JOIN player_in_out AS p USING(match_no)
INNER JOIN player_mast AS pm USING(team_id)
INNER JOIN playing_position AS pp ON pp.position_id = pm.posi_to_play
WHERE play_stage = 'G' AND team_id = 1208 AND position_id = 'GK')
SELECT DISTINCT player_name, jersey_no
FROM germany_group_stage