<?php 
$koneksi = mysqli_connect("localhost","root","","gis_nyamuk");
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>