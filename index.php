<?php

session_start();

require 'router/Router.php';

$router = new Router();
$uri = $_SERVER['REQUEST_URI'];
$method = $_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];

$router->get('/biblioweb/', 'views/index.html');
$router->get('/biblioweb/libros/', 'views/libros.html');
$router->get('/biblioweb/autores/', 'views/autores.html');
$router->get('/biblioweb/rating/', 'views/rating.html');
$router->get('/biblioweb/admin/', 'views/admin-view.html');

$router->route($uri, $method);
