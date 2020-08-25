<?php
include 'koneksi.php';
if(isset($_POST['tambah'])){
    //$id_artikel=$_POST['id_artikel'];
    $judul_artikel=$_POST['judul_artikel'];
    $isi_artikel=$_POST['isi_artikel'];
    $tgl_upload=$_POST['tgl_upload'];

    $sql = "INSERT INTO data_artikel (judul_artikel,isi_artikel,tgl_upload) VALUE ('$judul_artikel','$isi_artikel','$tgl_upload')";
    $query = mysqli_query($koneksi, $sql);

    if($query) {
    
        // kalau berhasil alihkan ke halaman index.php dengan status=sukses
        header('Location: form_artikel.php?status=sukses');
    } else {
        
        // kalau gagal alihkan ke halaman indek.php dengan status=gagal
        header('Location: form_artikel.php?status=gagal');
    }

} else {
  //  die("Akses dilarang...");
}

?>