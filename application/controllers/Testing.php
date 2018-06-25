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
    }

    public function index()
    {
        $user_id=$this->session->userdata('user_id');
        $user_role=$this->session->userdata('user_role');
        $this->load->view("Transaksi.php");
    }
    
    public function struk(){
        $this->load->view("Struk.php");
    }

    public function test()
    {
        $this->load->model('TestingModel');
        $x['data']=$this->TestingModel->get();
        print_r($x);
    }

}