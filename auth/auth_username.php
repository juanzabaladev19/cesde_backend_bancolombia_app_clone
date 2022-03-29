<?php
if ($_SERVER['REQUEST_METHOD'] == "POST") {
	require_once(dirname(__DIR__) . "/db/db_connection.php");

	try {
		$db = new DBConnection();
		$connection = $db->connect();
		$data = json_decode(file_get_contents('php://input'), true);
		$username = $data['username'];
		$sql = "SELECT img FROM  bancolombia_transactional.users_credentials  WHERE user_name = '$username'";
		$data = $connection->query($sql)->fetchall(PDO::FETCH_ASSOC);
		if (count($data) < 1) {
			header('Content-Type: application/json');
			echo json_encode(array("error"=>'Usuario no existe'));
		} else {
			header('Content-Type: application/json');
			echo json_encode($data[0]);
		}
	} catch (Exception $error) {
		echo $error;
	}
} else {
	echo ("Method not allowed");
}
