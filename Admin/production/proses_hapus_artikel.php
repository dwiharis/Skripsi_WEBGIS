<?php

include("koneksi.php");

if( isset($_GET['id_artikel']) ){

    // ambil id dari query string
    $id = $_GET['id_artikel'];

    // buat query hapus
    $sql = "DELETE FROM data_artikel WHERE id_artikel='$id'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query hapus berhasil?
    if( $query ){
        echo "<script>alert('data berhasil dihapus');
    document.location.href='data_artikel.php'</script>\n";

    } else {
        die("gagal menghapus...");
    }

} else {
    die("akses dilarang...");
}

?>