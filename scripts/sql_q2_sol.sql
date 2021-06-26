-- 2. Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT COUNT(decided_by) AS penalty_wins
FROM match_details
WHERE decided_by = 'P'