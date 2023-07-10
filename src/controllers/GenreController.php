<?php

class GenreController {

    private $genreService;

    function __construct(GenreService $genreService) {
        $this->genreService = $genreService;
    }

    function index(): void {
        $genres = $this->genreService->get_all();
        require 'src/views/books.php';
    }

}
