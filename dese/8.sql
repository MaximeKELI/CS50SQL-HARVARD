SELECT d."name", e."pupils"
FROM "expenditures" e
JOIN "districts" d ON e."district_id" = d."id";