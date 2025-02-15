SELECT t."name", SUM(p."H") AS "total hits"
FROM "performances" p
JOIN "teams" t ON p."team_id" = t."id"
WHERE p."year" = '2001'
GROUP BY t."name"
ORDER BY "total hits" DESC
LIMIT '5';