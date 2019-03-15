CREATE TABLE usuarios(
  id SERIAL PRIMARY KEY,
  user VARCHAR(30),
  email VARCHAR(50),
  password VARCHAR(255),
  UNIQUE(id, user, email),
  NOT NULL(id, user, password),
)

/* agregar check de length para user y password y check para email*/
