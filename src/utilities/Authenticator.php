<?php

class Authenticator {

    private $user_service;

    function __construct($user_service) {
        $this->user_service = $user_service;
    }

    public function authenticate($user) {

        $found_user = $this->user_service
            ->get_by_username_and_passwd(
                $user->get_username(),
                $user->get_passwd()
            );

        if ($found_user) {
            return true;
        } else {
            return false;
        }
    }
}
