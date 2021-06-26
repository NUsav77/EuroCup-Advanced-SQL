-- 6. Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout.

-- Number of matches that were won by a single point
SELECT COUNT(goal_score) AS single_score_games
FROM match_details
WHERE goal_score = 1 AND penalty_score = 0;