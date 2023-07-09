<?php

class DashboardController {
    private $bookService;

    function __construct(BookService $bookService) {
        $this->bookService = $bookService;
    }

    public function index(): void {
        require 'src/views/dashboard.html';
    }

}