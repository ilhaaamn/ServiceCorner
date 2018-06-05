<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 12:38 AM
 */

class ModelSparepart extends CI_Model
{
    public function getAll(){
        $query = $this->db->get('data_sparepart');
        return $query->result();
    }

    public function getbyId($data){
        $query = $this->db->get_where('data_sparepart', array('id_sparepart' => $data));
        return $query->row();
    }

    public function insertSparepart($data){
        $this->db->insert('data_sparepart', $data);
    }

}