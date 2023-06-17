<?php

class MainService {

    public static $db;

    public static function init($db) {
        self::$db = $db;
        self::$db->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);
    }
}