<?php

class Book implements JsonSerializable {

  private $id;
  private $titulo;
  private $genero;
  private $anio_pulicacion;
  private $num_paginas;
  private $idioma;
  private $idioma_original;
  private $descripcion;
  private $rating;
  private $fragmento;
  private $portada;

  function __construct($id, $titulo, $genero, $anio_pulicacion, $num_paginas, $idioma, $idioma_original, $descripcion, $rating, $fragmento, $portada) {
    $this->id = $id;
    $this->titulo = $titulo;
    $this->genero = $genero;
    $this->anio_pulicacion = $anio_pulicacion;
    $this->num_paginas = $num_paginas;
    $this->idioma = $idioma;
    $this->idioma_original = $idioma_original;
    $this->descripcion = $descripcion;
    $this->rating = $rating;
    $this->fragmento = $fragmento;
    $this->portada = $portada;
  }

  public function jsonSerialize() {
    return [
      'id' => $this->id,
      'titulo' => $this->titulo,
      'genero' => $this->genero,
      'anio_pulicacion' => $this->anio_pulicacion,
      'num_paginas' => $this->num_paginas,
      'idioma' => $this->idioma,
      'idioma_original' => $this->idioma_original,
      'descripcion' => $this->descripcion,
      'rating' => $this->rating,
      'fragmento' => $this->fragmento
    ];
  }

  public function get_id()  {
    return $this->id;
  }

  public function get_titulo()  {
    return $this->titulo;
  }

  public function get_genero()  {
    return $this->genero;
  }

  public function get_anio_publicacion()  {
    return $this->anio_pulicacion;
  }

  public function get_num_paginas()  {
    return $this->num_paginas;
  }

  public function get_idioma()  {
    return $this->idioma;
  }

  public function get_idioma_original()  {
    return $this->idioma_original;
  }

  public function get_descripcion()  {
    return $this->descripcion;
  }

  public function get_rating()  {
    return $this->rating;
  }

  public function get_fragmento()  {
    return $this->fragmento;
  }

  public function get_portada()  {
    return $this->portada;
  }

}