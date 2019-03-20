CREATE TABLE "user"(
	id SERIAL PRIMARY KEY NOT NULL, 
	username VARCHAR(30) NOT NULL, 
	email VARCHAR(50), 
	password VARCHAR(255) NOT NULL, 
	UNIQUE(id, username, email)
);
