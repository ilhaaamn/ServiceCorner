<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/24/2018
 * Time: 9:22 PM
 */

class Service extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
    }

    public function resi()
    {
        
    }

    public function insertData()
    {
        $this->load->model('ModelPelanggan');
        $this->load->model('ModelSparepart');
        $this->load->model('ModelLayanan');
        $this->load->model('ModelMaster');
        $this->load->model('ModelDetailLayanan');
        $this->load->model('ModelDetailSparepart');

        $pelanggan=array(
            'nama'=>$this->input->post('namaPel'),
            'no_telp'=>$this->input->post('telpPel'),
            'nopol_kendaraan'=>$this->input->post('nopol'),
            'tahun_kendaraan'=>$this->input->post('tahun_kendaraan'),
            'merk_kendaraan'=>$this->input->post('merk_kendaraan'),
            'tipe_kendaraan'=>$this->input->post('tipe_kendaraan')
        );

        $id_pelanggan = $this->ModelPelanggan->insertPelanggan($pelanggan);

        $item_name = $this->input->post("item_name");
        $item_price = $this->input->post("item_price");
        $item_quantity = $this->input->post("item_quantity");

        $total = 0;
        foreach( $item_price as $index => $item ) {
            $total = $total + $item*(int)$item_quantity[$index];
            echo $item_quantity[$index];
        }

        $service_name = $this->input->post("service_name");
        $service_price = $this->input->post("service_price");

        foreach($service_price as $item){
            $total = $total + $item;
        }

        $date = date('Y-m-d');

        $data=array(
            'tanggal'=>$date,
            'id_pelanggan'=>$id_pelanggan,
            'id_kasir'=>$this->session->userdata('id_kasir'),
            'total_tagihan'=>$total,
            'keluhan'=>'-'
        );

        $id_master = $this->ModelMaster->insertTransaksi($data);

        foreach($item_name as $index => $item){
            $part = $this->ModelSparepart->getbyName($item);
            var_dump($item);
            $data=array(
                'id_master'=>$id_master,
                'id_part'=>$part->id_part,
                'jumlah'=>$item_quantity[$index],
                'total_biaya'=> $item_price[$index]*$item_quantity[$index]
            );
            $this->ModelDetailSparepart->insertDetail($data);
        }

        foreach($service_name as $index => $item){
            $part = $this->ModelLayanan->getbyName($item);
            $data=array(
                'id_master'=>$id_master,
                'id_layanan'=>$part->id_layanan,
                'total_biaya'=> $service_price[$index]
            );
            $this->ModelDetailLayanan->insertDetail($data);
        }


    }
}