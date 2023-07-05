<?php

class AuthorController {

    private $authorService;

    function __construct(AuthorService $authorService) {
        $this->authorService = $authorService;
    }

    public function index(): void {
        $authors = $this->authorService->get_all();
        require 'src/views/authors.php';
    }

}

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');
$authorService = new AuthorService($db);
$authorController = new AuthorController($authorService);
$authorController->index();