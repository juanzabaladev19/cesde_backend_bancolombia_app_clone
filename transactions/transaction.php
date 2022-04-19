<?php

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    require_once(dirname(__DIR__) . "/db/db_connection.php");
    try {
        $db = new DBConnection();
        $dbconnection  = $db->connect();
        $data = json_decode(file_get_contents('php://input'), true);
        $pageCount = $data["pageCount"];
        $query = "SELECT * FROM bancolombia_transactional.transactions ORDER BY transaction_number LIMIT ${pageCount},20";
        $sql = $dbconnection->query($query)->fetchAll(PDO::FETCH_ASSOC);
        header('Content-Type: application/json');
        echo (json_encode($sql));
    } catch (Exception $error) {
        echo $error;
    }
} else {
    echo ("Method not allowed");
}
