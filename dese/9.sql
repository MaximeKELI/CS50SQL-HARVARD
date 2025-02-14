SELECT d."name"
FROM "expenditures" e
JOIN "districts" d ON e."district_id" = d."id"
ORDER BY e."pupils" LIMIT 1;