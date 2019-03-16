CREATE TABLE course(
  id SERIAL PRIMARY KEY UNIQUE NOT NULL,
  owner INT NOT NULL,
  votes INT NOT NULL,
  category VARCHAR(100),
  description VARCHAR,
  last_change DATE NOT NULL
  );
