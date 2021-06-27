-- 14. Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order.

SELECT 
	DISTINCT referee_name,
	COUNT(referee_name) OVER(PARTITION BY referee_name) AS referee_num_bookings
FROM referee_mast
INNER JOIN player_booked AS p ON country_id = team_id
ORDER BY referee_num_bookings DESC;