
-- *** The Lost Letter ***
SELECT "address_id", "action", "timestamp"
FROM "scans"
WHERE "package_id" = (
    SELECT "id"
    FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id"
        FROM "addresses"
        WHERE "address" = "900 Somerville Avenue")
    );

SELECT "address", "type"
FROM "addresses"
WHERE "id" = '854';

-- *** The Devious Delivery ***
SELECT p."id", p."contents", p."from_address_id", s."address_id", a."address", a."type"
FROM packages p
JOIN "scans" s ON p."id" = s."package_id"
JOIN "addresses" a ON s."address_id" = a."id"
WHERE p."from_address_id" is NULL;

-- *** The Forgotten Gift ***
SELECT p."id", p."contents", a."address"
FROM "packages" p
JOIN "addresses" a ON p."from_address_id" = a."id"
WHERE a."address" LIKE '109 Tileston Street%';

SELECT p."id", a."address"
FROM "packages" p
JOIN "addresses" a ON p."to_address_id" = a."id"
WHERE p."id" = '9523';

SELECT s."id", s."driver_id", d."name", s."package_id",s."address_id", s."action", s."timestamp"
FROM "scans" s
JOIN "drivers" d ON s."driver_id" = d."id"
WHERE s."package_id" = '9523';