<?php

class Genre {

    private $id;
    private $name;

    function __construct(string $id, string $name) {
        $this->id = $id;
        $this->name = $name;
    }

    public function get_id(): string {
        return $this->id;
    }

    public function get_name(): string {
        return $this->name;
    }

}