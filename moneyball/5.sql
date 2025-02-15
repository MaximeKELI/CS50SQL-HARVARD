SELECT DISTINCT(t."name")
FROM "teams" t
JOIN "performances" p ON t."id" = p."team_id"
JOIN "players" pl ON p."player_id" = pl."id"
WHERE pl."last_name" LIKE '%paige%' AND
    pl."first_name" LIKE '%satchel%';