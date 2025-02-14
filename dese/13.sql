SELECT d."name", e."per_pupil_expenditure", s."exemplary"
FROM "districts" d
JOIN "expenditures" e ON d."id" = e."district_id"
JOIN "staff_evaluations" s ON d."id" = s."district_id"
ORDER BY e."per_pupil_expenditure" DESC;