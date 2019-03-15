CREATE TABLE role(
  id SMALLSERIAL UNIQUE PRIMARY KEY,
  description VARCHAR(),
  NOT NULL(id, description)
  )
