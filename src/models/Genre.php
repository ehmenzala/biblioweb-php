<?php

class Genre {

  private $id;
  private $nombre;

  function __construct($id, $nombre) {
    $this->id = $id;
    $this->nombre = $nombre;
  }

  public function get_id() {
    return $this->id;
  }

  public function get_nombre() {
    return $this->nombre;
  }

}