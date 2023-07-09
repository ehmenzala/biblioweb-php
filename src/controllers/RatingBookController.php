<?php

class RatingBookController {

    private $bookService;

    function __construct(BookService $bookService) {
        $this->bookService = $bookService;
    }

    function index() {
        $bestBooks = $this->bookService->get_sorted_by_rating_desc();
        require 'src/views/rating.php';
    }

}
