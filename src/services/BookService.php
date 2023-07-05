<?php

require BASE_PATH . '/src/repository/BookRepository.php';

class BookService extends MainService implements BookRepository {

    function __construct($db) {
        self::init($db);
    }

    public function get_sorted_by_rating_desc(): array {
        $st = self::$db->prepare("
          SELECT l.id_libro, g.nombre AS genero, a.nombre_completo AS autor,
            l.titulo, l.anio_publicacion, l.num_paginas,
            l.idioma, l.idioma_original, l.descripcion,
            l.rating, l.fragmento,l.portada, l.visitas
          FROM libro AS l
            INNER JOIN genero AS g
              ON l.id_genero = g.id_genero
            INNER JOIN autor AS a
              ON l.id_autor = a.id_autor
          ORDER BY l.rating DESC
        ");

        $st->execute();
        $results = $st->fetchAll();
        $books = array_map(function ($result) {
            return new Book(
                $result['id_libro'], new Genre(0, $result['genero']),
                new Author(0, $result['autor'], ""), $result['titulo'],
                $result['anio_publicacion'], $result['num_paginas'],
                $result['idioma'], $result['idioma_original'],
                $result['descripcion'], $result['rating'],
                $result['fragmento'], $result['portada'],
                $result['visitas'],
            );
        }, $results);
        return $books;
    }

    public function get_sorted_by_creation_date_desc(): array {
        $st = self::$db->prepare("
          SELECT l.id_libro, g.nombre AS genero, a.nombre_completo AS autor,
            l.titulo, l.anio_publicacion, l.num_paginas,
            l.idioma, l.idioma_original, l.descripcion,
            l.rating, l.fragmento,l.portada, l.visitas
          FROM libro AS l
            INNER JOIN genero AS g
              ON l.id_genero = g.id_genero
            INNER JOIN autor AS a
              ON l.id_autor = a.id_autor
          ORDER BY l.fecha_creacion DESC
        ");

        $st->execute();
        $results = $st->fetchAll();
        $books = array_map(function ($result) {
            return new Book(
                $result['id_libro'], new Genre(0, $result['genero']),
                new Author(0, $result['autor'], ""), $result['titulo'],
                $result['anio_publicacion'], $result['num_paginas'],
                $result['idioma'], $result['idioma_original'],
                $result['descripcion'], $result['rating'],
                $result['fragmento'], $result['portada'],
                $result['visitas'],
            );
        }, $results);
        return $books;
    }

    public function get_all_genres(): array {
        $st = self::$db->prepare("SELECT * FROM genero");
        $st->execute();
        $results = $st->fetchAll();
        $genres = array_map(function ($result) {
            return new Genre($result["id_genero"], $result["nombre"]);
        }, $results);
        return $genres;
    }

    public function get_by_genre_id(string $genre_id): array {
        $st = self::$db->prepare("
          SELECT l.id_libro, g.nombre AS genero, a.nombre_completo AS autor,
            l.titulo, l.anio_publicacion, l.num_paginas,
            l.idioma, l.idioma_original, l.descripcion,
            l.rating, l.fragmento,l.portada, l.visitas
          FROM libro AS l
            INNER JOIN genero AS g
              ON l.id_genero = g.id_genero
            INNER JOIN autor AS a
              ON l.id_autor = a.id_autor
          WHERE g.id_genero = :genre_id
        ");
        $st->execute(array(
            'genre_id' => $genre_id
        ));
        $results = $st->fetchAll();
        $books = array_map(function ($result) {
            $bookGenre = new Genre(0, $result['genero']);
            $bookAuthor = new Author(0, $result['autor'], "");
            return new Book(
                $result['id_libro'], $bookGenre,
                $bookAuthor, $result['titulo'],
                $result['anio_publicacion'], $result['num_paginas'],
                $result['idioma'], $result['idioma_original'],
                $result['descripcion'], $result['rating'],
                $result['fragmento'], $result['portada'],
                $result['visitas'],
            );
        }, $results);
        return $books;
    }

    public function get_random_fragment(): string {
        $st = self::$db->prepare("
          SELECT fragmento
            FROM libro
          ORDER BY RAND()
          LIMIT 1
        ");

        $st->execute();
        $result = $st->fetch();
        return $result['fragmento'];
    }

    public function get_all(): array {
        $st = self::$db->prepare("
          SELECT l.id_libro, g.nombre AS genero, a.nombre_completo AS autor,
            l.titulo, l.anio_publicacion, l.num_paginas,
            l.idioma, l.idioma_original, l.descripcion,
            l.rating, l.fragmento,l.portada, l.visitas
          FROM libro AS l
            INNER JOIN genero AS g
              ON l.id_genero = g.id_genero
            INNER JOIN autor AS a
              ON l.id_autor = a.id_autor
        ");
        $st->execute();
        $results = $st->fetchAll();
        $books = array_map(function ($result) {
            $bookGenre = new Genre(0, $result['genero']);
            $bookAuthor = new Author(0, $result['autor'], "");
            return new Book(
                $result['id_libro'], $bookGenre,
                $bookAuthor, $result['titulo'],
                $result['anio_publicacion'], $result['num_paginas'],
                $result['idioma'], $result['idioma_original'],
                $result['descripcion'], $result['rating'],
                $result['fragmento'], $result['portada'],
                $result['visitas'],
            );
        }, $results);
        return $books;
    }

    public function get(string $id): Book {
        $st = self::$db->prepare("
          SELECT l.id_libro, g.nombre AS genero, a.nombre_completo AS autor,
            l.titulo, l.anio_publicacion, l.num_paginas,
            l.idioma, l.idioma_original, l.descripcion,
            l.rating, l.fragmento,l.portada, l.visitas
          FROM libro AS l
            INNER JOIN genero AS g
              ON l.id_genero = g.id_genero
            INNER JOIN autor AS a
              ON l.id_autor = a.id_autor
          WHERE l.id_libro = :book_id
        ");
        $st->execute(array(
            'book_id' => $id,
        ));
        $result = $st->fetch();

        return new Book(
            $result['id_libro'], new Genre('', $result['genero']),
            new Author('', $result['autor'], ''), $result['titulo'],
            $result['anio_publicacion'], $result['num_paginas'],
            $result['idioma'], $result['idioma_original'],
            $result['descripcion'], $result['rating'],
            $result['fragmento'], $result['portada'],
            $result['visitas'],
        );
    }

    public function add(Book $book): void {
        $st = self::$db->prepare("
          INSERT INTO libro(id_genero, id_autor, titulo,
                            anio_publicacion, num_paginas, idioma,
                            idioma_original, descripcion, rating,
                            fragmento, portada)
          VALUES (:genre_id, :author_id, :title,
                  :pub_year, :no_pages, :language,
                  :org_language, :description , :rating,
                  :fragment, :cover)
        ");

        $st->execute(array(
            'genre_id' => $book->get_genre()->get_id(),
            'author_id' => $book->get_author()->get_id(),
            'title' => $book->get_title(),
            'pub_year' => $book->get_pub_year(),
            'no_pages' => $book->get_no_pages(),
            'language' => $book->get_language(),
            'org_language' => $book->get_org_language(),
            'description' => $book->get_description(),
            'rating' => $book->get_rating(),
            'fragment' => $book->get_fragment(),
            'cover' => $book->get_cover(),
        ));
    }

    public function delete(string $id): void {
        $st = self::$db->prepare("DELETE FROM libro WHERE id_libro = :book_id");
        $st->execute(array('book_id' => $id));
    }

    public function update(Book $book): void {
        // TODO: Implement this method soon.
        echo 'Hi';
    }

}