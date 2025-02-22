SELECT "users"."username"
FROM "users"
JOIN (
    SELECT "to_user_id", COUNT(*) AS "message_count"
    FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY "message_count" DESC
    LIMIT 1
) AS "most_popular" ON "users"."id" = "most_popular"."to_user_id";