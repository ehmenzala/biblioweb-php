<?php

require BASE_PATH . '/src/repository/UserRepository.php';

class UserService extends MainService implements UserRepository {

    function __construct($db) {
        self::init($db);
    }

    public function get_by_username_and_passwd($username, $passwd): User|bool {
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

        if($result) {
            $user = new User(
                $result['id_usuario'], $result['correo'],
                $result['nombre_usuario'], $result['contrasenia'],
                $result['rol']
            );
            return $user;
        } else {
            return $result;
        }
    }

    public function add(User $user): void {
        $st = self::$db->prepare("
          INSERT INTO usuario(correo, nombre_usuario, contrasenia, rol)
          VALUES (:email, :username, :passwd, :role)
        ");

        $st->execute(array(
                'email' => $user->get_email(),
                'username' => $user->get_username(),
                'passwd' => $user->get_passwd(),
                'role' => $user->get_role())
        );
    }

    public function get_all_user_roles(): array {
        $st = self::$db->prepare("
            SELECT rol, COUNT(*) AS cantidad
            FROM usuario
            GROUP BY rol");
        $st->execute();
        $results = $st->fetchAll();
        $roles = [];
        foreach ($results as $result) {
            $roles[] = $result["rol"];
        }

        return $roles;

    }

    public function get_all(): array {
        $st = self::$db->prepare("SELECT id_usuario, correo, nombre_usuario, contrasenia, rol FROM usuario");
        $st->execute();
        $results = $st->fetchAll();
        $users = array_map(function ($result) {
            return new User(
                $result['id_usuario'],
                $result['correo'],
                $result['nombre_usuario'],
                $result['contrasenia'],
                $result['rol']
            );
        }, $results);
        return $users;
    }

    public function delete(string $id): void {
        $st = self::$db->prepare("DELETE FROM usuario WHERE id_usuario = :user_id");
        $st->execute(array('user_id' => $id));
    }

    public function update(User $user): void {
        $st = self::$db->prepare("
            UPDATE usuario SET
                correo = :email,
                nombre_usuario = :username,
                contrasenia = :passwd,
                rol = :role
           WHERE id_usuario = :user_id");

        $st->execute(array(
            'user_id' => $user->get_id(),
            'email' => $user->get_email(),
            'username' => $user->get_username(),
            'passwd' => $user->get_passwd(),
            'role' => $user->get_role(),
        ));
    }

}
