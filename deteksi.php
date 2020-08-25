<!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>WEB GIS Kota Malang</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <!-- //Fonts -->

</head>

<body>
    <div class="main-sec inner-page">
        <!-- //header -->
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
                <!-- nav -->
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="index.html"><span class="log-w3pvt">WebGis</span></a> <label class="sub-des"></label></h1>
                    </div>

                    <div class="forms ml-auto">
                        <a href="login.php" class="btn"><span class="fa fa-user-circle-o"></span> Sign In</a>
                        
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                         <ul class="menu">
                            <li class="active"><a href="index.php">Beranda</a></li>
                            <li><a href="deteksi.php">Deteksi Wilayah</a></li>
                            <li><a href="login.php">Login</a></li>
                            
                        </ul>
                    </nav>
                    <!-- //nav -->
                    <div class="search-form ml-auto">
                        <div class="form-w3layouts-grid">
                            <form action="#" method="post" class="newsletter">
                                <input class="search" type="search" placeholder="Search here..." required="">
                                <button class="form-control btn" value=""><span class="fa fa-search"></span></button>

                            </form>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
        <!-- //header --> 
    </div>
    
            
            <div class="container">
                <br><form action="#" method="post">
                        <table border="1">
                            <tr>
                                <select id="kecamatan" class="menu-warp" name="nama_kecamatan" tabindex="6" required>
                           <option value="" disabled="" selected="">-- Silakan Pilih Kecamatan --</option>
                            <?php
                            include "koneksi.php";
                                                    $query = mysqli_query($koneksi, "SELECT * FROM kecamatan ORDER BY kecamatan");
                                                    while ($row = mysqli_fetch_array($query)) { ?>

                                                    <option value="<?php echo $row['id_kecamatan']; ?>">
                                                        <?php echo $row['kecamatan']; ?>
                                                    </option>

                                                <?php } ?>
                          </select>
                            </tr>
                            &nbsp
                            <tr>
                                <select id="kecamatan" class="menu-warp" name="nama_kecamatan" tabindex="6" required>
                           <option value="" disabled="" selected="">-- Silakan Pilih Status --</option>
                            <?php
                            include "koneksi.php";
                                                    $query = mysqli_query($koneksi, "SELECT * FROM cluster ORDER BY nm_cluster");
                                                    while ($row = mysqli_fetch_array($query)) { ?>

                                                    <option value="<?php echo $row['id_cluster']; ?>">
                                                        <?php echo $row['nm_cluster']; ?>
                                                    </option>

                                                <?php } ?>
                          </select>
                            </tr>
                            &nbsp
                            <tr>
                              <button class="btn btn-success" class="menu-warp" type="submit" name="button" >Apply</button>   
                            </tr>
                        </table>
                        </form>
                        </div>
                        
                

    

    <!-- //banner-->
    <!--/banner-bottom -->
    <section class="banner-bottom py-5">
        <div class="container py-md-5">
        
            
            <div class="w3ls-fsocial-grid">
                <h3 class="sub-w3ls-headf">Follow Us</h3>
                <div class="social-ficons">
                    <ul>
                        <li><a href="#"><span class="fa fa-facebook"></span> Facebook</a></li>
                        <li><a href="#"><span class="fa fa-twitter"></span> Twitter</a></li>
                        <li><a href="#"><span class="fa fa-google"></span>Google</a></li>
                    </ul>
                </div>
            </div>
            <div class="move-top text-center mt-lg-4 mt-3">
                <a href="#home"><span class="fa fa-angle-double-up" aria-hidden="true"></span></a>
            </div>
        </div>
    </div>
    <!-- //footer -->

    <!-- copyright -->
    <div class="cpy-right text-center py-3">
       
    </div>
    <!-- //copyright -->

</body>

</html>
