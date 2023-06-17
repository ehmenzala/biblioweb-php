<?php

interface BookRepository {

    public function get_sorted_by_rating_desc();

    public function get_sorted_by_creation_date_desc();

    public function get_by_genre($genre_id);

    public function get_random_fragment();

    public function get_all();

    public function get($id);

    public function add($book);

    public function delete($id);

    public function update($book);

}
