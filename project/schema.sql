-- Represent students taking the course
CREATE TABLE "students" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "github_username" TEXT NOT NULL UNIQUE,
    "started" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id")
);

-- Represent instructors in the course
CREATE TABLE "instructors" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

-- Represent problems in the course
CREATE TABLE "problems" (
    "id" INTEGER,
    "problem_set" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

-- Represent submissions of problems by students
CREATE TABLE "submissions" (
    "id" INTEGER,
    "student_id" INTEGER,
    "problem_id" INTEGER,
    "submission_path" TEXT NOT NULL,
    "correctness" NUMERIC NOT NULL CHECK("correctness" BETWEEN 0 AND 1),
    "timestamp" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id"),
    FOREIGN KEY("student_id") REFERENCES "students"("id"),
    FOREIGN KEY("problem_id") REFERENCES "problems"("id")
);

-- Represent individual comments left by instructors
CREATE TABLE "comments" (
    "id" INTEGER,
    "instructor_id" INTEGER,
    "submission_id" INTEGER,
    "contents" TEXT NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("submission_id") REFERENCES "submissions"("id")
    FOREIGN KEY("instructor_id") REFERENCES "instructors"("id")
);

-- Create indexes to speed common searches
CREATE INDEX "student_name_search" ON "students" ("first_name", "last_name");
CREATE INDEX "student_github_search" ON "students" ("github_username");
CREATE INDEX "problem_name_search" ON "problems" ("name");