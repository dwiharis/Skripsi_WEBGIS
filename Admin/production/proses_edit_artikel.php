<?php

include("koneksi.php");

// cek apakah tombol simpan sudah diklik atau blum?
if(isset($_POST['edit'])){

    // ambil data dari formulir
    $id_artikel=$_POST['id_artikel'];
    $judul_artikel=$_POST['judul_artikel'];
    $isi_artikel=$_POST['isi_artikel'];
    $tgl_upload=$_POST['tgl_upload'];
    

    // buat query update
    $sql = "UPDATE data_artikel SET judul_artikel='$judul_artikel', isi_artikel='$isi_artikel', tgl_upload='$tgl_upload' WHERE id_artikel='$id_artikel'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query update berhasil?
    if( $query ) {
        // kalau berhasil alihkan ke halaman list-siswa.php
        header('Location: data_artikel.php');
    } else {
        // kalau gagal tampilkan pesan
        die("Gagal menyimpan perubahan...");
    }


} else {
   // die("Akses dilarang...");
}

?>