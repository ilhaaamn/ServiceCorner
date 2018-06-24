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
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-xs-8">
            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <form action="<?php echo base_url('service/insertData')?>" method="post">
                        <h4>Data Pelanggan</h4>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Nama</label>
                                    <input type="text" name="namaPel" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Telp/HP</label>
                                    <input type="text" name="telpPel" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Nomor Polisi</label>
                                    <input type="text" name="nopol" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Merk Motor</label>
                                    <input type="text" name="merk_kendaraan" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Tipe motor</label>
                                    <input type="text" name="tipe_kendaraan" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Tahun</label>
                                    <input type="text" name="tahun_kendaraan" class="form-control">
                                </div>
                            </div>
                        </div>
                        <br>

                        <h4>Spare Parts</h4>
                        <div id="spare-parts">
                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered tr_input" id="item_table">
                                    <tr>
                                        <th>Nama Part</th>
                                        <th>Harga</th>
                                        <th>Jumlah</th>
                                        <th style="width: 5%"><button type="button" name="addPart" class="btn btn-success btn-sm addPart"><span class="lnr lnr-plus-circle"></span></button></th>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="item_name[]" id="nama_1" class="form-control item_name" /></td>
                                        <td><input type="text" name="item_price[]" id="harga_1" class="form-control item_price" readonly/></td>
                                        <td><input type="text" name="item_quantity[]" id="quantity_1" class="form-control item_quantity" /></td>
                                        <td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="lnr lnr-circle-minus"></span></button></td>
                                    </tr>
                                </table>
                            </div>
                            <br>
                        </div>

                        <h4>Service</h4>
                        <div id="service">
                            <div class="table-repsonsive">
                                <span id="error"></span>
                                <table class="table table-bordered sr_input" id="service_table">
                                    <tr>
                                        <th>Paket Service</th>
                                        <th>Harga</th>
                                        <th style="width: 5%"><button type="button" name="addService" class="btn btn-success btn-sm addService"><span class="lnr lnr-plus-circle"></span></button></th>
                                    </tr>
                                    <tr>
                                        <td><input type="text" name="service_name[]" id="service_1" class="form-control service_name" /></td>
                                        <td><input type="text" name="service_price[]" id="hargaSer_1" class="form-control service_price" readonly/></td>
                                        <td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="lnr lnr-circle-minus"></span></button></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                        <br>
                        <div align="left">
                            <input type="submit" name="submit" class="btn btn-info float-right" value="Selanjutnya" />
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
<script src="<?php echo base_url('assets/js/select2.min.js'); ?>"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script src="http://code.jquery.com/jquery-migrate-3.0.0.js" ></script>

<script type="text/javascript">
    $(document).ready(function(){

        $(document).on('keydown', '.item_name', function() {

            var id = this.id;
            var splitid = id.split('_');
            var index = splitid[1];

            //alert(index);
            $( '#'+id ).autocomplete({

                source: function( request, response ) {
                    $.ajax({
                        url: "<?php echo base_url('ajaxsearch/fetch'); ?>",
                        type: 'post',
                        dataType: "json",
                        data: {
                            search: request.term,request:1
                        },
                        success: function( data ) {
                            response( data );
                            // alert('Successfully called');

                        }
                    });
                },
                select: function (event, ui) {
                    $(this).val(ui.item.label); // display the selected text
                    var userid = ui.item.value; // selected id to input
                    console.log(userid);
                    // AJAX
                    $.ajax({
                        url: "<?php echo base_url('ajaxsearch/fetch'); ?>",
                        type: 'post',
                        data: {userid:userid,request:2},
                        dataType: 'json',
                        success:function(response){
                            var len = response.length;
                            console.log(len);
                            if(len > 0){
                                var id = response[0]['id_part'];
                                var name = response[0]['nama'];
                                var harga = response[0]['harga'];

                                document.getElementById('nama_'+index).value = name;
                                document.getElementById('harga_'+index).value = harga;

                            }
                        }
                    });

                    return false;
                }
            });
        });

    });

</script>

