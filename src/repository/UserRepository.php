<?php

interface UserRepository {

    public function get_by_username_and_passwd($username, $passwd): User;

    public function add(User $user): void;

    public function get_all_user_roles(): array;

    public function get_all(): array;

    public function delete(string $id): void;

    public function update(User $user): void;

}
