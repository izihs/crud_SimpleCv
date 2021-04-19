<?php

		require "config.php";
		//Untuk connect dB melalui "config.php"

	if ($_SERVER['REQUEST_METHOD'] == "POST") {
		//metode "POST"
		//Metode Post :  
		//mengirimkan data atau nilai langsung ke action untuk ditampung, tanpa menampilkan pada URL
		# code...
		$response = array();
		//array() : menampung data, untuk merequest var name, email, phone, addres
		
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

		$queryCekData = mysqli_query($conn, "SELECT * FROM user WHERE email = '$email' || phone = '$phone'");

		//$conn : memanggil "koneksi"
		//Query SQL : "SELECT * FROM user WHERE email = '$email' || phone = '$phone'"
		//||: atau
		//Memilih semua data dari tabel user, dan mencari isi dari email = var email / isi dari phone =  var phone

		$resultCekData = mysqli_fetch_array($queryCekData);
		//mysqli_fetch_array() : Menangkap data dalam $queryCekData

		//mysql_fetch_array akan menangkap data dari hasil perintah query sql dan membentuknya ke dalam array asosiatif &/ array numerik.

		//Array asosiatif : menjadikan nama atribut / field sebagai index array seperti ini $data['namafiled'].
		//Sedangkan array numerik : menggunakan numerik sebagai index sesuai urutan field / atribut yang didefinisikan pada hasil perintah query SELECT seperti ini $data['0'].

		if ($resultCekData) {
			# code...
			$response['value'] = 0;
			//nilai respons
			$response['message'] = "Oops, data tersebut telah terdaftar !";
			echo json_encode($response);
			//echo : println
			//Kondisi jika data telah terdaftar
		} else {
			# code...
			$queryInsert = mysqli_query($conn, "INSERT INTO user VALUE
				('',
				'$fileName',
				'$nName',
				'$fName', 
				'$place', 
				'$dob', 
				'$address', 
				'$phone', 
				'$email', 
				'$eduY1', 
				'$eduX1', 
				'$eduY2',
				'$eduX2',
				'$weY1', 
				'$weX1', 
				'$weY2', 
				'$weX2', 
				'$skill1', 
				'$skill2', 
				'$skill3',
				'$about')");

			//Input ke tb.User
			// '' (id : AutoIncerement)
			//Now (untuk create date)
			//Menginput Value User

			if ($queryInsert) {
				# code...
				$response['value'] = 1;
				$response['message'] = "Yeay, data tersebut berhasil didaftarkan";
				echo json_encode($response);
			} else {
				# code...
				$response['value'] = 2;
				$response['message'] = "Oops, data tersebut gagal lagi didaftarkan";
				echo json_encode($response);
			}

		}

	}

?>