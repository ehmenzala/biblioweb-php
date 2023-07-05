<?php

class BookController {

    private $bookService;

    function __construct(BookService $bookService) {
        $this->bookService = $bookService;
    }

    function index(): void {
        $bestBooks = $this->bookService->get_sorted_by_rating_desc();
        $bestBookByDate = $this->bookService->get_sorted_by_creation_date_desc();
        require 'src/views/index.php';
    }

}

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');
$bookService = new BookService($db);
$bookController = new BookController($bookService);
$bookController->index();