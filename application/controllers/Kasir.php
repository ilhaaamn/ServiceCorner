<?php
/**
 * Created by PhpStorm.
 * User: mou5e
 * Date: 6/6/2018
 * Time: 4:28 AM
 */

class Kasir extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('m_grafik');
    }

    public function index()
    {
        $user_id=$this->session->userdata('id_kasir');
        $user_role=$this->session->userdata('username');
        if ($user_id && $user_role){
            $x['data']=$this->m_grafik->get_data_stok();
            $x['layanan']=$this->m_grafik->get_detail_layanan();
            //print_r($x);
            $this->load->view("Dashboard.php", $x);
        }
        else{
            redirect(base_url());
        }
    }

    function transaksi(){
        $user_id=$this->session->userdata('id_kasir');
        $user_role=$this->session->userdata('username');
        if ($user_id && $user_role){
            $this->load->view("Transaksi.php");
        }
        else{
            redirect(base_url());
        }
    }

    function login(){
        $this->load->model('ModelKasir');
        $user_login=array(
            'username'=>$this->input->post('username'),
            'user_password'=>md5($this->input->post('password'))
        );

        $data=$this->ModelKasir->login($user_login['username'],$user_login['user_password']);
        if($data)
        {
            $this->session->set_flashdata('success_msg', 'Login Success');

            $this->session->set_userdata('id_kasir', $data['id_kasir']);
            $this->session->set_userdata('username', $data['username']);

            echo $this->session->flashdata('success_msg');

            redirect(base_url('kasir'));
        }
        else{
            $this->session->set_flashdata('error_msg', 'Error occured,Try again.');
            //redirect(base_url().'home');
            echo $this->session->flashdata('error_msg');
            echo $this->input->post('password');
            print_r($user_login);
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url(), 'refresh');
    }
}