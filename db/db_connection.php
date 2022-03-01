<?php
require_once(dirname(__DIR__)."/db/db_secrets.php");

class DBConnection {
    private $connection;

    public function connect(){
        $dsn = "mysql:host=".DBSecrets::host.";dbname".DBSecrets::dbName;
        try{
            $this->connection = new PDO($dsn, DBSecrets::user, DBSecrets::password);
            $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $this->connection;
        }catch(PDOException $error){
            die("Error" .$error->getMessage());
        }
    }
}

$dbConnection = new DBConnection();
$connection = $dbConnection->connect();
echo var_dump($connection);