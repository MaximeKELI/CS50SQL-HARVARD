SELECT pl."first_name", pl."last_name", s."salary", p."HR", p."year"
FROM "performances" p
JOIN "salaries" s ON p."player_id" = s."player_id" AND p."year" = s."year"
JOIN "players" pl ON p."player_id" = pl."id"
ORDER BY pl."id", p."year" DESC, p."HR" DESC, s."salary" DESC;