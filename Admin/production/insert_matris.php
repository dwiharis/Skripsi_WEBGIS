<?php
include 'koneksi.php';
error_reporting(E_ALL^(E_NOTICE|E_WARNING));
 $total=$_POST['total'];
 for ($i=1; $i <=$total ; $i++) { 
    $id=$_POST['id'.$i];
    $keterangan=$_POST['keterangan'.$i];
    $aturan=$_POST['aturan'.$i];
    $nilai=$_POST['nilai'.$i];

    $sql = "INSERT INTO matris (id_matris,id_deteksi,id_aturan,nilai,keterangan) VALUE (null,'$id','$aturan','$nilai','$keterangan')";
    $query = mysqli_query($koneksi, $sql);
 }
    echo "Berhasil";
   

    
 
?>