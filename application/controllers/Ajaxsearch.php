<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajaxsearch extends CI_Controller {

    function fetch()
    {
        $this->load->model('ModelSparepart');

        $request = $_POST['request'];   // request

        // Get username list
        if($request == 1){
            $search = $_POST['search'];

//            $query = "SELECT * FROM data_sparepart WHERE nama like'%".$search."%'";
            $result = $this->ModelSparepart->getLike($search);

            foreach($result as $row){
                $response[] = array("value"=>$row->id_part,"label"=>$row->nama);
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
                $response[] = array("value"=>$row->id_layanan,"label"=>$row->nama);
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

}