<script type="text/javascript">
    $(document).ready(function(){

        $(document).on('keydown', '.service_name', function() {

            var id = this.id;
            var splitid = id.split('_');
            var index = splitid[1];

            //alert(index);
            $( '#'+id ).autocomplete({

                source: function( request, response ) {
                    $.ajax({
                        url: "<?php echo base_url('ajaxsearch/fetchl'); ?>",
                        type: 'post',
                        dataType: "json",
                        data: {
                            search: request.term,request:1
                        },
                        success: function( data ) {
                            response( data );
                            console.log(data);
                            // alert('Successfully called');

                        }
                    });
                },
                select: function (event, ui) {
                    $(this).val(ui.item.label); // display the selected text
                    var userid = ui.item.value; // selected id to input
                    console.log(userid);
                    // AJAX
                    $.ajax({
                        url: "<?php echo base_url('ajaxsearch/fetchl'); ?>",
                        type: 'post',
                        data: {userid:userid,request:2},
                        dataType: 'json',
                        success:function(response){
                            var len = response.length;
                            console.log(len);
                            if(len > 0){
                                var id = response[0]['id_layanan'];
                                var name = response[0]['nama'];
                                var harga = response[0]['harga'];

                                document.getElementById('service_'+index).value = name;
                                document.getElementById('hargaSer_'+index).value = harga;

                            }
                        }
                    });

                    return false;
                }
            });
        });

    });

</script>

<script>
    $('select').select2();
</script>
<!-- ajax typeahead -->
<script>
    $(document).ready(function(){

        $(document).on('click', '.addPart', function(){
            // Get last id
            var lastname_id = $('.tr_input input[type=text]:nth-child(1)').last().attr('id');
            var split_id = String(lastname_id).split('_');

            // New index
            var index = Number(split_id[1]) + 1;
            // alert("ini lastname : " + lastname_id);
            var html = '';
            html += '<tr>';
            html += '<td><input type="text" name="item_name[]"   id="nama_'+index+'" class="form-control item_name" /></td>';
            html += '<td><input type="text" name="item_price[]" id="harga_'+index+'" class="form-control item_price" readonly/></td>';
            html += '<td><input type="text" name="item_quantity[]" id="quantity_'+index+'" class="form-control item_quantity" /></td>';
            html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="lnr lnr-circle-minus"></span></button></td></tr>';
            $('#item_table').append(html);
        });

        $(document).on('click', '.remove', function(){
            $(this).closest('tr').remove();
        });

        $('#insert_form').on('submit', function(event){
            event.preventDefault();
            var error = '';
            $('.item_name').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Enter Item Name at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });

            $('.item_quantity').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Enter Item Quantity at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });

            $('.item_unit').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Select Unit at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });
            var form_data = $(this).serialize();
            if(error == '')
            {
                $.ajax({
                    url:"insert.php",
                    method:"POST",
                    data:form_data,
                    success:function(data)
                    {
                        if(data == 'ok')
                        {
                            $('#item_table').find("tr:gt(0)").remove();
                            $('#error').html('<div class="alert alert-success">Item Details Saved</div>');
                        }
                    }
                });
            }
            else
            {
                $('#error').html('<div class="alert alert-danger">'+error+'</div>');
            }
        });

    });
</script>

<script>
    $(document).ready(function(){

        $(document).on('click', '.addService', function(){
            // Get last id
            var lastname_id = $('.sr_input input[type=text]:nth-child(1)').last().attr('id');
            var split_id = String(lastname_id).split('_');

            // New index
            var index = Number(split_id[1]) + 1;
            // alert("ini lastname : " + lastname_id);
            var html = '';
            html += '<tr>';
            html += '<td><input type="text" name="item_name[]"   id="service_'+index+'" class="form-control service_name" /></td>';
            html += '<td><input type="text" name="item_price[]" id="hargaSer_'+index+'" class="form-control service_price" readonly/></td>';
            html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="lnr lnr-circle-minus"></span></button></td></tr>';
            $('#service_table').append(html);
        });

        $(document).on('click', '.remove', function(){
            $(this).closest('tr').remove();
        });

        $('#insert_form').on('submit', function(event){
            event.preventDefault();
            var error = '';
            $('.item_name').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Enter Item Name at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });

            $('.item_quantity').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Enter Item Quantity at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });

            $('.item_unit').each(function(){
                var count = 1;
                if($(this).val() == '')
                {
                    error += "<p>Select Unit at "+count+" Row</p>";
                    return false;
                }
                count = count + 1;
            });
            var form_data = $(this).serialize();
            if(error == '')
            {
                $.ajax({
                    url:"insert.php",
                    method:"POST",
                    data:form_data,
                    success:function(data)
                    {
                        if(data == 'ok')
                        {
                            $('#item_table').find("tr:gt(0)").remove();
                            $('#error').html('<div class="alert alert-success">Item Details Saved</div>');
                        }
                    }
                });
            }
            else
            {
                $('#error').html('<div class="alert alert-danger">'+error+'</div>');
            }
        });

    });
</script>

</body>
</html>