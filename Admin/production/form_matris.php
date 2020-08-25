<form method="POST" action="insert_matris.php">
<table>
<?php
include 'koneksi.php';
$data = "SELECT * FROM data_deteksi,kecamatan,kelurahan where data_deteksi.id_kelurahan=kelurahan.id_kelurahan and kecamatan.id_kecamatan=kelurahan.id_kecamatan_fk";
$aa=mysqli_query($koneksi, $data);
$counter=mysqli_num_rows($aa);
$no=1;
$nmr=1;
$n=1;
$nomor=1;
 while($deteksi = mysqli_fetch_array($aa)) { 
?>

<input disabled="disabled" value="<?php echo $deteksi['kelurahan'] ?>"></input><br>

<?php
$data1 = "SELECT * from aturan";
$aa1=mysqli_query($koneksi, $data1);
$aaa=mysqli_fetch_array($aa1);
$id=$aaa['id_aturan'];
$jum=$aaa['jml_cluster'];
$no=1;
for ($i=1; $i <= $jum; $i++) { 
?>
<input name="id<?php echo $no++; ?>" type="hidden" value="<?php echo $deteksi['id_deteksi'] ?>"></input>
<input type="hidden" name="keterangan<?php echo $nmr++; ?>" value="partisi<?php echo $i; ?>"></input>
<input disabled="disabled" value="partisi<?php echo $i; ?>"></input>
<input type="hidden" name="aturan<?php echo $nomor++; ?>" value="<?php echo $id; ?>"></input>
<input name="nilai<?php echo $n++; ?>" type="text"></input><br> 
<?php
} 
}
$jumlah=$counter*$jum;
?>
<input type="text" name="total" value="<?php echo $jumlah; ?>"></input>
</table>
<input type="submit" value="SAVE"></input>
</form>