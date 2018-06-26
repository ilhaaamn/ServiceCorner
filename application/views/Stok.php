<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <title>Page Title</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" media="screen" href="main.css" />

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">

  <!-- Linearicons CDN -->
  <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
  <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>

  <!-- Custom CSS -->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">

</head>
<body>
  <div id="wrapper">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="#">ServiceCorner</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">

        </div>
    </nav>

    <div class="row">

        <div class="col-xs-4">
            <div class="col-xs-12" id="sidebar-wrapper">
                <div class="sidebar">
                    <ul class="sidebar-nav">
                        <li>
                            <a href="<?php echo base_url()?>"><span class="lnr lnr-home"></span>Dashboard</a>
                        </li>
                        <li class="active">
                            <a href="<?php echo base_url()?>"><span class="lnr lnr-database"></span>Tambah Stok</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url()?>"><span class="lnr lnr-exit"></span>Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-xs-8">
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <form action="<?php echo base_url('partstok/updatestok')?>" method="post">
                        <h4>Tambah Stok</h4>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Id</label>
                                <input type="text" name="id_part" class="form-control" value="<?php echo $data[0]->id_part?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Nama</label>
                                <input type="text" name="nama" class="form-control" value="<?php echo $data[0]->nama?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Harga</label>
                                <input type="text" name="harga" class="form-control" value="<?php echo $data[0]->harga?>" readonly>
                            </div>
                            <div class="form-group">
                                <label for="">Jumlah</label>
                                <input type="text" name="stok" class="form-control">
                            </div>
                            <div align="right">
                              <input type="submit" name="submit" class="btn btn-info" value="Tambah" />
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.container-fluid -->
            </div>
        </div>
    </div>
  </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS, then Linearicons JS -->
    <script src="<?php echo base_url('assets/js/jquery-3.2.1.min.js'); ?>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
    <script src="http://code.jquery.com/jquery-migrate-3.0.0.js" ></script>

</body>
</html>