<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ajaxsearch extends CI_Controller {

 function index()
 {
  $this->load->view('ajaxsearch');
 }

 function fetch()
 {
  //fetch.php
  $connect = mysqli_connect("localhost", "root", "", "db_service");
  $request = mysqli_real_escape_string($connect, $_POST["query"]);
  $query = "
  SELECT * FROM data_sparepart WHERE nama LIKE '%".$request."%'
  ";

  $result = mysqli_query($connect, $query);

  $data = array();

  if(mysqli_num_rows($result) > 0)
  {
  while($row = mysqli_fetch_assoc($result))
  {
    $data[] = $row["nama"];
  }
  echo json_encode($data);
  }
 }
 function fetch1()
 {
  //fetch.php
  $connect = mysqli_connect("localhost", "root", "", "db_service");
  $request = mysqli_real_escape_string($connect, $_POST["query"]);
  $query = "
  SELECT * FROM data_layanan WHERE nama LIKE '%".$request."%'
  ";

  $result = mysqli_query($connect, $query);

  $data = array();

  if(mysqli_num_rows($result) > 0)
  {
  while($row = mysqli_fetch_assoc($result))
  {
    $data[] = $row["nama"];
  }
  echo json_encode($data);
  }
 }
 
}
