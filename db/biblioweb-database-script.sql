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

CREATE TABLE libro
(
	id_libro             INTEGER AUTO_INCREMENT,
	id_genero            INTEGER NOT NULL,
	id_autor             INTEGER NOT NULL,
	titulo               VARCHAR(50) NOT NULL,
	anio_publicacion     INTEGER NOT NULL,
	num_paginas          INTEGER NOT NULL,
	idioma               VARCHAR(20) NOT NULL,
	idioma_original      VARCHAR(20) NOT NULL,
	descripcion          VARCHAR(550) NOT NULL,
	rating               INTEGER NOT NULL,
	fragmento            VARCHAR(350) NOT NULL,
	portada              VARCHAR(120) NOT NULL,
	visitas              INTEGER NULL DEFAULT 0,
	fecha_creacion       DATETIME NOT NULL DEFAULT NOW(),
	PRIMARY KEY (id_libro,id_genero,id_autor),
	FOREIGN KEY R_4 (id_genero) REFERENCES genero (id_genero),
	FOREIGN KEY R_5 (id_autor) REFERENCES autor (id_autor)
);

CREATE UNIQUE INDEX XPKlibro ON libro
(
	id_libro,
	id_genero,
	id_autor
);

CREATE INDEX XIF1libro ON libro
(
	id_genero
);

CREATE INDEX XIF2libro ON libro
(
	id_autor
);