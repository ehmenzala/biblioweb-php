<?php

class BookDetailController {

    private $bookService;

    function __construct(BookService $bookService) {
        $this->bookService = $bookService;
    }

    public function index(): void {
        $bookId = $_GET['id'];
        $book = $this->bookService->get($bookId);
        require 'src/views/detalle-libro.php';
    }
}

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');
$bookService = new BookService($db);
$bookDetailController = new BookDetailController($bookService);
$bookDetailController->index();
