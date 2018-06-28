<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajaxsearch extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
    }

    function fetch()
    {
        $this->load->model('ModelSparepart');

        $request = $_POST['request'];   // request

        // Get username list
        if($request == 1){
            $search = $_POST['search'];

//            $query = "SELECT * FROM data_sparepart WHERE nama like'%".$search."%'";
            $result = $this->ModelSparepart->getLike($search);
           // $result = $this->ModelSparepart->getAll();
            foreach($result as $row){
                $response[] = array("value"=>$row->id_part,"label"=>$row->nama, "desc"=>$row->harga);
            }

            // encoding array to json format
            echo json_encode($response);
            exit;
        }

        // Get details
        if($request == 2){
            $id_part = $_POST['userid'];

            $result = $this->ModelSparepart->getbyId($id_part);

             // encoding array to json format
             echo json_encode($result);
             exit;
         }
    }

    function fetchl()
    {
        $this->load->model('ModelLayanan');

        $request = $_POST['request'];   // request

        // Get username list
        if($request == 1){
            $search = $_POST['search'];

//            $query = "SELECT * FROM data_sparepart WHERE nama like'%".$search."%'";
            $result = $this->ModelLayanan->getLike($search);

            foreach($result as $row){
                $response[] = array("value"=>$row->id_layanan,"label"=>$row->nama, "desc"=>$row->harga);
            }

            // encoding array to json format
            echo json_encode($response);
            exit;
        }

        // Get details
        if($request == 2){
            $id_layanan = $_POST['userid'];

            $result = $this->ModelLayanan->getbyId($id_layanan);

            // encoding array to json format
            echo json_encode($result);
            exit;
        }
    }

    function fetchPel()
    {
        $this->load->model('ModelPelanggan');

        $request = $_POST['request'];   // request

        // Get username list
        if($request == 1){
            $search = $_POST['search'];

//            $query = "SELECT * FROM data_sparepart WHERE nama like'%".$search."%'";
            $result = $this->ModelPelanggan->getLike($search);

            foreach($result as $row){
                $response[] = array("value"=>$row->id_pelanggan,"label"=>$row->nama, "notelp"=>$row->no_telp, "nopol"=>$row->nopol_kendaraan,  "merk"=>$row->merk_kendaraan,  "tipe"=>$row->tipe_kendaraan,);
            }

            // encoding array to json format
            echo json_encode($response);
            exit;
        }

        // Get details
        if($request == 2){
            $id_layanan = $_POST['userid'];

            $result = $this->ModelPelanggan->getbyIdAjax($id_layanan);

            // encoding array to json format
            echo json_encode($result);
            exit;
        }
    }

    function fetch_part()
    {
        if ($this->session->userdata('role') == 'admin'){
            $output = '';
            $query = '';
            $this->load->model('ajaxsearch_model');
            if($this->input->post('query'))
            {
                $query = $this->input->post('query');
            }
            $data = $this->ajaxsearch_model->fetch_data($query);
            $output .= '
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
            <tr>
                <th>No.</th>
                <th>Id</th>
                <th>Nama</th>
                <th>Harga</th>
                <th>Jumlah</th>
                <th>#</th>
            </tr>
        ';
            if($data->num_rows() > 0)
            {
                $count = 0;
                foreach($data->result() as $row)
                {
                    $count++;
                    $output .= '
                <tr>
                    <td>'.$count.'</td>
                    <td>'.$row->id_part.'</td>
                    <td>'.$row->nama.'</td>
                    <td align="right">'."Rp " . number_format($row->harga, 2, ',', '.').'</td>
                    <td>'.$row->stok.'</td>
                    <td><a href="'.base_url('partstok/stok/').$row->id_part.'"><button class="btn btn-info">Tambah Stok</button></a></td>
                </tr>
                ';
                }
            }
            else
            {
                $output .= '<tr>
            <td colspan="6">No Data Found</td>
            </tr>';
            }
            $output .= '</table>';
            echo $output;
        }
        else{
            $output = '';
            $query = '';
            $this->load->model('ajaxsearch_model');
            if($this->input->post('query'))
            {
                $query = $this->input->post('query');
            }
            $data = $this->ajaxsearch_model->fetch_data($query);
            $output .= '
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
            <tr>
                <th>No.</th>
                <th>Id</th>
                <th>Nama</th>
                <th>Harga</th>
                <th>Jumlah</th>
            </tr>
        ';
            if($data->num_rows() > 0)
            {
                $count = 0;
                foreach($data->result() as $row)
                {
                    $count++;
                    $output .= '
                <tr>
                    <td>'.$count.'</td>
                    <td>'.$row->id_part.'</td>
                    <td>'.$row->nama.'</td>
                    <td align="right">'."Rp " . number_format($row->harga, 2, ',', '.').'</td>
                    <td>'.$row->stok.'</td>
                </tr>
                ';
                }
            }
            else
            {
                $output .= '<tr>
            <td colspan="6">No Data Found</td>
            </tr>';
            }
            $output .= '</table>';
            echo $output;
        }

    }

}
?>