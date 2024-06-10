<?php
	$conn = new mysqli("localhost","root","","bewellpharmacy");
	if($conn->connect_error){
		die("Connection Failed!".$conn->connect_error);
	}
?>