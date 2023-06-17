<?php

session_start();

const BASE_PATH = __DIR__;

require BASE_PATH . '/Router.php';

require BASE_PATH . '/src/utilities/Authenticator.php';

require BASE_PATH . '/src/models/User.php';
require BASE_PATH . '/src/models/Book.php';
require BASE_PATH . '/src/models/Author.php';

require BASE_PATH . '/src/services/MainService.php';
require BASE_PATH . '/src/services/UserService.php';
require BASE_PATH . '/src/services/BookService.php';
require BASE_PATH . '/src/services/AuthorService.php';

$router = new Router();
$uri = $_SERVER['REQUEST_URI'];
$method = $_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];

$router->get('/biblioweb/', 'src/views/index.html');
$router->get('/biblioweb/libros/', 'src/views/libros.html');
$router->get('/biblioweb/autores/', 'src/views/autores.html');
$router->get('/biblioweb/rating/', 'src/views/rating.html');
$router->get('/biblioweb/admin/', 'src/views/admin-view.html');

$router->route($uri, $method);
