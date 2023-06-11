<?php

session_start();

require 'Router.php';

$router = new Router();
$uri = $_SERVER['REQUEST_URI'];
$method = $_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];

$router->get('/biblioweb/', 'src/views/index.html');
$router->get('/biblioweb/libros/', 'src/views/libros.html');
$router->get('/biblioweb/autores/', 'src/views/autores.html');
$router->get('/biblioweb/rating/', 'src/views/rating.html');
$router->get('/biblioweb/admin/', 'src/views/admin-view.html');

$router->route($uri, $method);
