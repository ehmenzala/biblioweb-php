<?php

require BASE_PATH . '/src/repository/UserRepository.php';

class UserService extends MainService implements UserRepository {

    function __construct($db) {
        self::init($db);
    }

    public function get_by_username_and_passwd($username, $passwd) {
        $st = self::$db->prepare("
      SELECT id_usuario, correo, nombre_usuario, contrasenia, rol
      FROM usuario
      WHERE nombre_usuario = :username AND contrasenia = :passwd
    ");

        $st->execute(array(
            'username' => $username,
            'passwd' => $passwd,
        ));

        $result = $st->fetch();

        $user = new User(
            $result['id_usuario'], $result['correo'],
            $result['nombre_usuario'], $result['contrasenia'],
            $result['rol']
        );

        return $user;
    }

    public function add($user) {
        $statement = self::$db->prepare("
      INSERT INTO usuario(correo, nombre_usuario, contrasenia, rol)
      VALUES (:email, :username, :passwd, :role)
    ");

        $statement->execute(array(
                'email' => $user->get_email(),
                'username' => $user->get_username(),
                'passwd' => $user->get_passwd(),
                'role' => $user->get_role())
        );
    }

}