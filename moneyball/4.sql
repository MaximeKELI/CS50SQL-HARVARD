SELECT p."first_name", p."last_name", s."salary"
FROM "players" p
JOIN "salaries" s ON p."id" = s."player_id"
WHERE s."year" = '2001'
ORDER BY s."salary", p."first_name", p."last_name", p."id";