<?php
class TestingModel extends CI_Model{


	function get(){
        $query = $this->db->query(" SELECT * FROM data_transaksi INNER JOIN data_detail_layanan ddl on data_transaksi.id_master = ddl.id_master inner join data_pelanggan dp on data_transaksi.id_pelanggan = dp.id_pelanggan inner join data_detail_layanan layanan on data_transaksi.id_master = layanan.id_master
inner join data_detail_sparepart dds on data_transaksi.id_master = dds.id_master inner join data_layanan dl on ddl.id_layanan = dl.id_layanan;");
         
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }

}