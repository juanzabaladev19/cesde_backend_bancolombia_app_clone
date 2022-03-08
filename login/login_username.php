<?php 
	session_start();
	include_once 'models/conexion.php';

	$usuario = $_POST['username'];
	$contrasena = $_POST['pin'];
	$sentencia = $bd->prepare("SELECT * FROM usernames  WHERE username = ? AND pin = ?;");							
	$sentencia->execute([$usuario,$contrasena]);
	$datos = $sentencia->fetch(PDO::FETCH_OBJ);
	//print_r($datos);
	
	if ($datos === FALSE) {

		//header('Location: login.php');
		
		$result = array(

			'status'=> "bad"
		);

		echo json_encode($result);

	}elseif($sentencia->rowCount() == 1){

		$_SESSION['account_number'] = $datos->account_number;

		//header('Location: index.php');
		
		echo json_encode ($_SESSION);

	}
	
