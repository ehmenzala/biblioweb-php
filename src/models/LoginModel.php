<?php

class LoginModel {

    private UserService $user_service;

    function __construct(UserService $user_service) {
        $this->user_service = $user_service;
    }

    public function authenticate(User $user): User|bool {
        $found_user = $this->user_service
            ->get_by_username_and_passwd(
                $user->get_username(),
                $user->get_passwd()
            );

        if ($found_user) {
            return $found_user;
        } else {
            return false;
        }
    }

    public function register(User $user): void {
        // TODO: Add user property empty validations.
        $this->user_service->add($user);
    }

}
