<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kasir | Dashboard</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css'); ?>">

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
        .w-25 {
            float: left;
            border: none;
            font-size: 40px;
        }
        p {
            font-family: Verdana,Arial,sans-serif,Segoe UI;
            font-size: 12px;
            color: #999;
        }
    </style>

    <?php
    foreach($data as $data){
        $tanggal[] = $data->tanggal;
        //echo $data->tanggal."<br>";
        $total[] = (float) $data->total;
    }

    foreach($layanan as $data){
        $tanggalLayanan[] = $data->tanggal;
        //echo $data->tanggal."<br>";
        $totalLayanan[] = (float) $data->total;
    }
    ?>
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
                        <li class="active">
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
                <h3>Dashboard</h3>
                <div class="row container-fluid p-4 ml-1 rounded mt-4" style="background-color: whitesmoke">
                    <div class="col-md-6">
                        <h4>Grafik Penjulanan</h4>
                        <canvas id="penjualan" width="1000" height="400"></canvas>
                    </div>

                    <div class="col-md-6">
                        <h4>Grafik Service</h4>
                        <canvas id="layanan" width="1000" height="400"></canvas>
                    </div>
                    
                </div>
                <div class="row container-fluid p-4 ml-1 rounded mt-4" style="background-color: whitesmoke">
                    <div class="col-sm-3">
                        <div class="card text-right">
                        <div class="card-body">
                            <div class="card w-25">
                                <span class="lnr lnr-users"></span>
                            </div>
                            <p class="card-title">Total Pelanggan</p>
                            <h5 class="card-text"><?php echo $countPel ?></h5>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card text-right">
                        <div class="card-body">
                            <div class="card w-25">
                                <span class="lnr lnr-tag"></span>
                            </div>
                            <p class="card-title"></i>Total provit</p>
                            <h5 class="card-text"><?php echo "Rp ".number_format($profit->profit,2,',','.')?></h5>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card text-right">
                        <div class="card-body">
                            <div class="card w-25">
                                <span class="lnr lnr-cart"></span>
                            </div>
                            <p class="card-title">Total Part Terjual</p>
                            <h5 class="card-text"><?php echo $partsale->total?></h5>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="card text-right">
                        <div class="card-body">
                            <div class="card w-25">
                                <span class="lnr lnr-cog"></span>
                            </div>
                            <p class="card-title">Total Pelayanan Service</p>
                            <h5 class="card-text"><?php echo $countLay?></h5>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="row container-fluid p-4 ml-1 rounded mt-4" style="background-color: whitesmoke">
                    <h4>Tabel Transaksi</h4>
                    <table class="table table-bordered table-light" id="">
                        <tr>
                            <th style="width: 5%">No.</th>
                            <th>Transaksi</th>
                            <th>Detail</th>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
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

<!--Load chart js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script>

    var ctx = document.getElementById('penjualan').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'line',

        // The data for our dataset
        data: {
            labels:<?php echo json_encode($tanggal);?>,
            datasets: [{
                label: "Penjualan Sparepart",
                backgroundColor: 'rgba(60,141,188,0.9)',
                borderColor: 'rgba(60,141,188,0.8)',
                data: <?php echo json_encode($total);?>
            }]
        },


        // Configuration options go here
        options: {}
    });

</script>
<script>
    // backgroundColor: ["rgb(90, 208, 226)", "rgb(255, 155, 73)", "rgb(216, 60, 60)", "rgb(173, 62, 123)"],
    //     borderColor: ["rgb(90, 208, 226)", "rgb(255, 155, 73)", "rgb(216, 60, 60)", "rgb(173, 62, 123)"],

    var ctx = document.getElementById('layanan').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'bar',

        // The data for our dataset
        data: {
            labels:<?php echo json_encode($tanggalLayanan);?>,
            datasets: [{
                label: "Pelayanan Service",
                backgroundColor: 'rgb(216, 60, 60)',
                borderColor: 'rgb(216, 60, 60)',
                data: <?php echo json_encode($totalLayanan);?>
            }]
        },

        // Configuration options go here
        options: {}
    });
</script>

</body>
</html>