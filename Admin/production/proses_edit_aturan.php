<?php

include("koneksi.php");

// cek apakah tombol simpan sudah diklik atau blum?
if(isset($_POST['edit'])){

    // ambil data dari formulir
    $id_matris=$_POST['id_matris'];
    $id_deteksi=$_POST['id_deteksi'];
    $id_aturan=$_POST['id_aturan'];
    $nilai=$_POST['nilai'];
    $keterangan=$_POST['keterangan'];

    // buat query update
    $sql = "UPDATE data_aturan SET id_matris='$id_matris', id_deteksi='$id_deteksi', id_aturan='$id_aturan' ,nilai='$nilai', keterangan='$keterangan' WHERE id_matris='$id_matris'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query update berhasil?
    if( $query ) {
        // kalau berhasil alihkan ke halaman list-siswa.php
        header('Location: data_aturan.php');
    } else {
        // kalau gagal tampilkan pesan
        die("Gagal menyimpan perubahan...");
    }


} else {
   // die("Akses dilarang...");
}

?>