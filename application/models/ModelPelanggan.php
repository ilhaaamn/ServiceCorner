<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 12:25 AM
 */

class ModelPelanggan extends CI_Model
{
    public function getAll(){
        $query = $this->db->get('data_pelanggan');
        return $query->result();
    }

    public function getbyId($data){
        $query = $this->db->get_where('data_pelanggan', array('id_kasir' => $data));
        return $query->row();
    }

    public function getbyNopol($data){
        $query = $this->db->get_where('data_pelanggan', array('nopol_kendaraan' => $data));
        return $query->result();
    }

    public function insertPelanggan($data){
        $this->db->insert('data_pelanggan', $data);
    }
}