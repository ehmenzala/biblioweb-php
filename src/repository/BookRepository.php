<?php

interface BookRepository {

    public function get_sorted_by_rating_desc(): array;

    public function get_sorted_by_creation_date_desc(): array;

    public function get_all_genres(): array;

    public function get_by_genre_id(string $genre_id): array;

    public function get_random_fragment(): string;

    public function get_all(): array;

    public function get(string $id): Book;

    public function add(Book $book): void;

    public function delete(string $id): void;

    public function update(Book $book): void;

}
