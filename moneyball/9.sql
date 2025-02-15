SELECT t."name", ROUND(AVG(s."salary"), 2) AS "Average Salary"
FROM "teams" t
JOIN "salaries" s ON s."team_id" = t."id"
WHERE s."year" = '2001'
GROUP BY t."id"
ORDER BY "Average Salary" LIMIT 5;