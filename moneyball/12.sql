SELECT first_name, last_name
FROM(
    SELECT first_name, last_name, id
    FROM players
    WHERE id IN (
        SELECT pl.id
        FROM "performances" p
        JOIN "salaries" s ON p."player_id" = s."player_id" AND p."year" = s."year"
        JOIN "players" pl ON p."player_id" = pl."id"
        WHERE p."H" > 0 AND p."year" = '2001' AND s."year" = '2001'
        ORDER BY s."salary"/p."H" LIMIT 10)

    INTERSECT

    SELECT first_name, last_name, id
    FROM players
    WHERE id IN (
        SELECT pl.id
        FROM "performances" p
        JOIN "salaries" s ON p."player_id" = s."player_id" AND p."year" = s."year"
        JOIN "players" pl ON p."player_id" = pl."id"
        WHERE p."RBI" > 0 AND p."year" = '2001' AND s."year" = '2001'
        ORDER BY s."salary"/p."RBI" LIMIT 10)
) AS subquery
ORDER BY id;