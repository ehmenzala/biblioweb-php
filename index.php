<?php

session_start();

$routes = [
  '/biblioweb/' => 'views/index.html',
  '/biblioweb/libros/' => 'views/libros.html',
  '/biblioweb/autores/' => 'views/autores.html',
  '/biblioweb/rating/' => 'views/rating.html',
  '/biblioweb/admin/' => 'views/admin-view.html',
];

if (array_key_exists($_SERVER['REQUEST_URI'], $routes)) {
  require $routes[$_SERVER['REQUEST_URI']];
} else {
  http_response_code(404);
  echo 'NO SE ENCUENTRAAA';
}
