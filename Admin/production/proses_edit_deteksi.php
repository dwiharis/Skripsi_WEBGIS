<?php

include("koneksi.php");

// cek apakah tombol simpan sudah diklik atau blum?
if(isset($_POST['edit'])){

$id_deteksi=$_POST['id_deteksi'];

 $nama_kecamatan = $_POST['kecamatan'];
  $nama_kelurahan = $_POST['kelurahan'];
 $jumlah_penderita=$_POST['jumlah_penderita'];
 $curah_hujan=$_POST['curah_hujan'];
 $kelembaban_suhu=$_POST['kelembaban_suhu'];
 $latitude=$_POST['latitude'];
 $longitude=$_POST['longitude'];
 $tahun=$_POST['tahun'];
    

    // buat query update
    $sql = "UPDATE data_deteksi SET  id_kecamatan='$nama_kecamatan', id_kelurahan='$nama_kelurahan', jumlah_penderita='$jumlah_penderita', curah_hujan='$curah_hujan', kelembaban_suhu='$kelembaban_suhu', latitude='$latitude', longitude='$longitude', tahun='$tahun' WHERE id_deteksi='$id_deteksi'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query update berhasil?
    if( $query ) {
        
        // kalau berhasil alihkan ke halaman list-siswa.php
        header('Location: data_deteksi.php');
    } else {
        
        // kalau gagal tampilkan pesan
            die("Gagal menyimpan perubahan...");
    }


} else {
   // die("Akses dilarang...");
}

?>