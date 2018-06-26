<?php
Class Laporan extends CI_Controller{

    function __construct() {
        parent::__construct();
        $this->load->library('pdf');
        $this->load->library('session');
    }

    function index(){
        $this->load->model('ModelMaster');

        $id_master = $this->session->flashdata('id_master');
        //$id_master = '46';
        $pelanggan = $this->ModelMaster->getPelanggan($id_master);
        $sparepart = $this->ModelMaster->getPart($id_master);
        $layanan = $this->ModelMaster->getService($id_master);
        $master = $this->ModelMaster->getbyId($id_master);

        $pdf = new FPDF('l','mm','A5');
        // membuat halaman baru
        $pdf->AddPage();
        // setting jenis font yang akan digunakan
        $pdf->SetFont('courier','B',12);
        // mencetak string
        $pdf->Cell(40,5,'SERVICECORNER',0,0,'');
        $pdf->Cell(10,7,'',0,0);
        $pdf->SetFont('courier','B',12);
        $pdf->Cell(110,5,'FAKTUR SERVICE',0,1,'R');
        $pdf->SetFont('courier','',12);
        $pdf->Cell(100,5,'JUAL SPAREPART MOTOR DAN SERVICE UMUM',0,0,'');
//      DETAIL FAKTUR
        $pdf->Cell(42,5,'TANGGAL',0,0,'R');
        $pdf->Cell(15,5,':',0,0,'R');
        $pdf->Cell(40,5,$master->tanggal,0,1,'');
        $pdf->Cell(147,5,'PELANGGAN',0,0,'R');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(40,5,$pelanggan->id_pelanggan.' - '.$pelanggan->nama,0,1,'');
        $pdf->Line(10, 27, 210-10, 27); // 20mm from each edge

        $pdf->Cell(10,5,'',0,1);
        $pdf->SetFont('courier','',12);
        $pdf->Cell(25,5,'NO. POLISI',0,0,'');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(25,5,$pelanggan->nopol_kendaraan,0,1,'');
        $pdf->Cell(25,5,'TAHUN',0,0,'');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(25,5,$pelanggan->tahun_kendaraan,0,1,'');
        $pdf->Cell(25,5,'MEREK',0,0,'');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(25,5,$pelanggan->merk_kendaraan,0,1,'');
        $pdf->Cell(25,5,'TIPE',0,0,'');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(25,5,$pelanggan->tipe_kendaraan,0,1,'');
        $pdf->Line(10, 53, 210-10, 53); // 20mm from each edge

        // Memberikan space kebawah agar tidak terlalu rapat
        $pdf->Cell(10,5,'',0,1);
        $pdf->SetFont('courier','B',12);
        $pdf->Cell(40,5,'SPAREPART',0,1,'');
        $pdf->Cell(10,3,'',0,1);
        $pdf->Cell(1,0,'',0,0);
        $pdf->Cell(17,5,'NO.',1,0);
        $pdf->Cell(17,5,'ID',1,0);
        $pdf->Cell(70,5,'NAMA PART',1,0);
        $pdf->Cell(20,5,'JUMLAH',1,0);
        $pdf->Cell(30,5,'HARGA',1,0,'R');
        $pdf->Cell(30,5,'TOTAL',1,1,'R');
        $pdf->SetFont('courier','',12);
        $count = 0;
        foreach ($sparepart as $row){
            $count++;
            $pdf->Cell(1,0,'',0,0);
            $pdf->Cell(17,5,$count,1,0);
            $pdf->Cell(17,5,$row->id_part,1,0);
            $pdf->Cell(70,5,$row->nama,1,0);
            $pdf->Cell(20,5,$row->jumlah,1,0);
            $pdf->Cell(30,5,number_format( $row->harga,0,',','.'),1,0,'R');
            $pdf->Cell(30,5,number_format( $row->total_biaya,0,',','.'),1,1,'R');
        }

        // Memberikan space kebawah agar tidak terlalu rapat
        $pdf->Cell(10,5,'',0,1);
        $pdf->SetFont('courier','B',12);
        $pdf->Cell(40,5,'SERVICE',0,1,'');
        $pdf->Cell(10,3,'',0,1);
        $pdf->Cell(1,0,'',0,0);
        $pdf->Cell(17,5,'NO.',1,0);
        $pdf->Cell(17,5,'ID',1,0);
        $pdf->Cell(70,5,'NAMA SERVICE',1,0);
        $pdf->Cell(20,5,'JUMLAH',1,0);
        $pdf->Cell(30,5,'HARGA',1,0,'R');
        $pdf->Cell(30,5,'TOTAL',1,1,'R');
        $pdf->SetFont('courier','',12);
        $count = 0;
        foreach ($layanan as $row){
            $count++;
            $pdf->Cell(1,0,'',0,0);
            $pdf->Cell(17,5,$count,1,0);
            $pdf->Cell(17,5,$row->id_layanan,1,0);
            $pdf->Cell(70,5,$row->nama,1,0);
            $pdf->Cell(20,5,'1',1,0);
            $pdf->Cell(30,5,number_format( $row->harga,0,',','.'),1,0,'R');
            $pdf->Cell(30,5,number_format( $row->harga,0,',','.'),1,1,'R');
        }

        $pdf->Cell(10,5,'',0,1);
        $pdf->Cell(147,5,'TOTAL',0,0,'R');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(28,5,number_format( $master->total_tagihan,0,',','.'),0,1,'R');
        $pdf->Cell(147,5,'BAYAR',0,0,'R');
        $pdf->Cell(10,5,':',0,0,'R');
        $pdf->Cell(28,5,number_format( $master->total_tagihan,0,',','.'),0,1,'R');
        $pdf->Output();
    }
}