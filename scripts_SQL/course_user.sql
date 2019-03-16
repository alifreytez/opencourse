CREATE TABLE course_user(
  user_id INT REFERENCES user(id) PRIMARY KEY NOT NULL,
  course_id INT REFERENCES course(id) NOT NULL,
  score SMALLINT,
  UNIQUE(user_id, course_id)
  );
