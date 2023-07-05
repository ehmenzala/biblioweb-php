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

$uri = $_SERVER['REQUEST_URI'];
$method = $_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];

$db = new PDO('mysql:host=localhost;dbname=biblioweb', 'root');
$userService = new UserService($db);
$bookService = new BookService($db);

$apiRouter = new ApiRouter($bookService, $userService);

$apiRouter->handleRequest($uri, $method);

$router = new Router();

$router->get('/biblioweb/', 'src/controllers/BookController.php');
$router->get('/biblioweb/libros/', 'src/views/libros.html');
$router->get('/biblioweb/autores/', 'src/views/autores.html');
$router->get('/biblioweb/rating/', 'src/views/rating.html');
$router->get('/biblioweb/admin/', 'src/views/admin-view.html');
$router->get('/biblioweb/dashboard/', 'src/views/dashboard.html');

$router->route($uri, $method);
