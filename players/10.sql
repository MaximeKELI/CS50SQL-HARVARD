SELECT "first_name", "last_name" AS "BOOMER PLAYERS"
FROM players
WHERE "birth_year" < '1970'
ORDER BY "first_name", "last_name";