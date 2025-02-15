SELECT s."year", s."salary"
FROM "salaries" s
JOIN "players" p ON s."player_id" = p."id"
WHERE p."last_name" LIKE '%Ripken%'
ORDER BY "year" DESC;