CREATE TABLE course_user(
  user_id INT REFERENCES usuarios(id) PRIMARY KEY,
  course_id INT REFERENCES course(id),
  score SMALLINT,
  NOT NULL(user_id, course_id),
  UNIQUE(user_id, course_id)
  )
