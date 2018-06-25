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
        return $query->result();
    }

    public function insertTransaksi($data){
        $this->db->insert('data_transaksi', $data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function updateMaster($data){
        $query = $this->db->query('UPDATE DATA_TRANSAKSI SET total_tagihan = "' . $data->total_tagihan . '" where id_master = ' . $data->id_booking . ';');
    }

    public function getPelanggan($id){
        $query = $this->db->query("SELECT nama,no_telp,nopol_kendaraan,tanggal,merk_kendaraan,tipe_kendaraan FROM data_transaksi inner join data_pelanggan dp on data_transaksi.id_pelanggan = dp.id_pelanggan where data_transaksi.id_master = '".$id."';");

        return $query->result();
    }

    public function getPart($id){
        $query = $this->db->query("SELECT nama,harga FROM data_transaksi inner join data_detail_sparepart dds on data_transaksi.id_master = dds.id_master inner join data_sparepart sparepart on dds.id_part = sparepart.id_part where data_transaksi.id_master = '".$id."';");

        return $query->result();
    }

    public function getService($id){
        $query = $this->db->query("SELECT nama,harga FROM data_transaksi inner join data_detail_layanan ddl on data_transaksi.id_master = ddl.id_master join data_layanan layanan on ddl.id_layanan = layanan.id_layanan where data_transaksi.id_master = '".$id."';");

        return $query->result();
    }
}