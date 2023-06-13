CREATE TABLE autor
(
	id_autor             INTEGER AUTO_INCREMENT,
	nombre_completo      VARCHAR(20) NOT NULL,
	foto_perfil          VARCHAR(75) NOT NULL,
	PRIMARY KEY (id_autor)
);

CREATE UNIQUE INDEX XPKautor ON autor
(
	id_autor
);

CREATE TABLE genero
(
	id_genero            INTEGER AUTO_INCREMENT,
	nombre               VARCHAR(30) NOT NULL,
	PRIMARY KEY (id_genero)
);

CREATE UNIQUE INDEX XPKgenero ON genero
(
	id_genero
);

CREATE TABLE libro
(
	id_libro             INTEGER AUTO_INCREMENT,
	id_genero            INTEGER NOT NULL,
	titulo               VARCHAR(50) NOT NULL,
	anio_publicacion     INTEGER NOT NULL,
	num_paginas          INTEGER NOT NULL,
	idioma               VARCHAR(20) NOT NULL,
	idioma_original      VARCHAR(20) NOT NULL,
	descripcion          VARCHAR(550) NOT NULL,
	rating               INTEGER NOT NULL,
	fragmento            VARCHAR(350) NOT NULL,
  portada              VARCHAR(120) NOT NULL,
	fecha_creacion       DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id_libro,id_genero),
	FOREIGN KEY R_4 (id_genero) REFERENCES genero (id_genero)
);

CREATE UNIQUE INDEX XPKlibro ON libro
(
	id_libro,
	id_genero
);

CREATE INDEX XIF1libro ON libro
(
	id_genero
);

CREATE TABLE autor_libro
(
	id_autor             INTEGER NOT NULL,
	id_libro             INTEGER NOT NULL,
	id_genero            INTEGER NOT NULL,
	PRIMARY KEY (id_autor,id_libro,id_genero),
	FOREIGN KEY R_1 (id_autor) REFERENCES autor (id_autor),
	FOREIGN KEY R_3 (id_libro, id_genero) REFERENCES libro (id_libro, id_genero)
);

CREATE UNIQUE INDEX XPKautor_libro ON autor_libro
(
	id_autor,
	id_libro,
	id_genero
);

CREATE INDEX XIF1autor_libro ON autor_libro
(
	id_autor
);

CREATE INDEX XIF2autor_libro ON autor_libro
(
	id_libro,
	id_genero
);

CREATE TABLE usuario
(
	id_usuario           INTEGER AUTO_INCREMENT,
	correo               VARCHAR(30) NOT NULL,
	nombre_usuario       VARCHAR(30) NOT NULL,
	contrasenia          VARCHAR(64) NOT NULL,
	rol                  VARCHAR(20) NOT NULL,
	PRIMARY KEY (id_usuario)
);

CREATE UNIQUE INDEX XPKusuario ON usuario
(
	id_usuario
);
