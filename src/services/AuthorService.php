<?php

require BASE_PATH . '/src/repository/AuthorRepository.php';

class AuthorService extends MainService implements AuthorRepository {

    function __construct($db) {
        self::init($db);
    }

    public function get_all(): array {
        $st = self::$db->prepare("SELECT * FROM autor");
        $st->execute();
        $results = $st->fetchAll();
        $authors = array_map(function ($result) {
            return new Author(
                $result['id_autor'],
                $result['nombre_completo'],
                $result['foto_perfil']
            );
        }, $results);
        return $authors;
    }

    public function add(Author $author): void {
        $st = self::$db->prepare("
            INSERT INTO autor(nombre_completo, foto_perfil)
            VALUES (:full_name, :profile_picture)"
        );
        $st->execute(array(
            'full_name' => $author->get_full_name(),
            'profile_picture' => $author->get_profile(),
        ));
    }

}