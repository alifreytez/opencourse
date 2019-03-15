CREATE TABLE user_role(
  role_id SMALLINT UNIQUE PRIMARY KEY REFERENCES role(id) ,
  user_id INT REFERENCES usuarios(id),
  NOT NULL(role_id, user_id)
  )
