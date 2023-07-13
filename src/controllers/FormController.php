<?php

class FormController {

    private $bookService;
    private $genreService;
    private $authorService;

    public function __construct(BookService $bookService, GenreService $genreService, AuthorService $authorService) {
        $this->bookService = $bookService;
        $this->genreService = $genreService;
        $this->authorService = $authorService;
    }

    public function handle_create_genre(): void {
        $genre_name = $_POST['genre'];
        $new_genre = new Genre("", $genre_name);
        $this->genreService->add($new_genre);
        header("location: /biblioweb/dashboard/");
    }

    public function handle_create_author(): void {
        $author_name = $_POST['author'];
        $profile_img = $_POST['profile-img'];
        $new_author = new Author("", $author_name, $profile_img);
        $this->authorService->add($new_author);
        header("location: /biblioweb/dashboard/");
    }

    public function handle_create_book(): void {
        $book_id = $_POST['book-id'];
        $genre = new Genre($_POST['genre-id'], "");
        $author = new Author($_POST['author-id'], "", "");
        $rating = $_POST['rating'];
        $title = $_POST['title'];
        $pub_year = $_POST['pub-year'];
        $no_pages = $_POST['no-pages'];
        $language = $_POST['language'];
        $org_language = $_POST['org-language'];
        $description = $_POST['description'];
        $fragment = $_POST['fragment'];
        $cover = '/biblioweb/public/assets/img/covers/' . $_FILES["cover"]["name"];

        if ($_FILES["cover"]) {
            $save_file_path = BASE_PATH . '/public/assets/img/covers/' . $_FILES["cover"]["name"];
            move_uploaded_file($_FILES["cover"]["tmp_name"], $save_file_path);
        }

        $new_book = new Book(
            $book_id, $genre, $author,
            $title, $pub_year, $no_pages,
            $language, $org_language, $description,
            $rating, $fragment, $cover, "0"
        );

        $this->bookService->add($new_book);
        header("location: /biblioweb/dashboard/");
    }

    public function handle_update_book(): void {

    }

    public function handle_delete_book(): void {

    }

    public function handle_create_user(): void {

    }

    public function handle_modify_user(): void {

    }

}