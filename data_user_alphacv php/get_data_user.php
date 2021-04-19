<?php  

	require "config.php";

	$response = array();

	$selectUser = mysqli_query($conn, "SELECT * FROM user");

	while ($row = mysqli_fetch_array($selectUser)) {
		# code...
		$key['idUser'] = $row ['idUser'];
		$key['fileName'] = $row ['fileName'];
		$key['nName'] = $row ['nName'];
		$key['fName'] = $row ['fName'];
		$key['place'] = $row ['place'];
		$key['dob'] = $row ['dob'];
		$key['address'] = $row ['address'];
		$key['phone'] = $row ['phone'];
		$key['email'] = $row ['email'];
		$key['eduY1'] = $row ['eduY1'];
		$key['eduX1'] = $row ['eduX1'];
		$key['eduY2' ] = $row ['eduY2'];
		$key['eduX2'] = $row ['eduX2'];
		$key['weY1'] = $row ['weY1'];
		$key['weX1'] = $row ['weX1'];
		$key['weY2'] = $row ['weY2'];
		$key['weX2'] = $row ['weX2'];
		$key['skill1'] = $row ['skill1'];
		$key['skill2'] = $row ['skill2'];
		$key['skill3'] = $row ['skill3'];
		$key['about'] = $row ['about'];

		array_push($response, $key);
	}

	echo json_encode($response);

?>