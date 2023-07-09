<?php

class Router {

    private $routes = [];

    public function get($uri, string|array $controller): void {
        $this->add($uri, 'GET', $controller );
    }

    public function post($uri, string|array $controller): void {
        $this->add($uri, 'POST', $controller);
    }

    public function put($uri, string|array $controller): void {
        $this->add($uri, 'PUT', $controller);
    }

    public function delete($uri, string|array $controller): void {
        $this->add($uri, 'DELETE', $controller);
    }

    public function route($uri, $method) {

        foreach ($this->routes as $route) {
            if ($route['uri'] === $uri && $route['method'] === strtoupper($method)) {
                if ($route['view'] !== null) {
                    return require $route['view'];
                } elseif ($route['callable']) {
                    return call_user_func($route['callable']);
                }
            }
        }

        $this->abort();
    }

    private function add($uri, $method, string|array $controller): void {
        if (is_string($controller)) {
            $this->routes[] = [
                'uri' => $uri,
                'method' => $method,
                'view' => $controller,
            ];
        } elseif (is_array($controller)) {
            $this->routes[] = [
                'uri' => $uri,
                'method' => $method,
                'callable' => $controller,
            ];
        }
    }

    private function abort($code = 404): void {
        http_response_code($code);
        require "src/views/{$code}.html";
    }
}
