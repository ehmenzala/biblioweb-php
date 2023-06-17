<?php

class Author {

    private $id;
    private $full_name;
    private $profile;

    function __construct(string $id, string $full_name, string $profile) {
        $this->id = $id;
        $this->full_name = $full_name;
        $this->profile = $profile;
    }

    public function get_id(): string {
        return $this->id;
    }

    public function get_full_name(): string {
        return $this->full_name;
    }

    public function get_profile(): string {
        return $this->profile;
    }

}