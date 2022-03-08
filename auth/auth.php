<?php
	//enpoin para la validacion 	
	//http://localhost/auth/auth.php

	session_start();
	include_once 'db/conexion.php';

	$usuario = $_POST['username'];
	$sentencia = $bd->prepare("SELECT * FROM  auths  WHERE username = ?");							
	$sentencia->execute([$usuario]);
	$datos = $sentencia->fetch(PDO::FETCH_OBJ);
	//print_r($datos);
	
	if ($datos === FALSE) {

		//header('Location: login.php');
		
		$result = array(

			'status'=> "name is correct"
		);

		echo json_encode($result);

	}elseif($sentencia->rowCount() == 1){

		$_SESSION['image'] = $datos->img;

		//header('Location: index.php');
		
		echo json_encode ($_SESSION);

	}
	
?>