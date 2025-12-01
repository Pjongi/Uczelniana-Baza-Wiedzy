CREATE TABLE "users" (
  "user_id" integer PRIMARY KEY,
  "password_hash" varchar
);

CREATE TABLE "user_profiles" (
  "user_id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "index" integer,
  "email" varchar,
  "created_at" timestamp
);

CREATE TABLE "student_clubs" (
  "club_id" integer PRIMARY KEY,
  "name" varchar,
  "created_at" timestamp,
  "description" varchar
);

CREATE TABLE "club_membership" (
  "club_id" integer,
  "role_in_club" varchar,
  "user_id" integer
);

CREATE TABLE "articles" (
  "article_id" integer PRIMARY KEY,
  "author_id" integer NOT NULL,
  "category_id" varchar,
  "title" varchar,
  "content_markdown" varchar,
  "created_at" timestamp,
  "last_modified_by" varchar,
  "last_modiified_at" timestamp
);

CREATE TABLE "categories" (
  "category_id" integer PRIMARY KEY,
  "name" varchar,
  "patent_category" integer
);

CREATE TABLE "projects" (
  "project_id" integer PRIMARY KEY,
  "leader_id" integer,
  "club_id" integer,
  "name" varchar,
  "github_link" varchar,
  "created_at" timestamp
);

CREATE TABLE "tasks" (
  "id" integer PRIMARY KEY,
  "project_id" integer,
  "author_id" integer,
  "name" varchar,
  "content" text,
  "deadline" date,
  "status" varchar
);

COMMENT ON TABLE "users" IS 'Główna tabela uwierzytelniania';

COMMENT ON TABLE "user_profiles" IS 'Tabela przechowuje dane publiczne użytkownika';

ALTER TABLE "user_profiles" ADD CONSTRAINT "user" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id");

CREATE TABLE "club_membership_student_clubs" (
  "club_membership_club_id" integer,
  "student_clubs_club_id" integer,
  PRIMARY KEY ("club_membership_club_id", "student_clubs_club_id")
);

ALTER TABLE "club_membership_student_clubs" ADD FOREIGN KEY ("club_membership_club_id") REFERENCES "club_membership" ("club_id");

ALTER TABLE "club_membership_student_clubs" ADD FOREIGN KEY ("student_clubs_club_id") REFERENCES "student_clubs" ("club_id");


CREATE TABLE "club_membership_user_profiles" (
  "club_membership_user_id" integer,
  "user_profiles_user_id" integer,
  PRIMARY KEY ("club_membership_user_id", "user_profiles_user_id")
);

ALTER TABLE "club_membership_user_profiles" ADD FOREIGN KEY ("club_membership_user_id") REFERENCES "club_membership" ("user_id");

ALTER TABLE "club_membership_user_profiles" ADD FOREIGN KEY ("user_profiles_user_id") REFERENCES "user_profiles" ("user_id");


ALTER TABLE "articles" ADD CONSTRAINT "article_author" FOREIGN KEY ("author_id") REFERENCES "user_profiles" ("user_id");

CREATE TABLE "articles_categories" (
  "articles_category_id" varchar,
  "categories_category_id" integer,
  PRIMARY KEY ("articles_category_id", "categories_category_id")
);

ALTER TABLE "articles_categories" ADD FOREIGN KEY ("articles_category_id") REFERENCES "articles" ("category_id");

ALTER TABLE "articles_categories" ADD FOREIGN KEY ("categories_category_id") REFERENCES "categories" ("category_id");


ALTER TABLE "categories" ADD CONSTRAINT "article_category" FOREIGN KEY ("category_id") REFERENCES "categories" ("patent_category");

ALTER TABLE "projects" ADD CONSTRAINT "project_leader" FOREIGN KEY ("leader_id") REFERENCES "user_profiles" ("user_id");

CREATE TABLE "projects_student_clubs" (
  "projects_club_id" integer,
  "student_clubs_club_id" integer,
  PRIMARY KEY ("projects_club_id", "student_clubs_club_id")
);

ALTER TABLE "projects_student_clubs" ADD FOREIGN KEY ("projects_club_id") REFERENCES "projects" ("club_id");

ALTER TABLE "projects_student_clubs" ADD FOREIGN KEY ("student_clubs_club_id") REFERENCES "student_clubs" ("club_id");


ALTER TABLE "tasks" ADD CONSTRAINT "project_tasks" FOREIGN KEY ("project_id") REFERENCES "projects" ("project_id");

ALTER TABLE "tasks" ADD CONSTRAINT "task_author" FOREIGN KEY ("author_id") REFERENCES "user_profiles" ("user_id");
