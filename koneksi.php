 <?php
$koneksi =mysqli_connect("localhost", "root", "","gis_nyamuk");
if (mysqli_connect_errno()){
	echo "koneksi database gagal :" . mysqli_connect_error();
}
?> 
