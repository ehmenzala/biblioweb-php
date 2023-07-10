<?php

require BASE_PATH . '/src/repository/GenreRepository.php';

class GenreService extends MainService implements GenreRepository {

    function __construct($db) {
        self::init($db);
    }

    public function get_all(): array {
        $st = self::$db->prepare("SELECT * FROM genero");
        $st->execute();
        $results = $st->fetchAll();
        $genres = array_map(function ($result) {
            return new Genre($result['id_genero'], $result['nombre']);
        }, $results);
        return $genres;
    }

}
