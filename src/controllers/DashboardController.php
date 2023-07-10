<?php

class DashboardController {
    private $bookService;
    private $genreService;
    private $userService;
    private $authorService;

    function __construct(BookService $bookService, GenreService $genreService, UserService $userService, AuthorService $authorService) {
        $this->bookService = $bookService;
        $this->genreService = $genreService;
        $this->userService = $userService;
        $this->authorService = $authorService;
    }

    public function index(): void {
        $genres = $this->genreService->get_all();
        $authors = $this->authorService->get_all();
        $users = $this->userService->get_all();
        $user_roles = $this->userService->get_all_user_roles();
        require 'src/views/dashboard.php';
    }

}