CREATE TABLE course(
  id SERIAL PRIMARY KEY UNIQUE,
  owner INT,
  votes INT,
  category VARCHAR(100),
  description VARCHAR(),
  last_change DATE,
  NOT NULL(id, owner, votes, last_change)
  )
