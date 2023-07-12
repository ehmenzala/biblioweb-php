<?php

interface GenreRepository {

    public function get_all(): array;

    public function add(Genre $genre): void;

}