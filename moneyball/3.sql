SELECT p."year", p."HR"
FROM "performances" p
JOIN "players" pl ON p."player_id" = pl."id"
WHERE pl."last_name" LIKE '%Griffey%' AND
    pl."birth_year" = '1969'
ORDER BY p."year" DESC;