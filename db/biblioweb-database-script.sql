CREATE TABLE autor
(
	id_autor             INTEGER NOT NULL,
	nombre_completo      VARCHAR(20) NOT NULL,
	edad                 INTEGER NOT NULL,
	foto_perfil          VARCHAR(75) NOT NULL,
	PRIMARY KEY (id_autor)
);

CREATE UNIQUE INDEX XPKautor ON autor
(
	id_autor
);

CREATE TABLE libro
(
	id_libro             INTEGER NOT NULL,
	titulo               VARCHAR(50) NOT NULL,
	genero               VARCHAR(30) NOT NULL,
	anio_publicacion     INTEGER NOT NULL,
	num_paginas          INTEGER NOT NULL,
	idioma               VARCHAR(20) NOT NULL,
	idioma_original      VARCHAR(20) NOT NULL,
	descripcion          VARCHAR(550) NOT NULL,
	rating               INTEGER NOT NULL,
	fragmento            VARCHAR(350) NOT NULL,
	fecha_creacion       DATETIME NOT NULL,
	PRIMARY KEY (id_libro)
);

CREATE UNIQUE INDEX XPKlibro ON libro
(
	id_libro
);



CREATE TABLE autor_libro
(
	id_autor             INTEGER NOT NULL,
	id_libro             INTEGER NOT NULL,
	PRIMARY KEY (id_autor,id_libro),
	FOREIGN KEY R_1 (id_autor) REFERENCES autor (id_autor),
	FOREIGN KEY R_3 (id_libro) REFERENCES libro (id_libro)
);

CREATE UNIQUE INDEX XPKautor_libro ON autor_libro
(
	id_autor,
	id_libro
);

CREATE INDEX XIF1autor_libro ON autor_libro
(
	id_autor
);

CREATE INDEX XIF2autor_libro ON autor_libro
(
	id_libro
);

CREATE TABLE usuario
(
	id_usuario           INTEGER NOT NULL,
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