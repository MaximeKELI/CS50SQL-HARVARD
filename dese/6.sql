SELECT s."name"
FROM "graduation_rates" g
JOIN "schools" s ON g."school_id" = s."id"
WHERE g."graduated" = 100;