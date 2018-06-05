<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 1:01 AM
 */

class ModelMaster extends CI_Model
{
    public function getAll(){
        $query = $this->db->get('data_transaksi');
        return $query->result();
    }

    public function getbyId($data){
        $query = $this->db->get_where('data_transaksi', array('id_master' => $data));
        return $query->row();
    }

    public function insertTransaksi($data){
        $this->db->insert('data_transaksi', $data);
    }

    public function updateMaster($data){
        $query = $this->db->query('UPDATE DATA_TRANSAKSI SET total_tagihan = "' . $data->total_tagihan . '" where id_master = ' . $data->id_booking . ';');
    }

}