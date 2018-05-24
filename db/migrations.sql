CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(64),
	password_digest VARCHAR(256),
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  birth_date DATE,
);
