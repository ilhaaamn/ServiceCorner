<?php
class M_grafik extends CI_Model{

	function get_data_stok(){
        $query = $this->db->query("SELECT tanggal,SUM(total_tagihan) AS total FROM data_transaksi GROUP BY tanggal");
         
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }

}