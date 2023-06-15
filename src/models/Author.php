<?php

class Author {
  
  private $id;
  private $full_name;
  private $profile;

  function __construct($id, $full_name, $profile) {
    $this->id = $id;
    $this->full_name = $full_name;
    $this->profile = $profile;
  }

  public function get_id() {
    return $this->id;
  }
  
  public function get_full_name() {
    return $this->nombre_completo;
  }

  public function get_profile() {
    return $this->profile;
  }

}