<?php
defined('BASEPATH') OR exit('No direct script allowed');

class Ajaxsearch extends CI_Controller {

  function index(){
    $this->load->view('index');
  }

  function fetch(){
    // $output = '';
    // $query = '';
    $this->db->select("*");
    $this->db->from("data_sparepart");
    if($query != ''){
      $this->db->like('nama',  $query);
    }

    $result = $this->db->get();
    $data = array();
    if(mysqli_num_rows($result) > 0){
      while($row = mysqli_fetch_assoc($result)){
        $data[] = $row["name"];
      }
      echo json_encode($data);
    }
    // $this->load->model('ajaxsearch_model');
    // if($this->input->post('query')){
    //   $query = $this->input->post('query');
    // }
    // $data = $this->ajaxsearch_model->fetch_data($query);
    // $output = $data;
    // echo $output;

    //======================
    // $connect = mysqli_connect("localhost", "root", "", "db_service");
    // $request = mysqli_real_escape_string($connect, $_POST["query"]);
    // $query = "
    // SELECT * FROM data_sparepart WHERE nama LIKE '%".$request."%'
    // ";

    // $result = mysqli_query($connect, $query);

    // $data = array();

    // if(mysqli_num_rows($result) > 0)
    // {
    // while($row = mysqli_fetch_assoc($result))
    // {
    //   $data[] = $row["nama"];
    // }
    // echo json_encode($data);
    // }
  }
}