<?php

interface UserRepository {

    public function get_by_username_and_passwd($username, $passwd);

    public function add($user);

}
