SELECT s."salary"
FROM "salaries" s
JOIN "performances" p ON s."player_id" = p."player_id"
WHERE p."HR" = (SELECT MAX("HR") FROM "performances") AND s."year" = '2001';