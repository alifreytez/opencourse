CREATE TABLE badge(
  id SMALLSERIAL PRIMARY KEY,
  name VARCHAR(20),
  description VARCHAR(255),
  image_url VARCHAR(100),
  UNIQUE(id, name, image_url),
  NOT NULL(id, name, description, image_url)
  )
