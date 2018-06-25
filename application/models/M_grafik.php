<?php
class M_grafik extends CI_Model{

	function get_data_stok(){
        $query = $this->db->query("SELECT tanggal,sum(total_biaya) AS total FROM data_transaksi INNER JOIN data_detail_sparepart dds on data_transaksi.id_master = dds.id_master group by tanggal;");
         
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }

    function get_detail_layanan(){
        $query = $this->db->query("SELECT tanggal,sum(total_biaya) AS total FROM data_transaksi INNER JOIN data_detail_layanan ddl on data_transaksi.id_master = ddl.id_master group by tanggal;");

        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }

}