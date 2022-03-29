<?php

require_once(dirname(__DIR__) . "/db/db_connection.php");

$db = new DBConnection();

try {
    $connection = $db->connect();
    //$insertUser = "INSERT INTO bancolombia_transactional.users (fullname, identification, gender, telephone, type, email, country, city, departament, status) VALUES ('Pedro Perez', '986424393', 'Masculino', '11111111', 'CC', 'jzabala@cesde.net', 'Colombia', 'Medellin', 'antioquia', 1)";
    $insertUserCredentials = "INSERT INTO bancolombia_transactional.users_credentials (user_name, pin, img, user_identification) VALUES ('986424393', '4321', 'https://w7.pngwing.com/pngs/270/98/png-transparent-cat-kitten-balloon-birthday-graphy-cats-mammal-hat-cat-like-mammal-thumbnail.png', '986424393'";
    //$sql = "SELECT * FROM bancolombia_transactional.users";
    //$connection->exec($sql);
    /* $sentencia = $connection->prepare("SELECT * FROM  users");
	$sentencia->execute(); */
    //$connection->query($insertUser);
    $connection->query($insertUserCredentials);
    //print_r($data); 
} catch (Exception $e) {
    var_dump($e);
}
