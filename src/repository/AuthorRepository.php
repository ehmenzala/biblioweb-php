<?php

interface AuthorRepository {

    public function get_all(): array;

    public function add(Author $author): void;

}
