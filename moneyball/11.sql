SELECT pl."first_name", pl."last_name", (s."salary"/p."H") AS "dollars per hit"
FROM "performances" p
JOIN "salaries" s ON p."player_id" = s."player_id" AND p."year" = s."year"
JOIN "players" pl ON p."player_id" = pl."id"
WHERE p."H" > 0 AND p."year" = '2001' AND s."year" = '2001'
ORDER BY "dollars per hit", pl."first_name", pl."last_name" LIMIT 10;