<?php

include("koneksi.php");

if( isset($_GET['id_deteksi']) ){

    // ambil id dari query string
    $id = $_GET['id_deteksi'];

    // buat query hapus
    $sql = "DELETE FROM data_deteksi WHERE id_deteksi='$id'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query hapus berhasil?
    if( $query ){
        echo "<script>alert('data berhasil dihapus');
    document.location.href='data_deteksi.php'</script>\n";

    } else {
        die("gagal menghapus...");
    }

} else {
    die("akses dilarang...");
}

?>