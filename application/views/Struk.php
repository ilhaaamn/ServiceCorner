<!DOCTYPE html>
<html lang="en">
<head>
    <title>Penjualan</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/select2.min.css'); ?>">

    <!-- Linearicons CDN -->
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/style.css'); ?>">
    <style type="text/css" media="all">
        .ui-autocomplete.ui-widget {
            font-family: Verdana,Arial,sans-serif,Segoe UI;
            font-size: 12px;
        }
    </style>
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
                        <li>
                            <a href="<?php echo base_url('kasir/transaksi')?>"><span class="lnr lnr-cart"></span>Penjualan</a>
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
                    <form action="<?php echo base_url('service/insertData')?>" method="post">
                        <h4>Detail transaksi</h4>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Nama Pelanggan</label>
                                    <input type="text" name="namaPel" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Telp/HP</label>
                                    <input type="text" name="telpPel" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Nomor Polisi</label>
                                    <input type="text" name="nopol" class="form-control" readonly>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Merk Motor</label>
                                    <input type="text" name="merk_kendaraan" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Tipe motor</label>
                                    <input type="text" name="tipe_kendaraan" class="form-control" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="">Tahun</label>
                                    <input type="text" name="tahun_kendaraan" class="form-control" readonly>
                                </div>
                            </div>
                        </div>
                        <br>

                        <h5>Spare Parts</h5>
                        <div id="spare-parts">
                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered tr_input" id="item_table">
                                    <tr>
                                        <th>Nama Part</th>
                                        <th>Jumlah</th>
                                        <th>Harga</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                            <br>
                        </div>

                        <h5>Service</h5>
                        <div id="service">
                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered sr_input" id="service_table">
                                    <tr>
                                        <th>Paket Service</th>
                                        <th>Harga</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                        <br>
                        <div align="right">
                          <label for="">Total Rp.</label>
                          <input type="text" id="total" name="total" readonly>
                        </div>
                        <br>
                        <div align="right">
                            <input type="submit" name="submit" class="btn btn-danger" value="Batal" />
                            <input type="submit" name="submit" class="btn btn-info" value="Submit" />
                        </div>
                    </form>
                </div>
                <?php
                        print_r($pelanggan);
                        print_r($sparepart);
                        print_r($layanan);
                        print_r($master);

                    ?>
                <!-- /.container-fluid -->
            </div>
        </div>

        <!-- <div class="col-xs-8">
            <div id="page-content-wrapper">
                <div class="row container-fluid">
                    
                    <?php
                        print_r($pelanggan);
                        print_r($sparepart);
                        print_r($layanan);
                        print_r($master);

                    ?>
                </div>
            </div>
        </div> -->

    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS, then Linearicons JS -->
<script src="<?php echo base_url('assets/js/jquery-3.2.1.min.js'); ?>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdn.linearicons.com/free/1.0.0/svgembedder.min.js"></script>
<script src="<?php echo base_url('assets/js/select2.min.js'); ?>"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script src="http://code.jquery.com/jquery-migrate-3.0.0.js" ></script>

<script>
    $('select').select2();
</script>
</body>
</html>