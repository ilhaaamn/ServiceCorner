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

    public function countData(){
        $query = $this->db->get('data_pelanggan');
        return $query->num_rows();
    }

    public function getbyId($data){
        $query = $this->db->get_where('data_pelanggan', array('id_pelanggan' => $data));
        return $query->row();
    }

    public function getbyIdAjax($data){
        $query = $this->db->get_where('data_pelanggan', array('id_pelanggan' => $data));
        return $query->result();
    }

    public function getbyNopol($data){
        $query = $this->db->get_where('data_pelanggan', array('nopol_kendaraan' => $data));
        return $query->result();
    }

    public function insertPelanggan($data){
        $this->db->insert('data_pelanggan', $data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function getLike($data){
        $this->db->select('*');
        $this->db->from('data_pelanggan');
        $this->db->like('nama', $data);
        $query = $this->db->get();

        return $query->result();
    }
}