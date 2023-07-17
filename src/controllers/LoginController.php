<?php

class LoginController {

    private LoginModel $loginModel;

    public function __construct(LoginModel $loginModel) {
        $this->loginModel = $loginModel;
    }

    public function authenticate(): void {
        $username = $_POST['username'];
        $passwd = hash('sha256', $_POST['user-passwd']);
        $user = new User("", "", $username, $passwd, "");
        $loggedInUser = $this->loginModel->authenticate($user);

        if ($loggedInUser) {
            $_SESSION['username'] = $loggedInUser->get_username();
            $_SESSION['role'] = $loggedInUser->get_role();
        } else {
            session_destroy();
        }

        header("location: /biblioweb/");
    }

    public function logout(): void {
        session_destroy();
        header("location: /biblioweb/");
    }

}
