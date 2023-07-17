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

    public function register(): void {
        $username = $_POST['username'];
        $email = $_POST['user-email'];
        $passwd = hash('sha256', $_POST['user-passwd']);
        $role = $_POST['user-role'];
        $toRegisterUser = new User("", $email, $username, $passwd, $role);
        $this->loginModel->register($toRegisterUser);
        $_SESSION['username'] = $toRegisterUser->get_username();
        $_SESSION['role'] = $toRegisterUser->get_role();
        header("location: /biblioweb/");
    }

}
