-- 10. Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016.

SELECT country_name, player_id, jersey_no, player_name, posi_to_play, dt_of_bir, age, playing_club 
FROM soccer_team
INNER JOIN soccer_country AS sc ON team_id = sc.country_id
INNER JOIN player_mast AS pm USING(team_id)
WHERE country_name = 'England' AND playing_club = 'Liverpool'
GROUP BY player_name
ORDER BY player_name
