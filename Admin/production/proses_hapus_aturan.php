<?php

include("koneksi.php");

if( isset($_GET['id_matris']) ){

    // ambil id dari query string
    $id = $_GET['id_matris'];

    // buat query hapus
    $sql = "DELETE FROM matris WHERE id_matris='$id'";
    $query = mysqli_query($koneksi, $sql);

    // apakah query hapus berhasil?
    if( $query ){
        echo "<script>alert('data berhasil dihapus');
    document.location.href='data_aturan.php'</script>\n";

    } else {
        die("gagal menghapus...");
    }

} else {
    die("akses dilarang...");
}

?>