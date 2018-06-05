<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 12:25 AM
 */

class ModelPelanggan extends CI_Model
{
    function getAll(){
        $query = $this->db->get('data_pelanggan');
        return $query->result();
    }

    function getbyId($data){
        $query = $this->db->get_where('data_pelanggan', array('id_kasir' => $data));
        return $query->row();
    }

    function getbyNopol($data){
        $query = $this->db->get_where('data_pelanggan', array('nopol_kendaraan' => $data));
        return $query->result();
    }
}