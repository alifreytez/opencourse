CREATE TABLE badge(
  id SMALLSERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(20) NOT NULL,
  description VARCHAR(255) NOT NULL,
  image_url VARCHAR(100) NOT NULL,
  UNIQUE(id, name, image_url)
  );
