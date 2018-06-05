<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 12:38 AM
 */

class ModelLayanan extends CI_Model
{
    public function getAll(){
        $query = $this->db->get('data_layanan');
        return $query->result();
    }

    public function getbyId($data){
        $query = $this->db->get_where('data_layanan', array('id_layanan' => $data));
        return $query->row();
    }

    public function insertLayanan($data){
        $this->db->insert('data_layanan', $data);
    }

}