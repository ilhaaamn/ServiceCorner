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
    }

    public function index()
    {
        $this->load->view("login.php");
    }

    function login(){
        $this->load->model('ModelKasir');
        $user_login=array(
            'user_email'=>$this->input->post('user_email'),
            'user_password'=>md5($this->input->post('user_password'))
        );

        $data=$this->ModelKasir->login($user_login['user_email'],$user_login['user_password']);
        if($data)
        {
            $this->session->set_userdata('user_id', $data['id_kasir']);
            $this->session->set_userdata('user_email', $data['username']);

            redirect(base_url() . 'home');
        }
        else{
            $this->session->set_flashdata('error_msg', 'Error occured,Try again.');
            redirect(base_url().'home');
        }
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url('home'), 'refresh');
    }
}