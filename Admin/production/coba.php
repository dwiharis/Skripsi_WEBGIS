<!DOCTYPE html>
<html lang="en">
  <head>
    <?php 
    include 'koneksi.php';
    session_start();
    if($_SESSION['status']!="login"){
        header("location:index.html?pesan=belum_login");
    }
    ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Sistem Infromasi Geografis</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
    <script src="../production/js/jquery-3.1.1.min.js" type="text/javascript"></script>
      <script src="../production/js/jquery.min.js"></script>
        <script src="../production/js/ie-emulation-modes-warning.js"></script>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title"><i class="fa fa-medkit"></i> <span>Form Data Deteksi</span></a>
            </div>

            <div class="clearfix"></div>

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                
                <ul class="nav side-menu">
                  
                  <li><a><i class="fa fa-table"></i> Deteksi <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form_deteksi.php">Form Deteksi</a></li>
                      <li><a href="data_deteksi.php">Data Deteksi</a></li>
                
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Aturan Fuzzy <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form_matris.php">Form Aturan Fuzzy</a></li>
                      <li><a href="data_aturan.php">Data Aturan Fuzzy</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Artikel <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form_artikel.php">Form Artikel</a></li>
                      <li><a href="data_artikel.php">Data Artikel</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      Selamat Datang,
                    <?php echo $_SESSION['nama']; ?>
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      
                      <a class="dropdown-item"  href="logout.php"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </div>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Sistem Informasi Geografis</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Aturan Fuzzy </h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />

                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" enctype="multipart/form-data" action="insert_matris.php">
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
//$no=1;
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
<div class="ln_solid"></div>
                      <div class="item form-group">
                        <div class="col-md-6 col-sm-6 offset-md-3">
                          <!-- <button class="btn btn-primary" type="button">Cancel</button> -->
                          <button class="btn btn-primary" name="tambah" type="submit">Tambah</button>
                          <button type="reset"  class="btn btn-danger">Reset</button>
                        </div>
                      </div>
</form>
                     

                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <script>
            $(document).ready(function() {
                $("#kelurahan").chained("#kecamatan");
                //$("#kecamatan").chained("#kota");
            });
        </script>
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
      <script src="../production/js/main.js"></script>
      <script src="../production/js/jquery-chained.min.js"></script>
      <script src="../production/js/ie10-viewport-bug-workaround.js"></script>
  
  </body>
</html>
