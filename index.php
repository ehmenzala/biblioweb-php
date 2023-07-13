<?php

session_start();

const BASE_PATH = __DIR__;

require BASE_PATH . '/Router.php';
require BASE_PATH . '/src/api/ApiRouter.php';

require BASE_PATH . '/src/utilities/Authenticator.php';

require BASE_PATH . '/src/models/User.php';
require BASE_PATH . '/src/models/Book.php';
require BASE_PATH . '/src/models/Author.php';
require BASE_PATH . '/src/models/Genre.php';

require BASE_PATH . '/src/services/MainService.php';
require BASE_PATH . '/src/services/UserService.php';
require BASE_PATH . '/src/services/BookService.php';
require BASE_PATH . '/src/services/AuthorService.php';
require BASE_PATH . '/src/services/GenreService.php';

require BASE_PATH . '/src/controllers/BookController.php';
require BASE_PATH . '/src/controllers/BookDetailController.php';
require BASE_PATH . '/src/controllers/RatingBookController.php';
require BASE_PATH . '/src/controllers/GenreController.php';
require BASE_PATH . '/src/controllers/AuthorController.php';
require BASE_PATH . '/src/controllers/DashboardController.php';
require BASE_PATH . '/src/controllers/FormController.php';

set_error_handler(function(int $errno, string $errstr) {
    if ((!str_contains($errstr, 'Undefined array key')) && (!str_contains($errstr, 'Undefined variable'))) {
        return false;
    } else {
        return true;
    }
}, E_WARNING);

$uri = parse_url($_SERVER['REQUEST_URI'])['path'];
$method = $_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');

$userService = new UserService($db);
$bookService = new BookService($db);
$genreService = new GenreService($db);
$authorService = new AuthorService($db);
$userService = new UserService($db);

$bookController = new BookController($bookService);
$genreController = new GenreController($genreService);
$bookDetailController = new BookDetailController($bookService);
$authorController = new AuthorController($authorService);
$ratingBookController = new RatingBookController($bookService);
$dashboardController = new DashboardController(
    $bookService, $genreService, $userService, $authorService
);
$formController = new FormController(
    $bookService, $genreService, $authorService, $userService
);

$apiRouter = new ApiRouter($bookService, $userService);

$apiRouter->handleRequest($uri, $method);

$router = new Router();

$router->get('/biblioweb/', [$bookController, 'index']);
$router->get('/biblioweb/libros/', [$genreController, 'index']);
$router->get('/biblioweb/detalle-libro/', [$bookDetailController, 'index']);
$router->get('/biblioweb/autores/', [$authorController, 'index']);
$router->get('/biblioweb/rating/', [$ratingBookController, 'index']);
$router->get('/biblioweb/dashboard/', [$dashboardController, 'index']);

$router->put('/biblioweb/create/genre/', [$formController, 'handle_create_genre']);
$router->put('/biblioweb/create/author/', [$formController, 'handle_create_author']);
$router->put('/biblioweb/create/book/', [$formController, 'handle_create_book']);
$router->put('/biblioweb/update/book/', [$formController, 'handle_update_book']);
$router->put('/biblioweb/create/user/', [$formController, 'handle_create_user']);
$router->put('/biblioweb/update/user/', [$formController, 'handle_update_user']);

$router->delete('/biblioweb/delete/book/', [$formController, 'handle_delete_book']);
$router->delete('/biblioweb/delete/user/', [$formController, 'handle_delete_user']);

$router->route($uri, $method);
