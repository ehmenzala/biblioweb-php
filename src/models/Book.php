<?php

class Book implements JsonSerializable {

    private $id;
    private $genre;
    private $author;
    private $title;
    private $pub_year;
    private $no_pages;
    private $language;
    private $org_language;
    private $description;
    private $rating;
    private $fragment;
    private $cover;
    private $views;

    function __construct(string $id, Genre $genre, Author $author, string $title, string $pub_year, string $no_pages, string $language, string $org_language, string $description, string $rating, string $fragment, string $cover, string $views) {
        $this->id = $id;
        $this->genre = $genre;
        $this->author = $author;
        $this->title = $title;
        $this->pub_year = $pub_year;
        $this->no_pages = $no_pages;
        $this->language = $language;
        $this->org_language = $org_language;
        $this->description = $description;
        $this->rating = $rating;
        $this->fragment = $fragment;
        $this->cover = $cover;
        $this->views = $views;
    }

    public function jsonSerialize() {
        return [
            'id' => $this->id,
            'genre' => $this->genre,
            'author' => $this->author,
            'title' => $this->title,
            'pub_year' => $this->pub_year,
            'no_pages' => $this->no_pages,
            'language' => $this->language,
            'org_language' => $this->org_language,
            'description' => $this->description,
            'rating' => $this->rating,
            'fragment' => $this->fragment,
            'cover' => $this->cover,
            'views' => $this->views,
        ];
    }

    public function get_id(): string {
        return $this->id;
    }

    public function get_genre(): string {
        return $this->genre;
    }

    public function get_author(): string {
        return $this->author;
    }

    public function get_title(): string {
        return $this->title;
    }

    public function get_pub_year(): string {
        return $this->pub_year;
    }

    public function get_no_pages(): string {
        return $this->no_pages;
    }

    public function get_language(): string {
        return $this->language;
    }

    public function get_org_language(): string {
        return $this->org_language;
    }

    public function get_description(): string {
        return $this->description;
    }

    public function get_rating(): string {
        return $this->rating;
    }

    public function get_fragment(): string {
        return $this->fragment;
    }

    public function get_cover(): string {
        return $this->cover;
    }

    public function get_views(): string {
        return $this->views;
    }

}