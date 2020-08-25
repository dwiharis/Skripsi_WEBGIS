<?php
include 'koneksi.php';
if(isset($_POST['hitung'])){

    $harga=$_POST['harga_obat'];
    $jumlah=$_POST['jumlah'];
    $total=$harga*$jumlah;

    if($total) {
        // kalau berhasil alihkan ke halaman index.php dengan status=sukses
        header('Location: form_penjualan.php?status=sukses');
    } else {
        // kalau gagal alihkan ke halaman indek.php dengan status=gagal
        header('Location: form_penjualan.php?status=gagal');
    }

} else {
    die("Akses dilarang...");
}

?>