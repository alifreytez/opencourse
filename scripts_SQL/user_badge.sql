CREATE TABLE user_badge(
  user_id INT NOT NULL REFERENCES user(id),
  badge_id SMALLINT PRIMARY KEY NOT NULL REFERENCES badge(id),
  UNIQUE(badge_id)
  );
