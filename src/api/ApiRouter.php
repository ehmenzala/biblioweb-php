<?php

class ApiRouter extends Router {

    private $bookService;
    private $userService;

    public function __construct(BookService $bookService, UserService $userService) {
        $this->bookService = $bookService;
        $this->userService = $userService;
    }

    public function handleRequest($uri, $method) {

        if ($method === 'GET' && $uri == '/biblioweb/libros/all/') {
            $books = $this->bookService->get_all();
            header("Content-Type: application/json");
            echo json_encode($books, JSON_UNESCAPED_SLASHES|JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);
            die();
        } else if ($method === 'GET' && preg_match('/^\/biblioweb\/libros\/genero\/[0-9]+\/$/', $uri, $matches)) {
            $explodedUri = explode('/', $matches[0]);
            $count = count($explodedUri) - 2;
            $genre_id = $explodedUri[$count];
            $results = $this->bookService->get_by_genre_id($genre_id);
            header("Content-Type: application/json");
            echo json_encode($results, JSON_UNESCAPED_SLASHES|JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);
            die();
        } else if ($method === 'GET' && $uri == '/biblioweb/usuarios/all/') {
            $users = $this->userService->get_all();
            header("Content-Type: application/json");
            echo json_encode($users, JSON_UNESCAPED_SLASHES|JSON_PRETTY_PRINT|JSON_UNESCAPED_UNICODE);
            die();
        }
    }

}