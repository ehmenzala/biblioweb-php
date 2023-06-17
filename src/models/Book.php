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

  function __construct($id, $genre, $author, $title, $pub_year, $no_pages, $language, $org_language, $description, $rating, $fragment, $cover, $views) {
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

  public function get_id()  {
    return $this->id;
  }

  public function get_genre()  {
    return $this->genre;
  }

  public function get_author()  {
    return $this->author;
  }

  public function get_title()  {
    return $this->title;
  }

  public function get_pub_year()  {
    return $this->pub_year;
  }

  public function get_no_pages()  {
    return $this->no_pages;
  }

  public function get_language()  {
    return $this->language;
  }

  public function get_org_language()  {
    return $this->org_language;
  }

  public function get_description()  {
    return $this->description;
  }

  public function get_rating()  {
    return $this->rating;
  }

  public function get_fragment()  {
    return $this->fragment;
  }

  public function get_cover()  {
    return $this->cover;
  }
  
  public function get_views()  {
    return $this->views;
  }

}