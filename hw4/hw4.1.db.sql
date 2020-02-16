CREATE TABLE IF NOT EXISTS "respondents" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT NOT NULL,
	"age"	INTEGER NOT NULL,
	"sex"	TEXT,
	"location"	TEXT
);
CREATE TABLE IF NOT EXISTS "propositions" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"text"	TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS "answers" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"respondent_id"	INTEGER,
	"proposition_id"	INTEGER,
	"rating"	INTEGER,
	"time"	INTEGER,
	FOREIGN KEY("respondent_id") REFERENCES "respondents"("id"),
	FOREIGN KEY("proposition_id") REFERENCES "propositions"("id")
);
