<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/22/2018
 * Time: 8:26 PM
 */

class Testing extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('ModelMaster');
    }

    public function index()
    {
        $user_id=$this->session->userdata('user_id');
        $user_role=$this->session->userdata('user_role');
        $this->load->view("Transaksi.php");
    }

    public function dashboard(){
        $this->load->model('m_grafik');
        $x['data']=$this->m_grafik->get_data_stok();
        $x['layanan']=$this->m_grafik->get_detail_layanan();
        //print_r($x);
        $this->load->view("Dashboard.php", $x);
    }

    public function struk(){
        $id_master = '46';
        $data['pelanggan'] = $this->ModelMaster->getPelanggan($id_master);
        $data['sparepart'] = $this->ModelMaster->getPart($id_master);
        $data['layanan'] = $this->ModelMaster->getService($id_master);
        $data['master'] = $this->ModelMaster->getbyId($id_master);
        $this->load->view("Struk.php", $data);
    }

    public function test()
    {
        $this->load->model('TestingModel');
        $x['data']=$this->TestingModel->get();
        print_r($x);
    }

}