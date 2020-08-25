<?php
  $kecamatan = $_GET['kecamatan'];
  $status = $_GET['cluster'];
  $tahun = $_GET['tahun'];

echo "kecamatan :".$kecamatan;
echo "status :".$cluster;
echo "tahun :".$tahun;

  header('Location: http://localhost/Skripsi_WEBGIS/deteksi.php?mod=gis&pg=gis_identify&halaman=1&kecamatan='.$kecamatan.'&status='.$cluster.'&tahun='.$tahun.'');
?>