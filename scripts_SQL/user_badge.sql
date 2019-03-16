CREATE TABLE user_badge(
  user_id INT REFERENCES usuarios(id),
  badge_id SMALLINT PRIMARY KEY REFERENCES badge(id),
  NOT NULL(user_id,badge_id),
  UNIQUE(badge_id),
  )
