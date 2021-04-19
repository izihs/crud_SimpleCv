<?php

require "config.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$response = array();
	$idUser = $_POST['idUser'];

	$queryDelete = mysqli_query($conn, "DELETE FROM user WHERE idUser=$idUser");

	if ($queryDelete){
		$response['value'] = 1;
		$response['message'] = "Ok, Data berhsil dihapus..";
		echo json_encode($response);
	} else {
		$response['value'] = 2;
		$response['message'] = "Oops, Terjadi Kesalahan";
		echo json_encode($response);
	}
}

?>