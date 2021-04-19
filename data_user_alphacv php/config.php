<?php  

	$host = "localhost";
	$username = "root";
	$password = "";
	$dbName = "db_alphacv";

	$conn = mysqli_connect($host, $username, $password, $dbName);

	if (!$conn) {
		# code...
		echo "Connection Failed !";
	}

?>