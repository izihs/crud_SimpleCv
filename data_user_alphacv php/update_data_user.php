<?php  

		require "config.php";
		//Untuk connect dB melalui "config.php"

	if ($_SERVER['REQUEST_METHOD'] == "POST") {
		//metode "POST"
		//Metode Post :  
		//mengirimkan data atau nilai langsung ke action untuk ditampung, tanpa menampilkan pada URL
		# code...
		$response = array();
		$idUser = $_POST['idUser'];
		$fileName = $_POST['fileName'];
		$nName = $_POST['nName'];
		$fName = $_POST['fName'];
		$place = $_POST['place'];
		$dob = $_POST['dob'];
		$address = $_POST['address'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];

		$eduY1 = $_POST['eduY1'];
		$eduX1 = $_POST['eduX1'];
		$eduY2 = $_POST['eduY2'];
		$eduX2 = $_POST['eduX2'];

		$weY1 = $_POST['weY1'];
		$weX1 = $_POST['weX1'];
		$weY2 = $_POST['weY2'];
		$weX2 = $_POST['weX2'];

		$skill1 = $_POST['skill1'];
		$skill2 = $_POST['skill2'];
		$skill3 = $_POST['skill3'];
		$about = $_POST['about'];

		$queryInsert = mysqli_query($conn, "UPDATE user SET

			fileName ='$fileName',
			nName ='$nName',
			fName ='$fName', 
			place ='$place', 
			 dob = '$dob', 
			address ='$address', 
			 phone ='$phone', 
			 email ='$email', 

			 eduY1 ='$eduY1', 
			 eduX1 ='$eduX1', 
			 eduY2 ='$eduY2',
			 eduX2 ='$eduX2',

			 weY1 ='$weY1', 
			 weX1 ='$weX1', 
			 weY2 ='$weY2', 
			 weX2 ='$weX2', 

			skill1 ='$skill1', 
			 skill2 ='$skill2', 
			 skill3 ='$skill3',
			 about ='$about'

			 WHERE idUser ='$idUser'");
	
			if ($queryInsert) {
				# code...
				$response['value'] = 1;
				$response['message'] = "Yeay, perubahan berhasil...";
				echo json_encode($response);
			} else {
				# code...
				$response['value'] = 2;
				$response['message'] = "Oops, terjadi kesalahan !";
				echo json_encode($response);
			}
	}

?>