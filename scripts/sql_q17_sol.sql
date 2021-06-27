-- 17. Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT
    DISTINCT country_name,
    COUNT(country_name) OVER(PARTITION BY country_name) AS total_asst_refs 
FROM asst_referee_mast
INNER JOIN soccer_country AS sc USING(country_id)
ORDER BY total_asst_refs DESC
LIMIT 3;