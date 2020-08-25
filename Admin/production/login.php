<?php 
session_start();
include 'koneksi.php';
$name = $_POST['nama'];
$pass = $_POST['password'];
$data = mysqli_query($koneksi,"SELECT * from admin where nama='$name' and password='$pass'");
$cek = mysqli_num_rows($data);
if($cek > 0){
	$_SESSION['nama'] = $name;
	$_SESSION['status'] = "login";	header("location:home.php");
}else{
	header("location:index.html?pesan=gagal");
}
?>