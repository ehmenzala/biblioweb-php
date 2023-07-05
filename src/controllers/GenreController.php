<?php

class GenreController {

    private $bookService;

    function __construct(BookService $bookService) {
        $this->bookService = $bookService;
    }

    function index(): void {
        $genres = $this->bookService->get_all_genres();
        require 'src/views/books.php';
    }
}

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');
$bookService = new BookService($db);
$genreController = new GenreController($bookService);
$genreController->index();
