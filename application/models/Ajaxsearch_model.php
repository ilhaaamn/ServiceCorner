<?php
  class Ajaxsearch_model extends CI_Model
  {
    function fetch_data($query)
    {
      $this->db->select("*");
      $this->db->from("data_sparepart");
      if($query != '')
      {
        $this->db->like('nama', $query);
      }
      $this->db->order_by('id_part', 'DESC');
      return $this->db->get();
    }
  }
?>