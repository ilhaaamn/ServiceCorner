<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <title>Data Sparepart</title>

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

    <nav class="navbar navbar-expand-lg fixed-top">
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
                        <li class="active">
                            <a href="<?php echo base_url('partstok')?>"><span class="lnr lnr-database"></span>Stok</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('kasir/logout')?>"><span class="lnr lnr-exit"></span>Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-xs-8">
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <h4>Data Stok Sparepart</h4>
                    <div class="form-group">
                        <div class="input-group">
                        <input type="text" name="search_part" id="search_part" placeholder="Cari nama part" class="form-control" />
                        </div>
                    </div>
                    <br>
                    <div id="result"></div>
                    <!-- <table class="table table-bordered">
                        <thead>
                            <th style="width: 5%">No.</th>
                            <th style="width: 15%">Id Sparepart</th>
                            <th>Nama</th>
                            <th style="width: 25%">Harga</th>
                            <th style="width: 15%">Jumlah</th>
                            <th>Detail</th>
                        </thead>
                        <?php
                            $count = 0;
                            foreach ($data as $item){
                                $count++;
                                ?>
                                <tr>
                                    <td><?php echo $count?></td>
                                    <td><?php echo $item->id_part?></td>
                                    <td><?php echo $item->nama?></td>
                                    <td><?php echo $item->harga?></td>
                                    <td><?php echo $item->stok?></td>
                                    <td><a href="<?php echo base_url('').$item->id_part?>"><button class="btn btn-info">Tambah</button></a></td>
                                </tr>
                                <?php
                            }
                            ?>
                    </table> -->
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

<script>
    $(document).ready(function(){

    load_data();

    function load_data(query)
    {
        $.ajax({
            url:"<?php echo base_url('ajaxsearch/fetch_part'); ?>",
            method:"POST",
            data:{query:query},
            success:function(data){
                $('#result').html(data);
        }
        })
    }

    $('#search_part').keyup(function(){
            var search = $(this).val();
            if(search != '')
            {
                load_data(search);
            }
            else
            {
                load_data();
            }
        });
    });
</script>

</body>
</html>