<?php

class User {

  private $id;
  private $email;
  private $username;
  private $passwd;
  private $role;

  function __construct($id, $email, $username, $passwd, $role) {
    $this->id = $id;
    $this->email = $email;
    $this->username = $username;
    $this->passwd = $passwd;
    $this->role = $role;
  }

  public function get_id() {
    return $this->id;
  }

  public function get_email() {
    return $this->email;
  }

  public function get_username() {
    return $this->username;
  }

  public function get_passwd() {
    return $this->passwd;
  }

  public function get_role() {
    return $this->role;
  }
}