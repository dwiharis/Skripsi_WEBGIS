<?php
include 'koneksi.php';
if(isset($_POST['tambah'])){
 //
 
 $nama_kecamatan = $_POST['nama_kecamatan'];
 $nama_kelurahan = $_POST['nama_kelurahan'];
 $jumlah_penderita=$_POST['jumlah_penderita'];
 $curah_hujan=$_POST['curah_hujan'];
 $kelembaban_suhu=$_POST['kelembaban_suhu'];
 $latitude=$_POST['latitude'];
 $longitude=$_POST['longitude'];
 $tahun=$_POST['tahun'];

 $query = "INSERT INTO data_deteksi (id_kecamatan,id_kelurahan,jumlah_penderita,curah_hujan,kelembaban_suhu,latitude,longitude,tahun) VALUE ($nama_kecamatan','$nama_kelurahan', '$jumlah_penderita', '$curah_hujan','$kelembaban_suhu','$latitude', '$longitude','$tahun')";
 $hasil = mysqli_query($koneksi, $query);
 //header("location:form_obat.php?success");

    if( $hasil ) {
        // kalau berhasil alihkan ke halaman index.php dengan status=sukses
        //header('Location: form_obat.php?status=sukses');
        echo "<script>alert('Data berhasil ditambah');
    document.location.href='form_deteksi.php'</script>\n";
    } else {
        // kalau gagal alihkan ke halaman indek.php dengan status=gagal
        echo "<script>alert('Data gagal ditambah');
    document.location.href='form_deteksi.php'</script>\n";
        //header('Location: form_obat.php?status=gagal');
    }

} else {
    die("Akses dilarang..."); 
}

?>