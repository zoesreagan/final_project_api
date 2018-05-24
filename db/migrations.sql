CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(64),
	password_digest VARCHAR(256),
  first_name VARCHAR(64),
  last_name VARCHAR(64),
  birth_date DATE,
);


CREATE TABLE responses(
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  response_1 TEXT,
  response_2 TEXT,
  response_3 TEXT,
  response_4 TEXT,
  response_5 TEXT,
  response_6 TEXT,
  response_7 TEXT,
  response_8 TEXT,
  response_9 TEXT
)
