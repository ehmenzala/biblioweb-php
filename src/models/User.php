<?php

class User {

    private $id;
    private $email;
    private $username;
    private $passwd;
    private $role;

    function __construct(string $id, string $email, string $username, string $passwd, string $role) {
        $this->id = $id;
        $this->email = $email;
        $this->username = $username;
        $this->passwd = $passwd;
        $this->role = $role;
    }

    public function get_id(): string {
        return $this->id;
    }

    public function get_email(): string {
        return $this->email;
    }

    public function get_username(): string {
        return $this->username;
    }

    public function get_passwd(): string {
        return $this->passwd;
    }

    public function get_role(): string {
        return $this->role;
    }
}