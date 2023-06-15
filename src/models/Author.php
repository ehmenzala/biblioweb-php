<?php

class Author {
  
  private $id;
  private $nombre_completo;
  private $perfil;

  function __construct($id, $nombre_completo, $perfil) {
    $this->id = $id;
    $this->nombre_completo = $nombre_completo;
    $this->perfil = $perfil;
  }

  public function get_id() {
    return $this->id;
  }
  
  public function get_nombre_completo() {
    return $this->nombre_completo;
  }

  public function get_perfil() {
    return $this->perfil;
  }

}