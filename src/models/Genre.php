<?php

class Genre {

  private $id;
  private $name;

  function __construct($id, $name) {
    $this->id = $id;
    $this->name = $name;
  }

  public function get_id() {
    return $this->id;
  }

  public function get_name() {
    return $this->name;
  }

}